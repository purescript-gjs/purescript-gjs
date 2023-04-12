"use strict";

const Gio = imports.gi.Gio;

export const new_ = name => () => Gio.Settings.new(name);
export const new_full = schema => () => Gio.Settings.new_full(schema, null, null)
export const apply = instance => () => instance.apply();
export const has_unapplied = instance => () => instance.has_unapplied;
export const is_writable = instance => name => () => instance.is_writable(name)
export const path = instance => instance.path;
export const set_value = instance => key => value => () => instance.set_value(key, value)

export const get_int = instance => key => () => instance.get_int(key)
export const set_int = instance => key => value => () => instance.set_int(key, value)
export const get_double = instance => key => () => instance.get_double(key)
export const set_double = instance => key => value => () => instance.set_double(key, value)
