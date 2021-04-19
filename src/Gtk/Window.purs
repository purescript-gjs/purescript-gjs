module Gtk.Window where

import Prelude (Unit)
import Effect (Effect)
import Gtk

instance win :: Widget Window

foreign import data Window :: Type

foreign import new :: Effect Window

foreign import connectDelete :: Window -> Effect Unit -> Effect Unit

foreign import show_all :: Window -> Effect Unit

foreign import unsafe_add :: forall widget. Window -> widget -> Effect Unit

add :: forall w. Widget w => Window -> w -> Effect Unit
add = unsafe_add
