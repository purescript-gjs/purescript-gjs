"use strict";

let St;
try { St = imports.gi.St; } catch(_) {}

exports.new = () => St.Icon.new()
exports.set_gicon = icon => gicon => () => icon.set_gicon(gicon)
