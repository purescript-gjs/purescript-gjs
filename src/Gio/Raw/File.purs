module Gio.Raw.File where

import Prelude (Unit)
import Effect (Effect)
import Data.Maybe (Maybe)
import Gio.Cancellable (Cancellable)
import Gio.AsyncReadyCallback (AsyncReadyCallback)
import Data.Nullable (Nullable, toNullable)
import GObject (class GObject)
import Gio.AsyncResult (AsyncResult)
import Data.Tuple.Nested (Tuple3, tuple3)
import Data.ArrayBuffer.Types (Uint8Array)

foreign import data File :: Type
instance obj :: GObject File

foreign import new_for_path :: String -> Effect File

foreign import load_contents_async_impl ::
  File -> Nullable Cancellable -> AsyncReadyCallback File -> Effect Unit

load_contents_async :: File -> Maybe Cancellable -> AsyncReadyCallback File -> Effect Unit
load_contents_async file cancellable cb = load_contents_async_impl file (toNullable cancellable) cb

foreign import load_contents_finish_impl ::
  (forall a b c. a -> b -> c -> Tuple3 a b c) -> File -> AsyncResult -> Effect (Tuple3 Boolean Uint8Array String)

load_contents_finish :: File -> AsyncResult -> Effect (Tuple3 Boolean Uint8Array String)
load_contents_finish = load_contents_finish_impl tuple3

-- helper function
foreign import contentsToString :: Uint8Array -> String
