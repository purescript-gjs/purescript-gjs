"use strict";

import Gtk from 'gi://Gtk?version=3.0';

export const new_ = ()  => new Gtk.Window()

export const connectDelete = win => cb => () => win.connect("delete-event", cb)

export const show_all = win => () => win.show_all()

export const unsafe_add = win => widget => () => win.add(widget)
