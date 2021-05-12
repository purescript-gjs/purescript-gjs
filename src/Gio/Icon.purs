module Gio.Icon where

import Effect (Effect)

foreign import data Icon :: Type

foreign import new_for_string :: String -> Effect Icon
