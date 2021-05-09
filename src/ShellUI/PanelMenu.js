"use strict";

const PanelMenu = imports.ui.panelMenu;

exports.newButton = (alignment) => (name) => (dontCreateMenu) => () =>
  new PanelMenu.Button(alignment, name, dontCreateMenu);

exports.addMenuItem = button => item => () => button.menu.addMenuItem(item)
