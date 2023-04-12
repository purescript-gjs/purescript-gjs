"use strict";

imports.gi.versions.Gtk = "4.0";
const Gtk4 = imports.gi.Gtk;

export const init = () => Gtk4.init(null)

export const unsafe_show = (widget) => () => widget.show()

export const unsafe_hide = (widget) => () => widget.hide()

export const unsafe_set_size_request = widget => height => width => () => widget.set_size_request(height, width)

export const unsafe_queue_draw = widget => () => widget.queue_draw()
