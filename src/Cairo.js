"use strict";

exports.translate = (cr) => x => y => () => cr.translate(x, y)

exports.arc = (cr) => x => y => r => a1 => a2 => () => cr.arc(x, y, r, a1, a2)

exports.lineTo = (cr) => x => y => () => cr.lineTo(x, y)

exports.stroke = (cr) => () => cr.stroke()
