"use strict";

exports.unsafe_add_child = actor => child => () => actor.add_child(child)
exports.unsafe_destroy = actor => () => actor.destroy()
