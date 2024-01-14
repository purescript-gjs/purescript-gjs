module Gio.Raw.File where

import Data.ArrayBuffer.Types (Uint8Array)
import Data.Either (Either)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toNullable)
import Data.Tuple.Nested (Tuple3, tuple3)
import Effect (Effect)
import Effect.Exception (Error, try)
import GObject (class GObject)
import Gio.AsyncReadyCallback (AsyncReadyCallback)
import Gio.AsyncResult (AsyncResult)
import Gio.Cancellable (Cancellable)
import Prelude (Unit)

foreign import data File :: Type

instance obj :: GObject File

foreign import new_for_path :: String -> Effect File

-- TODO export const filepath = GLib.build_filenamev([GLib.get_home_dir(), 'test-file.txt']);
foreign import load_contents_impl :: File -> Nullable Cancellable -> Effect String

load_contents :: File -> Nullable Cancellable -> Effect (Either Error String)
load_contents file cancel = try (load_contents_impl file cancel)

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
