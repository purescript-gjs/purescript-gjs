module St where

import Prelude (Unit)
import Effect (Effect)

foreign import data Widget :: Type -> Type
foreign import data Icon :: Type
foreign import data Label :: Type


foreign import newIcon :: String -> String -> Effect (Widget Icon)

foreign import newLabel :: String -> Effect (Widget Label)

foreign import addChild :: forall a b. Widget a -> Widget b -> Effect Unit

foreign import destroy :: forall a. Widget a -> Effect Unit
