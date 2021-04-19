"use strict";

const Gtk = imports.gi.Gtk;

exports.new = ()  => new Gtk.Window()

exports.connectDelete = win => cb => () => win.connect("delete-event", cb)

exports.show_all = win => () => win.show_all()

exports.unsafe_add = win => widget => () => win.add(widget)
