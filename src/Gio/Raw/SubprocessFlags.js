"use strict";

import Gio from 'gi://Gio';
const SubprocessFlags = Gio.SubprocessFlags;

export const none = SubprocessFlags.NONE
export const stdin_pipe = SubprocessFlags.STDIN_PIPE
export const stdout_pipe = SubprocessFlags.STDOUT_PIPE
