"use strict";

const GLib = imports.gi.GLib

exports.new_now_utc = () => GLib.DateTime.new_now_utc()
exports.to_unix = (dt) => dt.to_unix()
exports.difference = (dt) => (begin) => dt.difference(begin)
