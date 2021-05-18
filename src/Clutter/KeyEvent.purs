module Clutter.KeyEvent where

import Prelude (Unit)
import Effect (Effect)
import Clutter.Event (class Event)

instance ev :: Event KeyEvent

foreign import data KeyEvent :: Type
