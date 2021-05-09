module GLib where

import Prelude (Unit)
import Effect (Effect)

foreign import data EventSourceId :: Type

-- https://gjs-docs.gnome.org/glib20~2.66.1/glib.timeout_add
foreign import timeoutAdd :: Int -> Effect Boolean -> Effect EventSourceId

foreign import sourceRemove :: EventSourceId -> Effect Unit
