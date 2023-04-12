"use strict";

export const get_text = (eb) => () => eb.get_text()
export const set_text = (eb) => txt => () => eb.set_text(txt, txt.length)
