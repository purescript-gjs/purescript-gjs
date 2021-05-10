"use strict";

const Gtk4 = imports.gi.Gtk;

exports.new = () => Gtk4.DrawingArea.new()

exports.set_draw_func = (da) => cb => () => da.set_draw_func((_, cr) => cb(cr)())
