"use strict";

import GLib from 'gi://GLib';

export const timeoutAdd = interval => cb =>  () => GLib.timeout_add(GLib.PRIORITY_DEFAULT, interval, cb)
export const sourceRemove = source => () => GLib.source_remove(source)
export const getenv_impl = x => () => GLib.getenv(x)
