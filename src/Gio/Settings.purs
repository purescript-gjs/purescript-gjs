module Gio.Settings where

import Effect (Effect)
import Prelude (Unit)
import GLib.Variant (Variant)
import GObject (class GObject)
import Gio.SettingsSchema (SettingsSchema)

instance obj :: GObject Settings

foreign import data Settings :: Type

foreign import new_ :: String -> Effect Settings

new :: String -> Effect Settings
new = new_

foreign import new_full :: SettingsSchema -> Effect Settings

foreign import apply :: Settings -> Effect Unit

foreign import has_unapplied :: Settings -> Effect Boolean

foreign import is_writable :: Settings -> String -> Effect Boolean

foreign import path :: Settings -> String

foreign import set_value :: Settings -> String -> Variant -> Effect Boolean

foreign import set_int :: Settings -> String -> Int -> Effect Boolean

foreign import get_int :: Settings -> String -> Effect Int

foreign import set_double :: Settings -> String -> Number -> Effect Boolean

foreign import get_double :: Settings -> String -> Effect Number
