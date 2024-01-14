module Gio.File (module File, readFile, readFileSync) where

import Prelude

import Data.Either (Either(..))
import Data.Maybe (Maybe(..))
import Data.Nullable (toNullable)
import Data.Tuple.Nested ((/\))
import Effect (Effect)
import Effect.Aff (Aff, makeAff)
import Effect.Class (liftEffect)
import Effect.Exception (Error, error)
import GJS as GJS
import Gio.Raw.File (File, contentsToString, load_contents_async, load_contents_async_impl, load_contents_finish, load_contents_finish_impl, new_for_path) as File
import Gio.Raw.File (load_contents)

readFileSync :: String -> Effect (Either Error String)
readFileSync path = do
  file <- File.new_for_path path
  load_contents file (toNullable Nothing)

readFile :: String -> Aff String
readFile path = makeAff runEffect
  where
    runEffect done = do
      file <- liftEffect $ File.new_for_path path
      liftEffect $ File.load_contents_async file Nothing cb
      pure mempty
      where
        cb obj res = do
          ok /\ contents /\ _etag <- File.load_contents_finish obj res
          if ok
             then done (Right (File.contentsToString contents))
             else done (Left (error "Oops"))
