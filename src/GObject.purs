module GObject where

import Prelude (Unit)
import Effect (Effect)

class GObject :: forall k. k -> Constraint
class GObject a

foreign import unsafe_signal_connect_closure :: forall obj. obj -> String -> Effect Unit -> Effect Int

signal_connect_closure :: forall obj. GObject obj => obj -> String -> Effect Unit -> Effect Int
signal_connect_closure = unsafe_signal_connect_closure
