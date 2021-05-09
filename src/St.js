"use strict";

const St = imports.gi.St;
const Gio = imports.gi.Gio;

exports.newIcon = name => styleClass => () =>
  new St.Icon({
      gicon: new Gio.ThemedIcon({name: name}),
      style_class: styleClass
  })

exports.newLabel = text => () =>
  new St.Label({text: text})

exports.destroy = widget => () => widget.destroy()

exports.addChild = parent => child => () => parent.add_child(child)
