module Clutter.ButtonEvent where

import Prelude (Unit)
import Effect (Effect)
import Clutter.Event (class Event)

instance ev :: Event ButtonEvent

foreign import data ButtonEvent :: Type
