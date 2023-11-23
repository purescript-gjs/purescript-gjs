"use strict";

import Gtk4 from 'gi://Gtk?version=4.0';
import GObject from 'gi://GObject';

export const new_ = () => Gtk4.Dialog.new()

export const get_content_area = (diag) => () => diag.get_content_area()

export const add_button = (diag) => label => id => () => diag.add_button(label, id)

export const onResponse = (diag) => cb => () => GObject.signal_connect_closure(diag, "response", (_, id) => cb(id)(), true)
