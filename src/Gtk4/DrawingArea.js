"use strict";

import Gtk4 from 'gi://Gtk?version=4.0';

export const new_ = () => Gtk4.DrawingArea.new()

export const set_draw_func = (da) => cb => () => da.set_draw_func((_, cr) => cb(cr)())
