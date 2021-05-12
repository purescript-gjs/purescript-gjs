"use strict";

let PopupMenu;
try { PopupMenu = imports.ui.popupMenu; } catch(_) {}

exports.newItem = name => () =>
  new PopupMenu.PopupMenuItem(name);

exports.connectActivate = item => cb => () => item.connect("activate", cb)
