module ShellUI.Main.WM where

import Prelude (Unit)
import Effect (Effect)
import Gio.Settings (Settings)
import Meta.KeyBindingFlags (KeyBindingFlags)
import Shell.ActionMode (ActionMode)

foreign import data KeybindingID :: Type

foreign import addKeybinding :: String -> Settings -> KeyBindingFlags -> ActionMode -> Effect Boolean -> Effect KeybindingID
foreign import removeKeybinding :: String -> Effect Unit
