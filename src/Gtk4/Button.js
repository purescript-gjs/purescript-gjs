"use strict";

const Gtk4 = imports.gi.Gtk;

exports.new = () => Gtk4.Button.new()

exports.new_with_label = (txt) => () => Gtk4.Button.new_with_label(txt)
