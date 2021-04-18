module Test.Main where

import Prelude

import GJS as GJS
import Effect (Effect)
import Effect.Exception (error)

main :: Effect Unit
main = do
  GJS.print "print: hi o/"
  GJS.printerr "printerr: a warning!"
  GJS.logError (error "test error message") "logError: "
  GJS.log "log: test completed 🍝"
