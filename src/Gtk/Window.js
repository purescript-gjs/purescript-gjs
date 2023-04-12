"use strict";

const Gtk = imports.gi.Gtk;

export const new_ = ()  => new Gtk.Window()

export const connectDelete = win => cb => () => win.connect("delete-event", cb)

export const show_all = win => () => win.show_all()

export const unsafe_add = win => widget => () => win.add(widget)
