"use strict";

const Gio = imports.gi.Gio;

exports.new_from_directory = path => trusted => () => Gio.SettingsSchemaSource.new_from_directory(path, null, trusted)

exports.lookup = s => name => recursive => () => s.lookup(name, recursive)

exports.get_defaultImpl = just => nothing => () => {
    const res = Gio.SettingsSchemaSource.get_default();
    if (res) {
        return just(res);
    } else {
        return nothing;
    }
}

exports.list_schemasImpl = tuple => s => recurse => () => {
    const schemas = s.list_schemas(true);
    return tuple(schemas[0])(schemas[1])
};
