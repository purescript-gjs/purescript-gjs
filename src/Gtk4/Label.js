"use strict";

const Gtk4 = imports.gi.Gtk;

export const new_ = (txt) => () => Gtk4.Label.new(txt)
