module Test.Main where

import Prelude
import GJS as GJS
import GLib.Variant as GLib
import Effect (Effect)
import Effect.Exception (error)

assertEqual' :: forall a. Eq a => Show a => String -> { actual :: a, expected :: a } -> Effect Unit
assertEqual' msg { actual, expected } =
  if actual /= expected then
    GJS.printerr (msg <> ": Ko!" <> show actual <> " /= " <> show expected)
  else
    GJS.print (msg <> ": Ok!")

testGLibVariant :: Effect Unit
testGLibVariant = do
  bool <- GLib.new_boolean true
  boolStr <- GLib.get_type_string bool
  assertEqual' "variant show type" { actual: boolStr, expected: "b" }

testGJS :: Effect Unit
testGJS = do
  GJS.print "print: hi o/"
  GJS.printerr "printerr: a warning!"
  GJS.logError (error "test error message") "logError: "
  GJS.log "log: test completed 🍝"

main :: Effect Unit
main = do
  testGLibVariant
  testGJS
