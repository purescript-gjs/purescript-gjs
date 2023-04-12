module Gtk4.Window where

import Prelude (Unit)
import Effect (Effect)
import GObject (class GObject)
import Gtk4 (class Widget)

instance obj :: GObject Window
instance widget :: Widget Window
instance window :: WindowClass Window

class WindowClass :: forall k. k -> Constraint
class WindowClass a

foreign import data Window :: Type

foreign import new_ :: Effect Window

new :: Effect Window
new = new_

foreign import unsafe_set_title :: forall window. window -> String -> Effect Unit

set_title :: forall window. WindowClass window => window -> String -> Effect Unit
set_title = unsafe_set_title

foreign import unsafe_close :: forall window. window -> Effect Unit

close :: forall window. WindowClass window => window -> Effect Unit
close = unsafe_close

foreign import unsafe_set_modal :: forall window. window -> Boolean -> Effect Unit

set_modal :: forall window. WindowClass window => window -> Boolean -> Effect Unit
set_modal = unsafe_set_modal

foreign import unsafe_set_decorated :: forall window. window -> Boolean -> Effect Unit

set_decorated :: forall window. WindowClass window => window -> Boolean -> Effect Unit
set_decorated = unsafe_set_decorated

foreign import destroy :: Window -> Effect Unit

foreign import unsafe_set_child :: forall widget. Window -> widget -> Effect Unit

set_child :: forall widget. Widget widget => Window -> widget -> Effect Unit
set_child = unsafe_set_child

foreign import clear_child :: Window -> Effect Unit
