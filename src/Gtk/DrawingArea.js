"use strict";

const Gtk = imports.gi.Gtk;

exports.new = ()  => new Gtk.DrawingArea()

exports.connectDraw = widget => cb => () =>
  widget.connect("draw", (_, cr) => cb(cr)())
