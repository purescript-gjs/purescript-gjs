module Gtk4.Application where

import Prelude (Unit)
import Effect (Effect)
import GObject

instance app :: GObject Application

foreign import data Application :: Type

-- TODO: add application flag parameter
foreign import new_ :: String -> Effect Application

foreign import run :: Application -> Effect Unit

new :: String -> Effect Application
new = new_
