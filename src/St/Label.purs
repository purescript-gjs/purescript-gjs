module St.Label where

import Effect (Effect)
import GObject (class GObject)
import St (class Widget)
import Clutter.Actor (class Actor)

foreign import data Label :: Type

instance obj :: GObject Label
instance widget :: Widget Label
instance actor :: Actor Label

foreign import new :: String -> Effect Label
