module GObject where

import Prelude (Unit)
import Effect (Effect)

class GObject :: forall k. k -> Constraint
class GObject a

foreign import unsafe_signal_connect_closure :: forall obj. obj -> String -> Effect Unit -> Effect Int

signal_connect_closure :: forall obj. GObject obj => obj -> String -> Effect Unit -> Effect Int
signal_connect_closure = unsafe_signal_connect_closure

foreign import unsafe_run_dispose :: forall obj. obj -> Effect Unit

run_dispose :: forall obj. GObject obj => obj -> Effect Unit
run_dispose = unsafe_run_dispose

foreign import data HandlerID :: Type

foreign import unsafe_connect :: forall object. object -> String -> Effect Unit -> Effect HandlerID

connect :: forall object. GObject object => object -> String -> Effect Unit -> Effect HandlerID
connect = unsafe_connect


foreign import unsafe_disconnect :: forall object. object -> HandlerID -> Effect Unit

disconnect :: forall object. GObject object => object -> HandlerID -> Effect Unit
disconnect = unsafe_disconnect
