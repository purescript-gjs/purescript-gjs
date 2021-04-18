"use strict";

const Gio = imports.gi.Gio;

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
