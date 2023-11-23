"use strict";

import Gtk from 'gi://Gtk?version=3.0';

export const init = () => Gtk.init(null)
export const main = () => Gtk.main()
export const main_quit = Gtk.main_quit
