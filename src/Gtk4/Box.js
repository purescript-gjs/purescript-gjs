"use strict";

const Gtk4 = imports.gi.Gtk;

export const new_ = (orientation) => spacing => () => Gtk4.Box.new(orientation, spacing)

export const unsafe_append = (box) => widget => () => box.append(widget)
