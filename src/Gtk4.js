"use strict";

imports.gi.versions.Gtk = "4.0";
const Gtk4 = imports.gi.Gtk;

exports.init = () => Gtk4.init()

exports.unsafe_show = (widget) => () => widget.show()

exports.unsafe_hide = (widget) => () => widget.hide()

exports.unsafe_set_size_request = widget => height => width => () => widget.set_size_request(height, width)

exports.unsafe_queue_draw = widget => () => widget.queue_draw()
