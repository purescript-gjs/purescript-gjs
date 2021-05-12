module ShellUI.PopupMenu where

import Prelude (Unit)
import Effect (Effect)
import GObject (class GObject)
import Gtk4 (class Widget)
import Clutter.Actor (class Actor)

foreign import data PopupMenuItem :: Type

instance obj :: GObject PopupMenuItem
instance widget :: Widget PopupMenuItem
instance actor :: Actor PopupMenuItem

foreign import newItem ::  String -> Effect PopupMenuItem

foreign import connectActivate :: PopupMenuItem -> Effect Unit -> Effect Unit
