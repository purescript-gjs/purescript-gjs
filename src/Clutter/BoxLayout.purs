module Clutter.BoxLayout where

import Prelude (Unit)
import Clutter.Orientation (Orientation)
import Clutter.LayoutManager (class LayoutManager)
import Effect (Effect)
import GObject (class GObject)

foreign import data BoxLayout :: Type

instance obj :: GObject BoxLayout
instance lm :: LayoutManager BoxLayout

foreign import new_ :: Effect BoxLayout
foreign import set_orientation :: BoxLayout -> Orientation -> Effect Unit

new :: Effect BoxLayout
new = new_
