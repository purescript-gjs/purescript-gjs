"use strict";

let St;
try { St = imports.gi.St; } catch(_) {}

exports.new = () => St.Button.new()
exports.new_with_label = label => () => St.Button.new_with_label(label)
