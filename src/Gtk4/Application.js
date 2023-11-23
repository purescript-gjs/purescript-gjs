"use strict";

import Gtk4 from 'gi://Gtk?version=4.0';
import Gio from 'gi://Gio';

export const new_ = (name) => () => Gtk4.Application.new(name, Gio.ApplicationFlags.FLAGS_NONE)

export const run = (app) => () => app.run([])
