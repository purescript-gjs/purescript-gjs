purescript-gjs
==============

GNOME JavaScript bindings for PureScript.

Use this library to write GJS programs and extensions with purescript.

Project using purescript-gjs:

- [autochill][autochill], a gnome extension to help you chill by setting up breath time.
- [gnome-mumble-push-to-talk][gnome-mumble-push-to-talk], a gnome extension to enable Mumble push to talk.

# Contribute

Contributions are most welcome.

You will need a [PureScript][purescript] toolchain and the gnome developper tool.

Run test, for example:

```ShellSession
$ make test
$ make test-gtk4
```

Add binding by hand, or checkout the work in progress [codgen](./codegen/)

# References

Here are a collection of pointers to navigate the GNOME ecosystem.

## GJS

GJS provides bindings to the GNOME ecosystem.

- https://gjs.guide
- https://gjs-docs.gnome.org/

> Use the `gjs` command instead of `node`

## GObject

GObject is the base upon which most of the GNOME platform is built.

- Guide: https://gjs.guide/guides/gobject/basics.html
- GJS Reference: https://gjs-docs.gnome.org/#q=gobject

- GObject.Object: https://gjs-docs.gnome.org/gobject20~2.66p/gobject.object

## GLib

GLib is a general-purpose utility library.

- Reference: https://developer.gnome.org/glib/stable/
- GJS Reference: https://gjs-docs.gnome.org/#q=glib

- MainLoop: https://gjs-docs.gnome.org/glib20~2.66.1/glib.mainloop
- Variant format string: https://developer.gnome.org/glib/stable/gvariant-format-strings.html

## Gio

GNOME input/output library:

- Guide: https://gjs.guide/guides/gio/file-operations.html
- GJS Reference: https://gjs-docs.gnome.org/#q=gio

- DBus: https://gjs-docs.gnome.org/gio20~2.66p/gio.dbusconnection
- Settings: https://gjs-docs.gnome.org/gio20~2.66p/gio.settings

## DBus

D-Bus is a message bus for sending messages between various applications.

- Guide: https://www.andyholmes.ca/articles/dbus-in-gjs.html
- Reference: https://developer.gnome.org/platform-overview/unstable/tech-d-bus.html.en

- Example: [./test/DBus.purs](DBus.purs)

## Cairo

Cairo is a 2D graphics library.

- GJS Reference: https://gjs-docs.gnome.org/#q=cairo

## Gtk

GTK is a library for creating graphical user interfaces.

- Reference: https://developer.gnome.org/gtk4/4.0/
- GJS Reference: https://gjs-docs.gnome.org/#q=gtk40
- Migration from gtk3 to gtk4: https://developer.gnome.org/gtk4/4.0/gtk-migrating-3-to-4.html

- Example: [./test/Gtk4.purs](Gtk4.purs)

## Clutter

Clutter is an free and open source software library for creating portable, dynamic, compelling and fast graphical user interfaces.

- Homepage: https://wiki.gnome.org/Projects/Clutter
- Guide: https://developer.gnome.org/clutter-cookbook/stable/
- GJS Reference: https://gjs-docs.gnome.org/#q=clutter

> Clutter widgets are called Actors.

## St

CSS and Gtk-like additions for Clutter.

- Reference: https://developer.gnome.org/st/stable/
- GJS Reference: https://gjs-docs.gnome.org/#q=st
- Helpfull diagram: https://gjs.guide/extensions/overview/architecture.html#overview

## GNOME Shell

- GJS Reference: https://gjs-docs.gnome.org/#q=shell
- UI library: https://gitlab.gnome.org/GNOME/gnome-shell/blob/master/js/ui/

> Shell provides a global object: https://gjs-docs.gnome.org/#q=Shell.Global

## Gnome Shell Extension

- Guide: https://gjs.guide/extensions/development/creating.html
- Doc: https://wiki.gnome.org/Projects/GnomeShell/Extensions

> Extension UI is built with Clutter and St. However preferences widget is built with Gtk4.

Other usefull guides:

- https://gitlab.com/justperfection.channel/how-to-create-a-gnome-shell-extension
- https://www.codeproject.com/Articles/5271677/How-to-Create-A-GNOME-Extension

# Changes

## 0.1

- Initial release.

[purescript]: https://www.purescript.org/
[autochill]: https://github.com/TristanCacqueray/autochill
[gnome-mumble-push-to-talk]: https://github.com/TristanCacqueray/gnome-mumble-push-to-talk
