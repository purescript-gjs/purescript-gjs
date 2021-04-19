module Gtk.Label where

import Effect (Effect)
import Prelude (Unit)

import Gtk (class Widget)

instance label :: Widget Label

foreign import data Label :: Type

foreign import new :: Effect Label

foreign import set_label :: Label -> String -> Effect Unit
