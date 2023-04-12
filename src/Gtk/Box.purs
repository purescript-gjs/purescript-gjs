module Gtk.Box where

import Prelude (Unit)
import Effect (Effect)
import Gtk (class Widget)

instance button :: Widget Box

foreign import data Box :: Type

foreign import new_ :: Effect Box

new :: Effect Box
new = new_

-- |  pack_start(child, expand, fill, padding)
foreign import unsafe_pack_start :: forall widget. Box -> widget -> Boolean -> Boolean -> Int -> Effect Unit

pack_start :: forall w. Widget w => Box -> w -> Boolean -> Boolean -> Int -> Effect Unit
pack_start = unsafe_pack_start
