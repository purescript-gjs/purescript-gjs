module GLib.DateTime where

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import GLib.TimeSpan (TimeSpan)
import Prelude (class Show, (<$>))

foreign import data DateTime :: Type

foreign import new_now_utc :: Effect DateTime

foreign import to_unix :: DateTime -> Int

foreign import difference :: DateTime -> DateTime -> TimeSpan

foreign import new_from_iso8601_impl :: String -> Nullable DateTime

foreign import format_iso8601 :: DateTime -> String

getUnix :: Effect Int
getUnix = to_unix <$> new_now_utc

new_from_iso8601 :: String -> Maybe DateTime
new_from_iso8601 s = toMaybe (new_from_iso8601_impl s)

instance Show DateTime where
  show = format_iso8601
