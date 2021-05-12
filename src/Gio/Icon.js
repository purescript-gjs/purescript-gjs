"use strict";

const Gio = imports.gi.Gio;

exports.new_for_string = name => () => Gio.Icon.new_for_string(name)
