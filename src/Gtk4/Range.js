"use strict";

import Gtk4 from 'gi://Gtk?version=4.0';

export const unsafe_get_value = (r) => () => r.get_value()

export const unsafe_set_value = (r) => v => () => r.set_value(v)
