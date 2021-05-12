module Clutter.Actor where

import Prelude (Unit)
import Effect (Effect)

class Actor :: forall k. k -> Constraint
class Actor a

foreign import unsafe_add_child :: forall parent child. parent -> child -> Effect Unit

add_child :: forall parent child. Actor parent => Actor child => parent -> child -> Effect Unit
add_child = unsafe_add_child

foreign import unsafe_destroy :: forall actor. actor -> Effect Unit

destroy :: forall actor. Actor actor => actor -> Effect Unit
destroy = unsafe_destroy
