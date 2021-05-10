"use strict";

const GLib = imports.gi.GLib

exports.new = () => GLib.MainLoop.new(null, false)
exports.run = (loop) => () => loop.run()
exports.quit = (loop) => () => loop.quit()
