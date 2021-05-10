"use strict";

const Gio = imports.gi.Gio;

exports.new = name => () => Gio.Settings.new(name);
exports.new_full = schema => () => Gio.Settings.new_full(schema, null, null)
exports.apply = instance => () => instance.apply();
exports.has_unapplied = instance => () => instance.has_unapplied;
exports.is_writable = instance => name => () => instance.is_writable(name)
exports.path = instance => instance.path;
exports.set_value = instance => key => value => () => instance.set_value(key, value)

exports.get_int = instance => key => () => instance.get_int(key)
exports.set_int = instance => key => value => () => instance.set_int(key, value)
