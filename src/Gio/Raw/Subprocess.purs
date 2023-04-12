module Gio.Raw.Subprocess where

import Prelude (Unit)
import Effect (Effect)
import Data.Maybe (Maybe)
import Gio.Cancellable (Cancellable)
import Gio.AsyncReadyCallback (AsyncReadyCallback)
import Data.Nullable (Nullable, toNullable)
import GObject (class GObject)
import Gio.AsyncResult (AsyncResult)
import Data.Tuple.Nested (Tuple3, tuple3)
import Gio.Raw.SubprocessFlags

foreign import data Subprocess :: Type
instance obj :: GObject Subprocess

foreign import new_ :: Array String -> SubprocessFlags -> Effect Subprocess

new :: Array String -> SubprocessFlags -> Effect Subprocess
new = new_

foreign import communicate_utf8_async_impl ::
  Subprocess -> Nullable String -> Nullable Cancellable -> AsyncReadyCallback Subprocess -> Effect Unit

communicate_utf8_async ::
  Subprocess -> Maybe String -> Maybe Cancellable -> AsyncReadyCallback Subprocess -> Effect Unit
communicate_utf8_async proc stdin cancellable cb =
  communicate_utf8_async_impl proc (toNullable stdin) (toNullable cancellable) cb

foreign import communicate_utf8_finish_impl ::
  (forall a b c. a -> b -> c -> Tuple3 a b c) -> Subprocess -> AsyncResult -> Effect (Tuple3 Boolean String String)

communicate_utf8_finish :: Subprocess -> AsyncResult -> Effect (Tuple3 Boolean String String)
communicate_utf8_finish = communicate_utf8_finish_impl tuple3
