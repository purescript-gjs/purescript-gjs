"use strict";

const Gtk4 = imports.gi.Gtk;

export const new_ = () => Gtk4.Entry.new()

export const get_buffer = (entry) => () => entry.get_buffer()
