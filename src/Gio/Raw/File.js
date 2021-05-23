"use strict";

const File = imports.gi.Gio.File;
const ByteArray = imports.byteArray;

exports.new_for_path = path => () => File.new_for_path(path);

exports.load_contents_async_impl = file => cancellable => cb => () =>
  file.load_contents_async(cancellable, (obj, result) =>
      cb(obj)(result)()
  )

exports.load_contents_finish_impl = mkTuple => file => res => () => {
    let [ok, contents, etag_out] = file.load_contents_finish(res);
    return mkTuple(ok)(contents)(etag_out)
}

exports.contentsToString = arr => ByteArray.toString(arr)
