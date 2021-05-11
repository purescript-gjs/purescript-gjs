"use strict";

const Gtk4 = imports.gi.Gtk;

exports.new = () => Gtk4.Entry.new()

exports.get_buffer = (entry) => () => entry.get_buffer()
