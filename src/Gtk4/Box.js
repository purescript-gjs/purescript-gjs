"use strict";

const Gtk4 = imports.gi.Gtk;

exports.new = (orientation) => spacing => () => Gtk4.Box.new(orientation, spacing)

exports.unsafe_append = (box) => widget => () => box.append(widget)
