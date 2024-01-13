"use strict";

import Gtk4 from 'gi://Gtk?version=4.0';

export const new_ = () => Gtk4.Window.new()

export const unsafe_set_title = (win) => title => () => win.set_title(title)

export const destroy = (win) => () => win.destroy()

export const unsafe_close = (win) => () => win.close()

export const unsafe_set_modal = (win) => (b) => () => win.set_modal(b)

export const unsafe_set_decorated = (win) => (b) => () => win.set_decorated(b)

export const unsafe_set_child = (win) => child => () => win.set_child(child)

export const clear_child = (win) => () => win.set_child(null)
