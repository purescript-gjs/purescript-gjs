module Gio.Cancellable where

import Prelude (Unit)
import Effect (Effect)

foreign import data Cancellable :: Type

foreign import new_ :: Effect Cancellable

new :: Effect Cancellable
new = new_

foreign import cancel :: Cancellable -> Effect Unit
