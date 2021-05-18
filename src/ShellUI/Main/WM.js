"use strict";

let Main;
try { Main = imports.ui.main; } catch (_) {}

exports.addKeybinding = name => settings => flags => modes => handler => () =>
  Main.wm.addKeybinding(name, settings, flags, modes, handler)
exports.removeKeybinding = name => () => Main.wm.removeKeybinding(name)
