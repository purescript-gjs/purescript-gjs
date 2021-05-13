"use strict";

let St;
try { St = imports.gi.St; } catch(_) {}

exports.new = () => St.Bin.new()

exports.unsafe_set_child = bin => child => () => bin.set_child(child)
