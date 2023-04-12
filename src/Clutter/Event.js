"use strict";

export const unsafe_get_key_code = event => () => event.get_key_code()
export const unsafe_get_key_symbol = event => () => event.get_key_symbol()
export const unsafe_get_time = event => () => event.get_time()
export const unsafe_has_shift_modifier = event => () => event.has_shift_modifier()
