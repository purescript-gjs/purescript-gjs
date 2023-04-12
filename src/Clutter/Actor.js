"use strict";

export const unsafe_add_child = actor => child => () => actor.add_child(child)
export const unsafe_set_position = actor => x => y => () => actor.set_position(x, y)
export const unsafe_set_size = actor => x => y => () => actor.set_size(x, y)
export const unsafe_set_reactive = actor => b => () => actor.set_reactive(b)
export const unsafe_destroy = actor => () => actor.destroy()
export const unsafe_show = actor => () => actor.show()
export const unsafe_hide = actor => () => actor.hide()
export const unsafe_onButtonPressEvent = actor => cb => () =>
  actor.connect("button-press-event", (actor, event) => cb(actor)(event)())
export const unsafe_onButtonReleaseEvent = actor => cb => () =>
  actor.connect("button-release-event", (actor, event) => cb(actor)(event)())
export const unsafe_onKeyPressEvent = actor => cb => () =>
  actor.connect("key-press-event", (actor, event) => cb(actor)(event)())
export const unsafe_onKeyReleaseEvent = actor => cb => () =>
  actor.connect("key-release-event", (actor, event) => cb(actor)(event)())
export const unsafe_set_layout_manager = actor => lm => () => actor.set_layout_manager(lm)
export const unsafe_set_y_align = actor => a => () => actor.set_y_align(a)
export const unsafe_set_x_align = actor => a => () => actor.set_x_align(a)
