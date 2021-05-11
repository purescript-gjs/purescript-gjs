"use strict";

const Gtk4 = imports.gi.Gtk;
const GObject = imports.gi.GObject;

exports.new = () => Gtk4.Dialog.new()

exports.get_content_area = (diag) => () => diag.get_content_area()

exports.add_button = (diag) => label => id => () => diag.add_button(label, id)

exports.onResponse = (diag) => cb => () => GObject.signal_connect_closure(diag, "response", (_, id) => cb(id)(), true)
