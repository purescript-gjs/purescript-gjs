"use strict";

exports.moveTo = (cr) => x => y => () => cr.moveTo(x, y)

exports.translate = (cr) => x => y => () => cr.translate(x, y)

exports.setSourceRGB = (cr) => r => g => b => () => cr.setSourceRGB(r, g, b)

exports.showText = (cr) => txt => () => cr.showText(txt)

exports.arc = (cr) => x => y => r => a1 => a2 => () => cr.arc(x, y, r, a1, a2)

exports.lineTo = (cr) => x => y => () => cr.lineTo(x, y)

exports.stroke = (cr) => () => cr.stroke()
