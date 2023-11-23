"use strict";

import Gtk from 'gi://Gtk?version=3.0';

export const new_ = ()  => new Gtk.Button()

export const set_label = button => label => () => button.set_label(label)

export const connectClicked = button => cb => () => button.connect("clicked", cb)
