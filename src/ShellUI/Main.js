"use strict";

let Main;
try { Main = imports.ui.main; } catch(_) {}

exports.notify = msg => details => () => Main.notify(msg, details)

const defaultParams = {
};

exports.unsafe_addChrome = actor => () => Main.layoutManager.addChrome(actor, defaultParams);
exports.unsafe_addTopChrome = actor => () => Main.layoutManager.addTopChrome(actor, defaultParams);
exports.unsafe_removeChrome = actor => () => Main.layoutManager.removeChrome(actor);
