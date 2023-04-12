"use strict";

const Gtk = imports.gi.Gtk;

export const new_ = ()  => new Gtk.Box()

export const unsafe_pack_start = box => c => e => f => p => () => box.pack_start(c, e, f, p)
