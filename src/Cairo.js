"use strict";

export const moveTo = (cr) => x => y => () => cr.moveTo(x, y)

export const translate = (cr) => x => y => () => cr.translate(x, y)

export const setSourceRGB = (cr) => r => g => b => () => cr.setSourceRGB(r, g, b)

export const showText = (cr) => txt => () => cr.showText(txt)

export const arc = (cr) => x => y => r => a1 => a2 => () => cr.arc(x, y, r, a1, a2)

export const lineTo = (cr) => x => y => () => cr.lineTo(x, y)

export const stroke = (cr) => () => cr.stroke()
