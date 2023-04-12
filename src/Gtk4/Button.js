"use strict";

const Gtk4 = imports.gi.Gtk;

export const new_ = () => Gtk4.Button.new()

export const new_with_label = (txt) => () => Gtk4.Button.new_with_label(txt)
