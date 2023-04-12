module Gio.File (module File, readFile) where

import Prelude
import Effect.Class (liftEffect)
import Data.Maybe (Maybe(..))
import Data.Tuple.Nested ((/\))
import Effect.Aff (Aff, makeAff)
import Data.Either (Either(..))
import Effect.Exception (error)

import Gio.Raw.File (File, contentsToString, load_contents_async, load_contents_async_impl, load_contents_finish, load_contents_finish_impl, new_for_path) as File

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
