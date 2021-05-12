"use strict";

const Gtk4 = imports.gi.Gtk;

exports.new = () => Gtk4.Window.new()

exports.unsafe_set_title = (win) => title => () => win.set_title(title)

exports.destroy = (win) => () => win.destroy()

exports.unsafe_close = (win) => () => win.close()

exports.unsafe_set_modal = (win) => (b) => () => win.set_modal(b)

exports.unsafe_set_decorated = (win) => (b) => () => win.set_decorated(b)

exports.unsafe_set_child = (win) => child => () => win.set_child(child)

exports.clear_child = (win) => () => win.set_child(null)
