"use strict";

import Gtk4 from 'gi://Gtk?version=4.0';

export const new_ = () => Gtk4.Button.new()

export const new_with_label = (txt) => () => Gtk4.Button.new_with_label(txt)
