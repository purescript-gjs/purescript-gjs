"use strict";

const Gtk = imports.gi.Gtk;

exports.new = ()  => new Gtk.Button()

exports.set_label = button => label => () => button.set_label(label)

exports.connectClicked = button => cb => () => button.connect("clicked", cb)
