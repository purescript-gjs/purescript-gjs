"use strict";

import GLib from 'gi://GLib';

export const new_now_utc = () => GLib.DateTime.new_now_utc()
export const to_unix = (dt) => dt.to_unix()
export const difference = (dt) => (begin) => dt.difference(begin)
export const new_from_iso8601_impl = (s) => GLib.DateTime.new_from_iso8601(s, null)
export const format_iso8601 = (dt) => dt.format_iso8601()
