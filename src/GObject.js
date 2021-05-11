"use strict";

const GObject = imports.gi.GObject;

exports.unsafe_signal_connect_closure = obj => name => cb => () =>
  GObject.signal_connect_closure(obj, name, cb, true)

exports.unsafe_run_dispose = obj => () => obj.run_dispose()
