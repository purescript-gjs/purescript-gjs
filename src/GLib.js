"use strict";

const GLib = imports.gi.GLib

exports.timeoutAdd = interval => cb =>  () => GLib.timeout_add(GLib.PRIORITY_DEFAULT, interval, cb)
exports.sourceRemove = source => () => GLib.source_remove(source)
