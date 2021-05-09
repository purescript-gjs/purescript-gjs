"use strict";

const PopupMenu = imports.ui.popupMenu;

exports.newItem = name => () =>
  new PopupMenu.PopupMenuItem(name);

exports.connectActivate = item => cb => () => item.connect("activate", cb)
