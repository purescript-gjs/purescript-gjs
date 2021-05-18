module Meta.Display where

import Prelude (Unit)
import Effect (Effect)
import GObject (class GObject)
import Meta.Window (Window)

foreign import data Display :: Type

instance obj :: GObject Display

foreign import get_focus_window :: Display -> Effect Window
