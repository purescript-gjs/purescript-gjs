module Test.DBus where

import Prelude
import Effect (Effect)
import Data.Maybe (Maybe(..))
import GLib as GLib
import GLib.Variant as Variant
import GLib.MainLoop as MainLoop
import Gio.DBusConnection as DBusConnection
import Gio.DBusCallFlags as DBusCallFlags
import GJS (print)

main :: Effect Unit
main = do
  void $ GLib.timeoutAdd 1000 go
  MainLoop.run =<< MainLoop.new
  where
  go = do
    DBusConnection.call
      DBusConnection.session
      (Just "org.gnome.ScreenSaver")
      "/org/gnome/ScreenSaver"
      "org.gnome.ScreenSaver"
      "GetActive"
      Nothing
      Nothing
      DBusCallFlags.none
      200
      Nothing
      (Just handle)
    pure true

  handle res = do
    v <- DBusConnection.call_finish DBusConnection.session res
    v' <- Variant.get_child_value v 0
    b <- Variant.get_boolean v'
    print ("screen locked: " <> show b)
