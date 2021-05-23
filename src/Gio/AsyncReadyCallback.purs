module Gio.AsyncReadyCallback where

import Prelude (Unit)
import Effect (Effect)
import GObject (class GObject)
import Gio.AsyncResult (AsyncResult)

type AsyncReadyCallback obj = obj -> AsyncResult -> Effect Unit
