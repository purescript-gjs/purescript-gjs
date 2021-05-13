module St.Button where

import Prelude (Unit)
import Effect (Effect)
import GObject (class GObject)
import St (class Widget)
import Clutter.Actor (class Actor)

foreign import data Button :: Type

instance obj :: GObject Button
instance widget :: Widget Button
instance actor :: Actor Button

foreign import new :: Effect Button
foreign import new_with_label :: String -> Effect Button
