"use strict";

let Clutter;
try { Clutter = imports.gi.Clutter; } catch(_) {}

export const new_ = () => Clutter.BoxLayout.new()
export const set_orientation = box => o => () => box.set_orientation(o)
