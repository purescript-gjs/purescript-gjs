"use strict";

const GLib = imports.gi.GLib

export const timeoutAdd = interval => cb =>  () => GLib.timeout_add(GLib.PRIORITY_DEFAULT, interval, cb)
export const sourceRemove = source => () => GLib.source_remove(source)
