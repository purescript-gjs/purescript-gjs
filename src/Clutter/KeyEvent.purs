module Clutter.KeyEvent where

import Prelude (Unit)
import Effect (Effect)
import Clutter.EventType (EventType)

type KeyEvent
  = { "type" :: EventType
    , time :: Int
    }
