module Meta.Window where

import Effect (Effect)
import GObject (class GObject)

foreign import data Window :: Type

instance obj :: GObject Window

foreign import get_title :: Window -> Effect String
