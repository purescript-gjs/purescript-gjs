module GLib where

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Prelude (Unit, (<$>))

foreign import data EventSourceId :: Type

-- https://gjs-docs.gnome.org/glib20~2.66.1/glib.timeout_add
foreign import timeoutAdd :: Int -> Effect Boolean -> Effect EventSourceId

foreign import sourceRemove :: EventSourceId -> Effect Unit

foreign import getenv_impl :: String -> Effect (Nullable String)

getenv :: String -> Effect (Maybe String)
getenv var = toMaybe <$> getenv_impl var
