module Cairo where

import Prelude (Unit)
import Effect (Effect)

foreign import data Context :: Type

-- https://www.cairographics.org/manual/cairo-Paths.html#cairo-move-to
foreign import moveTo :: Context -> Number -> Number -> Effect Unit

foreign import translate :: Context -> Number -> Number -> Effect Unit

foreign import setSourceRGB :: Context -> Number -> Number -> Number -> Effect Unit

foreign import showText :: Context -> String -> Effect Unit

foreign import arc :: Context -> Number -> Number -> Number -> Number -> Number -> Effect Unit

foreign import lineTo :: Context -> Number -> Number -> Effect Unit

foreign import stroke :: Context -> Effect Unit
