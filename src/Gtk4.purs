module Gtk4 where

import Prelude (Unit)
import Effect (Effect)

class Widget :: forall k. k -> Constraint
class Widget a

foreign import init :: Effect Unit

foreign import unsafe_show :: forall widget. widget -> Effect Unit

show :: forall widget. Widget widget => widget -> Effect Unit
show = unsafe_show

foreign import unsafe_set_size_request :: forall widget. widget -> Int -> Int -> Effect Unit

set_size_request :: forall a. Widget a => a -> Int -> Int -> Effect Unit
set_size_request = unsafe_set_size_request
