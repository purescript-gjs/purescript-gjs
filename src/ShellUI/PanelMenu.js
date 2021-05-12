"use strict";

let PanelMenu;
try { PanelMenu = imports.ui.panelMenu; } catch (_) {}

exports.newButton = (alignment) => (name) => (dontCreateMenu) => () =>
  new PanelMenu.Button(alignment, name, dontCreateMenu);

exports.addMenuItem = button => item => () => button.menu.addMenuItem(item)
