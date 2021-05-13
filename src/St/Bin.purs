module St.Bin where

import Prelude (Unit)
import Effect (Effect)
import GObject (class GObject)
import St (class Widget)
import Clutter.Actor (class Actor)

foreign import data Bin :: Type

instance obj :: GObject Bin
instance widget :: Widget Bin
instance actor :: Actor Bin

foreign import new :: Effect Bin

foreign import unsafe_set_child :: forall child. Bin -> child -> Effect Unit

set_child :: forall child. Widget child => Bin -> child -> Effect Unit
set_child = unsafe_set_child
