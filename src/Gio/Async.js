"use strict";

// Copied from https://gist.github.com/andyholmes/582c29facbdbe67048c831a6370173eb
const GLib = imports.gi.GLib;

exports.init = () => {
  window.setInterval = function (func, delay, ...args) {
    return GLib.timeout_add(GLib.PRIORITY_DEFAULT, delay, () => {
      func(...args);
      return GLib.SOURCE_CONTINUE;
    });
  };
  window.clearInterval = GLib.source_remove;

  window.setTimeout = function (func, delay, ...args) {
    return GLib.timeout_add(GLib.PRIORITY_DEFAULT, delay, () => {
      func(...args);
      return GLib.SOURCE_REMOVE;
    });
  };
  window.clearTimeout = GLib.source_remove;
};
