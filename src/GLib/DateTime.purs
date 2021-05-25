module GLib.DateTime where

import Prelude ((<$>))
import Effect (Effect)
import Prelude (Unit)
import GLib.TimeSpan (TimeSpan)

foreign import data DateTime :: Type

foreign import new_now_utc :: Effect DateTime

foreign import to_unix :: DateTime -> Int

foreign import difference :: DateTime -> DateTime -> TimeSpan

getUnix :: Effect Int
getUnix = to_unix <$> new_now_utc
