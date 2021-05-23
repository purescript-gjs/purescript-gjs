module Test.GioRaw where

import Prelude
import Effect (Effect)
import Data.Maybe (Maybe(Nothing))
import Gio.Raw.File as File
import GJS (log)

readFile :: String -> Effect Unit
readFile path = do
  file <- File.new_for_path path
  File.load_contents_async file Nothing $ \obj res -> do
    content <- File.load_contents_finish obj res
    log content
