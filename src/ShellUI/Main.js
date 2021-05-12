"use strict";

let Main;
try { Main = imports.ui.main; } catch(_) {}

exports.notify = msg => details => () => Main.notify(msg, details)
