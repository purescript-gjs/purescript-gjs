"use strict";

import Gio from 'gi://Gio';
const File = Gio.File;

const ByteArray = imports.byteArray;

export const new_for_path = path => () => File.new_for_path(path);

export const load_contents_impl = file => cancellable => () => {
    let [ok, contents, etag_out] = file.load_contents(cancellable);
    const decoder = new TextDecoder('utf-8');
    const contentsString = decoder.decode(contents);
    return contentsString;
}

export const load_contents_async_impl = file => cancellable => cb => () =>
  file.load_contents_async(cancellable, (obj, result) =>
      cb(obj)(result)()
  )

export const load_contents_finish_impl = mkTuple => file => res => () => {
    let [ok, contents, etag_out] = file.load_contents_finish(res);
    return mkTuple(ok)(contents)(etag_out)
}

export const contentsToString = arr => ByteArray.toString(arr)
