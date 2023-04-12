module Gtk.DrawingArea where

import Prelude (Unit)
import Effect (Effect)
import Gtk (class Widget)
import Cairo as Cairo

instance drawingArea :: Widget DrawingArea

foreign import data DrawingArea :: Type

foreign import new_ :: Effect DrawingArea

new :: Effect DrawingArea
new = new_

foreign import connectDraw :: DrawingArea -> (Cairo.Context -> Effect Unit) -> Effect Unit
