module Gtk4.Range where

import Prelude (Unit)
import Effect (Effect)

class Range :: forall k. k -> Constraint
class Range a

foreign import unsafe_get_value :: forall range. range -> Effect Number

foreign import unsafe_set_value :: forall range. range -> Number -> Effect Unit

get_value :: forall a. Range a => a -> Effect Number
get_value = unsafe_get_value

set_value :: forall a. Range a => a -> Number -> Effect Unit
set_value = unsafe_set_value
