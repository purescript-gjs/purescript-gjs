"use strict";

const Main = imports.ui.main;

exports.addToStatusArea = role => indicator => () => Main.panel.addToStatusArea(role, indicator)
