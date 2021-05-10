module Gtk4.Button where

import Prelude (Unit)
import Effect (Effect)
import GObject (class GObject)
import Gtk4 (class Widget)

instance obj :: GObject Button
instance widget :: Widget Button

foreign import data Button :: Type

foreign import new :: Effect Button

foreign import new_with_label :: String -> Effect Button
