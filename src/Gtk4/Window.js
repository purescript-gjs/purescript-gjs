"use strict";

const Gtk4 = imports.gi.Gtk;

exports.new = () => Gtk4.Window.new()

exports.set_title = (win) => title => () => win.set_title(title)

exports.unsafe_set_child = (win) => child => () => win.set_child(child)
