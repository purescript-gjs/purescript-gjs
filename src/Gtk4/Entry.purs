module Gtk4.Entry where

import Effect (Effect)
import GObject (class GObject)
import Gtk4 (class Widget)
import Gtk4.EntryBuffer (EntryBuffer)

instance obj :: GObject Entry
instance widget :: Widget Entry

foreign import data Entry :: Type

foreign import new_ :: Effect Entry

foreign import get_buffer :: Entry -> Effect EntryBuffer

new :: Effect Entry
new = new_
