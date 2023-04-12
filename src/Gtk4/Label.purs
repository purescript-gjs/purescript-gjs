module Gtk4.Label where

import Effect (Effect)
import GObject (class GObject)
import Gtk4 (class Widget)

instance obj :: GObject Label
instance widget :: Widget Label

foreign import data Label :: Type

foreign import new_ :: String -> Effect Label

new :: String -> Effect Label
new = new_
