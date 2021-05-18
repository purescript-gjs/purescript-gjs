"use strict";

exports.unsafe_add_child = actor => child => () => actor.add_child(child)
exports.unsafe_set_position = actor => x => y => () => actor.set_position(x, y)
exports.unsafe_set_size = actor => x => y => () => actor.set_size(x, y)
exports.unsafe_set_reactive = actor => b => () => actor.set_reactive(b)
exports.unsafe_destroy = actor => () => actor.destroy()
exports.unsafe_show = actor => () => actor.show()
exports.unsafe_hide = actor => () => actor.hide()
exports.unsafe_onButtonPressEvent = actor => cb => () =>
  actor.connect("button-press-event", (actor, event) => cb(actor)(event)())
exports.unsafe_onButtonReleaseEvent = actor => cb => () =>
  actor.connect("button-release-event", (actor, event) => cb(actor)(event)())
exports.unsafe_onKeyPressEvent = actor => cb => () =>
  actor.connect("key-press-event", (actor, event) => cb(actor)(event)())
exports.unsafe_onKeyReleaseEvent = actor => cb => () =>
  actor.connect("key-release-event", (actor, event) => cb(actor)(event)())
exports.unsafe_set_layout_manager = actor => lm => () => actor.set_layout_manager(lm)
