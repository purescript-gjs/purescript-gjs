module Gtk4.DrawingArea where

import Prelude (Unit)
import Effect (Effect)
import GObject (class GObject)
import Gtk4
import Cairo as Cairo

instance obj :: GObject DrawingArea
instance widget :: Widget DrawingArea

foreign import data DrawingArea :: Type

foreign import new :: Effect DrawingArea

foreign import set_draw_func :: DrawingArea -> (Cairo.Context -> Effect Unit) -> Effect Unit
