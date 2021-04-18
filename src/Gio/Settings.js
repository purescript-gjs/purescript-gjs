"use strict";

const Gio = imports.gi.Gio;

exports.new = name => () => Gio.Settings.new(name);
exports.apply = instance => () => instance.apply();
exports.has_unapplied = instance => instance.has_unapplied;
exports.path = instance => instance.path;
exports.set_value = instance => key => value => () => instance.set_value(key, value)
