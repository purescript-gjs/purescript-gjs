"use strict";

const Gio = imports.gi.Gio;

export const new_for_string = name => () => Gio.Icon.new_for_string(name)
