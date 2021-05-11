module Gtk4.EntryBuffer where

import Prelude (Unit)
import Effect (Effect)
import GObject (class GObject)

instance obj :: GObject EntryBuffer

foreign import data EntryBuffer :: Type

foreign import get_text :: EntryBuffer -> Effect String

foreign import set_text :: EntryBuffer -> String -> Effect Unit
