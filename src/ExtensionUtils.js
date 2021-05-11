"use strict";

exports.getCurrentExtension = () => imports.misc.extensionUtils.getCurrentExtension()

exports.getPath = (ext) => name => () => ext.dir.get_child(name).get_path()
