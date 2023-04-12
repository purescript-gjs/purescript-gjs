"use strict";

const Gtk4 = imports.gi.Gtk;

export const unsafe_get_value = (r) => () => r.get_value()

export const unsafe_set_value = (r) => v => () => r.set_value(v)
