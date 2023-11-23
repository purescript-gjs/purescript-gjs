"use strict";

import Gio from 'gi://Gio';

export const new_ = name => () => Gio.ThemedIcon.new(name)
