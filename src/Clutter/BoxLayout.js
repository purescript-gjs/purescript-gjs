"use strict";

import Clutter from 'gi://Clutter';

export const new_ = () => Clutter.BoxLayout.new()
export const set_orientation = box => o => () => box.set_orientation(o)
