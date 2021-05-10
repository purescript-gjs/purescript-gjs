"use strict";

const ExtensionUtils = imports.misc.extensionUtils;

exports.getCurrentExtension = () => ExtensionUtils.getCurrentExtension()

exports.getPath = (ext) => name => () => ext.dir.get_child(name).get_path()
