"use strict";

export const argv = ARGV
export const log = msg => () => log(msg)
export const print = msg => () => print(msg)
export const printerr = msg => () => printerr(msg)
export const logError = e => msg => () => logError(e, msg)
