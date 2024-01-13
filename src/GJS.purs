module GJS where

import Prelude (Unit)
import Effect (Effect)
import Effect.Exception (Error)
import Data.Tuple.Nested ((/\))

-- | Print a message
foreign import log :: forall msg. msg -> Effect Unit

-- | Print a message with strack trace
foreign import trace :: forall msg. msg -> Effect Unit

-- | Print a message with WARNING severity
foreign import warn :: forall msg. msg -> Effect Unit

foreign import argv :: Array String

-- | deprecated helper
print = log
printerr = warn
logError e m = warn (e /\ m)
