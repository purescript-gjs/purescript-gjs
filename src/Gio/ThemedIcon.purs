module Gio.ThemedIcon where

import Effect (Effect)
import Gio.Icon (Icon)

foreign import new_ :: String -> Effect Icon

-- | See https://specifications.freedesktop.org/icon-naming-spec/icon-naming-spec-latest.html
new :: String -> Effect Icon
new = new_
