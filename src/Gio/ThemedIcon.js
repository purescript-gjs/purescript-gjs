"use strict";

const Gio = imports.gi.Gio;

export const new_ = name => () => Gio.ThemedIcon.new(name)
