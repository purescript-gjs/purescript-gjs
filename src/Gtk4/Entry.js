"use strict";

import Gtk4 from 'gi://Gtk?version=4.0';

export const new_ = () => Gtk4.Entry.new()

export const get_buffer = (entry) => () => entry.get_buffer()
