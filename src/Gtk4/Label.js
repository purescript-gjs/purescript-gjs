"use strict";

const Gtk4 = imports.gi.Gtk;

exports.new = (txt) => () => Gtk4.Label.new(txt)
