"use strict";

const Gtk4 = imports.gi.Gtk;

exports.new_with_range = (orientation) => min => max => step => () => Gtk4.Scale.new_with_range(orientation, min, max, step)
exports.set_draw_value = (scale) => draw_value => () => scale.set_draw_value(draw_value)
exports.set_format_value_func = (scale) => cb => () => scale.set_format_value_func((_, v) => cb(v))
exports.unset_format_value_func = (scale) => () => scale.set_format_value_func(null)
