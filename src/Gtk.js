"use strict";

imports.gi.versions.Gtk = "3.0";
const Gtk = imports.gi.Gtk;

exports.init = () => Gtk.init(null)
exports.main = () => Gtk.main()
exports.main_quit = Gtk.main_quit
