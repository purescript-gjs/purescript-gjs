"use strict";

const Gio = imports.gi.Gio;

exports.new = name => () => Gio.ThemedIcon.new(name)
