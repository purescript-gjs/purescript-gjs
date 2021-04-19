module Gtk where

import Prelude (Unit)
import Effect (Effect)

class Widget :: forall k. k -> Constraint
class Widget a

foreign import init :: Effect Unit

foreign import main :: Effect Unit

foreign import main_quit :: Effect Unit
