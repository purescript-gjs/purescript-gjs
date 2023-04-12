"use strict";

const Gtk4 = imports.gi.Gtk;
const Gio = imports.gi.Gio;

export const new_ = (name) => () => Gtk4.Application.new(name, Gio.ApplicationFlags.FLAGS_NONE)

export const run = (app) => () => app.run([])
