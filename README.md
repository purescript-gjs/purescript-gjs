purescript-gjs
==============

GNOME JavaScript bindings for PureScript.

Use this library to write GJS programs.

Project using purescript-gjs:

- [purescript-gnome-shell][purescript-gnome-shell], a library to write gnome-shell extension.
- [autochill][autochill], a gnome extension to help you chill by setting up breath time.
- [gnome-mumble-push-to-talk][gnome-mumble-push-to-talk], a gnome extension to enable Mumble push to talk.

# Usage

Checkout the examples in the [./test/](./test/) directory.

## Gio.Async

The library provides high level functions using the `Aff` type to escape callback hell.
For example, to read a file, a raw gio usage looks like this:

```purescript
import Gio.Raw.File as File
import GJS (log)

printFile :: String -> Effect Unit
printFile path = do
  file <- File.new_for_path path
  File.load_contents_async file Nothing $ \obj res -> do
    content <- File.load_contents_finish obj res
    log content
```

Instead, the higher level `Gio.File` module provides a convenient `readFile` function:

```purescript
import Gio.File as File

printFile :: String -> Effect Unit
printFile path = launchAff_ $ do
  content <- File.readFile path
  liftEffect $ log content
```

> The GJS does not provides a native `setTimeout` function which is required by `Aff` to handle errors.
> Use the `Gio.Async.init` function to install compatibility functions.

This blog post is a good read to learn more about `Aff`: [Asynchronous PureScript](https://blog.drewolson.org/asynchronous-purescript).

Checkout the [Test.Gio](./test/Gio.purs) example for a parallel async demo.

# Contribute

Contributions are most welcome.

The project needs help to complete the APIs bindings:

- add missing binding manually, or checkout the work in progress [codgen](./codegen/).
- add higher level functions (e.g. in `Gio.File` or `Gio.Subprocess`) by following existing conventions (such as [Data.Text.IO][data-text-io] or [SimpleCmd][simplecmd]).

You will need a [PureScript][purescript] toolchain and the gnome developper tool.

Run test, for example:

```ShellSession
$ make test
$ make test-gtk4
```

If you experience any difficulties, please don't hesistate to raise an issue.

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

# Changes

## 0.1

- Initial release.

[purescript]: https://www.purescript.org/
[purescript-gnome-shell]: https://github.com/purescript-gjs/purescript-gnome-shell
[autochill]: https://github.com/TristanCacqueray/autochill
[gnome-mumble-push-to-talk]: https://github.com/TristanCacqueray/gnome-mumble-push-to-talk
[data-text-io]: http://hackage.haskell.org/package/text-1.2.4.1/docs/Data-Text-IO.html
[simplecmd]: http://hackage.haskell.org/package/simple-cmd-0.2.3/docs/SimpleCmd.html
