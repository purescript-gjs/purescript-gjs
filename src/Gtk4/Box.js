"use strict";

import Gtk4 from 'gi://Gtk?version=4.0';

export const new_ = (orientation) => spacing => () => Gtk4.Box.new(orientation, spacing)

export const unsafe_append = (box) => widget => () => box.append(widget)
