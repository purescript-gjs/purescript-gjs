"use strict";

exports.unsafe_get_key_code = event => () => event.get_key_code()
exports.unsafe_get_key_symbol = event => () => event.get_key_symbol()
exports.unsafe_get_time = event => () => event.get_time()
exports.unsafe_has_shift_modifier = event => () => event.has_shift_modifier()
