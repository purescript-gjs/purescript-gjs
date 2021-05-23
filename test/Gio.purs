module Test.Gio where

import Prelude

import Effect (Effect)
import Effect.Class (liftEffect)
import Effect.Aff (launchAff_)
import GJS as GJS
import GLib.MainLoop as GLib.MainLoop

import Gio.File as File
import Gio.Subprocess as Subprocess

main :: Effect Unit
main = do
  launchAff_ go
  GLib.MainLoop.run =<< GLib.MainLoop.new
  where
    go = do
      content <- File.readFile "/proc/cmdline"
      liftEffect $ GJS.log $ "content: " <> content

      output <- Subprocess.cmd ["ls"]
      liftEffect $ GJS.log $ "output: " <> output
