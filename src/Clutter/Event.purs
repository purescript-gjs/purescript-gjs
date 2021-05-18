module Clutter.Event where

import Prelude (Unit)
import Effect (Effect)

class Event :: forall k. k -> Constraint
class Event a

foreign import unsafe_get_key_code :: forall event. event -> Effect Int

get_key_code :: forall event. Event event => event -> Effect Int
get_key_code = unsafe_get_key_code

foreign import unsafe_get_key_symbol :: forall event. event -> Effect Int

get_key_symbol :: forall event. Event event => event -> Effect Int
get_key_symbol = unsafe_get_key_symbol

foreign import unsafe_get_time :: forall event. event -> Effect Int

get_time :: forall event. Event event => event -> Effect Int
get_time = unsafe_get_time

foreign import unsafe_has_shift_modifier :: forall event. event -> Effect Boolean

has_shift_modifier :: forall event. Event event => event -> Effect Boolean
has_shift_modifier = unsafe_has_shift_modifier
