"use strict";

const Main = imports.ui.main;

exports.notify = msg => details => () => Main.notify(msg, details)
