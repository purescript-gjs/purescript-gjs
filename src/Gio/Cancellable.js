"use strict";

import Gio from 'gi://Gio';

export const new_ = () => Gio.Cancellable.new()
export const cancel = cancellable => () => cancellable.cancel()
