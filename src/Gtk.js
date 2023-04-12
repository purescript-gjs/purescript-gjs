"use strict";

imports.gi.versions.Gtk = "3.0";
const Gtk = imports.gi.Gtk;

export const init = () => Gtk.init(null)
export const main = () => Gtk.main()
export const main_quit = Gtk.main_quit
