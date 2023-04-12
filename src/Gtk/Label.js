"use strict";

const Gtk = imports.gi.Gtk;

export const new_ = ()  => new Gtk.Label()

export const set_label = button => label => () => button.set_label(label)
