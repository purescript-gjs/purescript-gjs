{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Main (main) where

import Control.Monad.Writer (Writer, execWriter, tell)
import Data.GI.CodeGen.API
import qualified Data.GI.GIR.BasicTypes as GIR
import qualified Data.GI.GIR.Documentation (rawDocText)
import Data.List (lookup)
import qualified Data.Text as T
import Relude

type Builder = Writer [Text]

line :: Text -> Builder ()
line = tell . (: [])

psBType :: GIR.BasicType -> Text
psBType GIR.TBoolean = "Boolean"
psBType GIR.TUTF8 = "String"
psBType GIR.TDouble = "Number"
psBType GIR.TUInt = "Int"
psBType GIR.TUInt8 = "Int"
psBType GIR.TUInt16 = "Int"
psBType GIR.TUInt32 = "Int"
psBType GIR.TUInt64 = "Int"
psBType GIR.TInt = "Int"
psBType GIR.TInt16 = "Int"
psBType GIR.TInt32 = "Int"
psBType GIR.TInt64 = "Int"
psBType GIR.TPtr = "ptr?"
psBType x = error $ "Unknown btype: " <> show x

psType :: GIR.Type -> Text
psType (GIR.TBasicType bt) = psBType bt
psType GIR.TVariant = "Variant"
psType (GIR.TCArray _ _ _ n) = "Array (" <> psType n <> ")"
psType (GIR.TInterface n) = "(interface " <> show n <> "?)"
psType GIR.TError = "error?"
psType x = error $ "Unknown type: " <> show x

genMethod :: Method -> Maybe (Builder ())
genMethod Method {..} = do
  guard isDeprecated
  methodStr <$> argsStrM
  where
    argsStrM :: Maybe [Text]
    argsStrM = traverse argStr (args methodCallable)
    isDeprecated = isNothing (callableDeprecated methodCallable)
    methodStr args = do
      line ""
      case doc of
        Just d -> line $ "-- | " <> d
        Nothing -> pure ()
      case retDoc of
        Just d -> line $ "-- Returns " <> d
        Nothing -> pure ()
      line (name methodName <> " :: " <> T.intercalate " -> " (args <> [retStr]))
    argStr :: Arg -> Maybe Text
    argStr Arg {..} = do
      guard (direction == DirectionIn)
      pure (psType argType)
    firstLine :: Text -> Maybe Text
    firstLine = fmap head . (nonEmpty . T.lines)
    doc :: Maybe Text
    doc = firstLine =<< Data.GI.GIR.Documentation.rawDocText (callableDocumentation methodCallable)
    retDoc = T.replace "\n" "" <$> Data.GI.GIR.Documentation.rawDocText (returnDocumentation methodCallable)
    retStr =
      if returnMayBeNull methodCallable
        then "Maybe (" <> ret <> ")"
        else ret
    ret = maybe "()" psType (returnType methodCallable)

genStruct :: GIRInfo -> Text -> Text -> Builder ()
genStruct gi name obj = do
  case lookup (Name name obj) (girAPIs gi) of
    Just (APIStruct s) -> sequence_ (mapMaybe genMethod (structMethods s))
    _ -> error "Can't find"

main :: IO ()
main = do
  (gi, _) <- loadGIRInfo True "GLib" Nothing [] []
  putText $ T.unlines $ execWriter (genStruct gi "GLib" "Variant")
  putStrLn "Done."
