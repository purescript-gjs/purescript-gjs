module Test.Main where

import Prelude

import Data.Array (length)
import Effect (Effect)
import Effect.Exception (error)
import GJS as GJS
import GLib.DateTime (new_from_iso8601)
import GLib.Variant as GLib
import System as System

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

testArgv = do
  GJS.log $ "prog: " <> System.programInvocationName
  GJS.log $ "argv: " <> show GJS.argv
  GJS.log $ "length: " <> show (length GJS.argv)

testDate = do
  GJS.log $ "date: " <> show (new_from_iso8601 "20240101T10:10:10Z")

main :: Effect Unit
main = do
  testDate
  testGLibVariant
  testGJS
  testArgv
