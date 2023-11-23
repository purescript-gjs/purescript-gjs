"use strict";

import Gio from 'gi://Gio';
const Subprocess = Gio.Subprocess;

export const new_ = argv => flags => () => Subprocess.new(argv, flags)

export const communicate_utf8_async_impl = proc => stdin => cancellable => cb => () =>
  proc.communicate_utf8_async(stdin, cancellable, (obj, result) =>
      cb(obj)(result)()
  )

export const communicate_utf8_finish_impl = mkTuple => proc => res => () => {
    let [ok, stdout, stderr] = proc.communicate_utf8_finish(res);
    return mkTuple(ok)(stdout)(stderr)
}
