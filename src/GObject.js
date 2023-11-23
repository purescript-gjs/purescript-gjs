"use strict";

import GObject from 'gi://GObject';

export const unsafe_signal_connect_closure = obj => name => cb => () =>
  GObject.signal_connect_closure(obj, name, cb, true)

export const unsafe_run_dispose = obj => () => obj.run_dispose()

export const unsafe_connect = obj => signal => cb => () => obj.connect(signal, cb)

export const unsafe_disconnect = obj => handlerId => () => obj.disconnect(handlerId)
