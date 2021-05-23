"use strict";

const Subprocess = imports.gi.Gio.Subprocess;

exports.new = argv => flags => () => Subprocess.new(argv, flags)

exports.communicate_utf8_async_impl = proc => stdin => cancellable => cb => () =>
  proc.communicate_utf8_async(stdin, cancellable, (obj, result) =>
      cb(obj)(result)()
  )

exports.communicate_utf8_finish_impl = mkTuple => proc => res => () => {
    let [ok, stdout, stderr] = proc.communicate_utf8_finish(res);
    return mkTuple(ok)(stdout)(stderr)
}
