module Gtk.Widget where

import Prelude (Unit)
import Effect (Effect)
import Gtk (class Widget)

foreign import unsafe_set_size_request :: forall widget. widget -> Int -> Int -> Effect Unit

set_size_request :: forall a. Widget a => a -> Int -> Int -> Effect Unit
set_size_request = unsafe_set_size_request
