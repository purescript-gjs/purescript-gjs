module Test.Gio where

import Prelude

import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Class (liftEffect)
import Effect.Aff (launchAff_)
import GJS as GJS
import GLib.MainLoop as GLib.MainLoop
import Gio.File as File
import Data.Tuple (Tuple(..))

main :: Effect Unit
main = do
  launchAff_ go
  GLib.MainLoop.run =<< GLib.MainLoop.new
  where
    go = do
      content <- File.readFile "/proc/cmdline"
      liftEffect $ GJS.log $ "content: " <> content
