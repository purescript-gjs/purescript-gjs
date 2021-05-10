module Cairo where

import Prelude (Unit)
import Effect (Effect)

foreign import data Context :: Type

foreign import translate :: Context -> Number -> Number -> Effect Unit

foreign import arc :: Context -> Number -> Number -> Number -> Number -> Number -> Effect Unit

foreign import lineTo :: Context -> Number -> Number -> Effect Unit

foreign import stroke :: Context -> Effect Unit
