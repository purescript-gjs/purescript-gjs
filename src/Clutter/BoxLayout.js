"use strict";

let Clutter;
try { Clutter = imports.gi.Clutter; } catch(_) {}

exports.new = () => Clutter.BoxLayout.new()
exports.set_orientation = box => o => () => box.set_orientation(o)
