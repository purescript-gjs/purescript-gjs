module Test.Gio where

import Prelude
import Control.Parallel (parSequence)
import Effect (Effect)
import Effect.Aff (launchAff_)
import Effect.Class (liftEffect)
import GJS as GJS
import GLib.MainLoop (withLoop)
import GLib.MainLoop as GLib.MainLoop
import Gio.Async as Async
import Gio.File as File
import Gio.Subprocess as Subprocess

main :: Effect Unit
main = do
  GJS.log "[+] test started"
  test_ <- File.readFileSync "/unknown"
  withLoop do
    results <-
      parSequence
        [ File.readFile "/proc/cmdline"
        , Subprocess.cmd [ "ls" ]
        ]
    case results of
      [ fileContent, procOutput ] ->
        liftEffect
          $ do
              GJS.log $ "content: " <> fileContent
              GJS.log $ "output: " <> procOutput
      _ -> pure mempty
  GJS.log "[+] test completed"
