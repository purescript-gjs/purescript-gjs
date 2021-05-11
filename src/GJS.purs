module GJS where

import Prelude (Unit)
import Effect (Effect)
import Effect.Exception (Error)

foreign import log :: forall msg. msg -> Effect Unit

foreign import print :: String -> Effect Unit

foreign import printerr :: String -> Effect Unit

foreign import logError :: Error -> String -> Effect Unit

foreign import argv :: Array String
