"use strict";

exports.get_text = (eb) => () => eb.get_text()
exports.set_text = (eb) => txt => () => eb.set_text(txt, txt.length)
