"use strict";

const Gtk4 = imports.gi.Gtk;
const Gio = imports.gi.Gio;

exports.new = (name) => () => Gtk4.Application.new(name, Gio.ApplicationFlags.FLAGS_NONE)

exports.run = (app) => () => app.run([])
