"use strict";

exports.log = msg => () => log(msg)
exports.print = msg => () => print(msg)
exports.printerr = msg => () => printerr(msg)
exports.logError = e => msg => () => logError(e, msg)
