"use strict";

const Gtk = imports.gi.Gtk;

export const new_ = ()  => new Gtk.DrawingArea()

export const connectDraw = widget => cb => () =>
  widget.connect("draw", (_, cr) => cb(cr)())
