"use strict";

const Gtk = imports.gi.Gtk;

exports.new = ()  => new Gtk.Box()

exports.unsafe_pack_start = box => c => e => f => p => () => box.pack_start(c, e, f, p)
