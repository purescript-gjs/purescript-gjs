module St.Icon where

import Prelude (Unit)
import Effect (Effect)
import GObject (class GObject)
import St (class Widget)
import Clutter.Actor (class Actor)
import Gio.Icon as Gio.Icon

foreign import data Icon :: Type

instance obj :: GObject Icon
instance widget :: Widget Icon
instance actor :: Actor Icon

foreign import new :: Effect Icon

foreign import set_gicon :: Icon -> Gio.Icon.Icon -> Effect Unit
