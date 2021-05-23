module Gio.Async where

import Prelude (Unit)
import Effect (Effect)

-- | Run this function before using async effect, it ensures setTimeout is available for aff
foreign import init :: Effect Unit
