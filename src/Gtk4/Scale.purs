module Gtk4.Scale where

import Prelude (Unit)
import Effect (Effect)
import GObject (class GObject)
import Gtk4 (class Widget)
import Gtk4.Range (class Range)
import Gtk4.Orientation (Orientation)

instance obj :: GObject Scale
instance widget :: Widget Scale
instance range :: Range Scale

foreign import data Scale :: Type

foreign import new_with_range :: Orientation -> Number -> Number -> Number -> Effect Scale

foreign import set_draw_value :: Scale -> Boolean -> Effect Unit

foreign import set_format_value_func :: Scale -> (Number -> String) -> Effect Unit

-- Call this on destroy to prevent this exception: Attempting to run a JS callback during garbage collection.
-- It seems like there is a bug in the set_format_value_func disposal logic
foreign import unset_format_value_func :: Scale -> Effect Unit
