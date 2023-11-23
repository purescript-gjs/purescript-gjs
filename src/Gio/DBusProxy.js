"use strict";

import Gio from 'gi://Gio';
const DBusProxy = Gio.DBusProxy;

export const new_for_bus_sync_impl = bt => flags => i => name => object => iname => cancellable => () =>
  DBusProxy.new_for_bus_sync(bt, flags, i, name, object, iname, cancellable)

export const get_connection = proxy => () => proxy.get_connection()

export const debugConnect = proxy => cb => () => {
  proxy.connect('g-properties-changed', (_proxy, changed, _invalidated) =>
    Object.entries(changed.deep_unpack()).map((x) => {
      print(`prop [${x[0]}] ${x[1]}`)
      cb(x[0])(x[1])()
    }))
  proxy.connect('g-signal', (proxy, sender_name, signal_name, parameters) => {
    print(`signal [${signal_name}] ${parameters}`)
    cb(signal_name)(parameters)()
  })
}
