"use strict";

export const argv = ARGV
export const log = msg => () => console.log(msg)
export const trace = msg => () => console.trace(msg)
export const warn = msg => () => console.warn(msg)
