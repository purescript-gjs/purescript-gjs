"use strict";

import Gtk4 from 'gi://Gtk?version=4.0';

export const init = () => Gtk4.init(null)

export const unsafe_show = (widget) => () => widget.show()

export const unsafe_hide = (widget) => () => widget.hide()

export const unsafe_set_size_request = widget => height => width => () => widget.set_size_request(height, width)

export const unsafe_queue_draw = widget => () => widget.queue_draw()
