module Clutter.Stage where

import Effect (Effect)
import GObject (class GObject)
import Clutter.Actor (class Actor)

foreign import data Stage :: Type

instance obj :: GObject Stage
instance actor :: Actor Stage

foreign import unsafe_get_key_focus :: forall actor. Stage -> Effect actor

get_key_focus :: forall actor. Actor actor => Stage -> Effect actor
get_key_focus = unsafe_get_key_focus
