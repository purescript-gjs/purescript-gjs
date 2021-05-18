module Clutter.Stage where

import GObject (class GObject)
import Clutter.Actor (class Actor)

foreign import data Stage :: Type

instance obj :: GObject Stage
instance actor :: Actor Stage
