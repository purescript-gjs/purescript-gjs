module Gio.Settings (Instance, new, apply, has_unapplied, path, set_value) where

import Effect (Effect)
import Prelude (Unit)
import GLib.Variant (Variant)

foreign import data Instance :: Type

foreign import new :: String -> Effect Instance

foreign import apply :: Instance -> Effect Unit

foreign import has_unapplied :: Instance -> Boolean

foreign import path :: Instance -> String

foreign import set_value :: Instance -> String -> Variant -> Effect Boolean
