module Gio.DBusProxy where

import Data.Nullable (Nullable, toNullable)
import Prelude (Unit)
import Data.Maybe (Maybe)
import Effect (Effect)
import GLib.Variant (Variant)
import Gio.DBusConnection (DBusConnection)
import Gio.DBusProxyFlags (DBusProxyFlags)
import Gio.BusType (BusType)
import Gio.Cancellable (Cancellable)

foreign import data DBusProxy :: Type

-- TODO
type DBusInterfaceInfo = Unit

foreign import new_for_bus_sync_impl ::
  BusType ->
  DBusProxyFlags ->
  Nullable DBusInterfaceInfo ->
  -- | Name
  String ->
  -- | Object path
  String ->
  -- | Interface name
  String ->
  Nullable Cancellable ->
  Effect DBusProxy

new_for_bus_sync ::
  BusType ->
  DBusProxyFlags ->
  Maybe DBusInterfaceInfo ->
  -- | Name
  String ->
  -- | Object path
  String ->
  -- | Interface name
  String ->
  Maybe Cancellable ->
  Effect DBusProxy
new_for_bus_sync bt flags interface name object interfaceName cancellable =
  new_for_bus_sync_impl
    bt
    flags
    (toNullable interface)
    name
    object
    interfaceName
    (toNullable cancellable)

foreign import get_connection :: DBusProxy -> Effect DBusConnection

foreign import debugConnect :: DBusProxy -> (String -> Variant -> Effect Unit) -> Effect Unit
