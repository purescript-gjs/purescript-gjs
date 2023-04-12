module Gio.ThemedIcon where

import Effect (Effect)
import Gio.Icon (Icon)

foreign import new_ :: String -> Effect Icon

new :: String -> Effect Icon
new = new_
