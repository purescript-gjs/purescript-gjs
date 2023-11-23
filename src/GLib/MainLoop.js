"use strict";

import GLib from 'gi://GLib';

export const new_ = () => GLib.MainLoop.new(null, false)
export const run = (loop) => () => loop.run()
export const quit = (loop) => () => loop.quit()
