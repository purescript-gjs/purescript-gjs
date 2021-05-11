"use strict";

const DBus = imports.gi.Gio.DBus;
const DBusConnection = imports.gi.Gio.DBusConnection;

exports.session = DBus.session
exports.system = DBus.system

exports.call_sync_impl = conn => bus_name => object_path => interface_name => method_name => parameters => reply_type => flags => timeout_msec => cancellable => () =>
  conn.call_sync(bus_name, object_path, interface_name, method_name, parameters, reply_type, flags, timeout_msec, cancellable)

exports.signal_subscribe_impl = conn => sender => interfaceName => member => object => arg0 => flag => cb => () =>
  conn.signal_subscribe(sender, interfaceName, member, object, arg0, flag , cb)

exports.signal_unsubscribe = id => () => conn.singal_unsubscribe(id)
