module GLib.MainLoop where

import Effect (Effect)
import Prelude (Unit)

foreign import data Loop :: Type

foreign import new :: Effect Loop

foreign import run :: Loop -> Effect Unit

foreign import quit :: Loop -> Effect Unit
