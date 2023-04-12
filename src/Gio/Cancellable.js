"use strict";

const Gio = imports.gi.Gio;

export const new_ = () => Gio.Cancellable.new()
export const cancel = cancellable => () => cancellable.cancel()
