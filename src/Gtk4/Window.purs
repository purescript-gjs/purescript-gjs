module Gtk4.Window where

import Prelude (Unit)
import Effect (Effect)
import GObject (class GObject)
import Gtk4 (class Widget)

instance obj :: GObject Window
instance widget :: Widget Window

foreign import data Window :: Type

foreign import new :: Effect Window

foreign import set_title :: Window -> String -> Effect Unit

foreign import close :: Window -> Effect Unit

foreign import destroy :: Window -> Effect Unit

foreign import unsafe_set_child :: forall widget. Window -> widget -> Effect Unit

set_child :: forall widget. Widget widget => Window -> widget -> Effect Unit
set_child = unsafe_set_child

foreign import clear_child :: Window -> Effect Unit
