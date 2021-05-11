module GJS where

import Prelude (Unit)
import Effect (Effect)
import Effect.Exception (Error)

foreign import log :: forall msg. msg -> Effect Unit

foreign import print :: forall msg. msg -> Effect Unit

foreign import printerr :: forall msg. msg -> Effect Unit

foreign import logError :: forall msg. Error -> msg -> Effect Unit

foreign import argv :: Array String
