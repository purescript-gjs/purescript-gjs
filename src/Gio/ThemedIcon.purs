module Gio.ThemedIcon where

import Effect (Effect)
import Gio.Icon (Icon)

foreign import new :: String -> Effect Icon
