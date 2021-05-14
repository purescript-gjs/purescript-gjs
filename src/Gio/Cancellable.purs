module Gio.Cancellable where

import Prelude (Unit)
import Effect (Effect)

foreign import data Cancellable :: Type

foreign import new :: Effect Cancellable

foreign import cancel :: Cancellable -> Effect Unit
