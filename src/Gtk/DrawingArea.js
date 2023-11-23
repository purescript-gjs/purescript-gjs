"use strict";

import Gtk from 'gi://Gtk?version=3.0';

export const new_ = ()  => new Gtk.DrawingArea()

export const connectDraw = widget => cb => () =>
  widget.connect("draw", (_, cr) => cb(cr)())
