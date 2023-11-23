"use strict";

import Gio from 'gi://Gio';

export const new_for_string = name => () => Gio.Icon.new_for_string(name)
