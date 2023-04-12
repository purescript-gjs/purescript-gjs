module Gtk4.Dialog where

import Prelude (Unit)
import Effect (Effect)
import GObject (class GObject)
import Gtk4 (class Widget)
import Gtk4.Box (Box)
import Gtk4.Window (class WindowClass)

instance obj :: GObject Dialog
instance widget :: Widget Dialog
instance window :: WindowClass Dialog

foreign import data Dialog :: Type

foreign import new_ :: Effect Dialog

foreign import get_content_area :: Dialog -> Effect Box

foreign import add_button :: Dialog -> String -> Int -> Effect Unit

foreign import onResponse :: Dialog -> (Int -> Effect Unit) -> Effect Unit

new :: Effect Dialog
new = new_
