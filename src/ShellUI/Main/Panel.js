"use strict";

let Main;
try { Main = imports.ui.main; } catch (_) {}

exports.addToStatusArea = role => indicator => () => Main.panel.addToStatusArea(role, indicator)
