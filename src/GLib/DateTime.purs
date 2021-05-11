module GLib.DateTime where

import Prelude ((<$>))
import Effect (Effect)
import Prelude (Unit)

foreign import data DateTime :: Type

foreign import new_now_utc :: Effect DateTime

foreign import to_unix :: DateTime -> Int

getUnix :: Effect Int
getUnix = to_unix <$> new_now_utc
