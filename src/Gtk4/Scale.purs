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
