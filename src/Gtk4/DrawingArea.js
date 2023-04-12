"use strict";

const Gtk4 = imports.gi.Gtk;

export const new_ = () => Gtk4.DrawingArea.new()

export const set_draw_func = (da) => cb => () => da.set_draw_func((_, cr) => cb(cr)())
