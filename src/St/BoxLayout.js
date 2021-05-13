"use strict";

let St;
try { St = imports.gi.St; } catch(_) {}

exports.new = () => St.BoxLayout.new()

exports.set_vertical = box => b => () => box.set_vertical(b)
