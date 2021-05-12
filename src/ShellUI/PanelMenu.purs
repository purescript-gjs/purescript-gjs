module ShellUI.PanelMenu where

import Effect (Effect)
import Prelude (Unit)
import ShellUI.PopupMenu (PopupMenuItem)
import GObject (class GObject)
import Gtk4 (class Widget)
import Clutter.Actor (class Actor)

foreign import data Button :: Type

instance obj :: GObject Button
instance widget :: Widget Button
instance actor :: Actor Button

foreign import newButton :: Number -> String -> Boolean -> Effect Button

foreign import addMenuItem :: Button -> PopupMenuItem -> Effect Unit
