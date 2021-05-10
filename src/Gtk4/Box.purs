module Gtk4.Box where

import Prelude (Unit)
import Effect (Effect)
import GObject (class GObject)
import Gtk4 (class Widget)
import Gtk4.Orientation
import Gtk4.Application (Application)

instance obj :: GObject Box
instance widget :: Widget Box

foreign import data Box :: Type

foreign import new :: Orientation -> Number -> Effect Box

foreign import unsafe_append :: forall widget. Box -> widget -> Effect Unit

append :: forall widget. Widget widget => Box -> widget -> Effect Unit
append = unsafe_append
