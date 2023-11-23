"use strict";

import Gtk4 from 'gi://Gtk?version=4.0';

export const new_ = (txt) => () => Gtk4.Label.new(txt)
