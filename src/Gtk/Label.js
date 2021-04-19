"use strict";

const Gtk = imports.gi.Gtk;

exports.new = ()  => new Gtk.Label()

exports.set_label = button => label => () => button.set_label(label)
