"use strict";

const Gtk4 = imports.gi.Gtk;

exports.unsafe_get_value = (r) => () => r.get_value()

exports.unsafe_set_value = (r) => v => () => r.set_value(v)
