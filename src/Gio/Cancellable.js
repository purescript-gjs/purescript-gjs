"use strict";

const Gio = imports.gi.Gio;

exports.new = () => Gio.Cancellable.new()
exports.cancel = cancellable => () => cancellable.cancel()
