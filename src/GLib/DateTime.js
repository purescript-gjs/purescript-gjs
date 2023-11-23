"use strict";

import GLib from 'gi://GLib';

export const new_now_utc = () => GLib.DateTime.new_now_utc()
export const to_unix = (dt) => dt.to_unix()
export const difference = (dt) => (begin) => dt.difference(begin)
