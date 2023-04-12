module Gtk.Button where

import Prelude (Unit)
import Effect (Effect)
import Gtk (class Widget)

instance button :: Widget Button

foreign import data Button :: Type

foreign import new_ :: Effect Button

foreign import set_label :: Button -> String -> Effect Unit

foreign import connectClicked :: Button -> Effect Unit -> Effect Unit

new :: Effect Button
new = new_
