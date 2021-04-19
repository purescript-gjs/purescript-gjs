module Test.Gtk where

import Prelude
import Effect (Effect)
import GJS as GJS
import Gtk as Gtk
import Gtk.Button as Button
import Gtk.Box as Box
import Gtk.Label as Label
import Gtk.Window as Window

onClick :: Effect Unit
onClick = GJS.log "Clicked!"

main :: Effect Unit
main = do
  Gtk.init

  win <- Window.new
  Window.connectDelete win Gtk.main_quit

  button <- Button.new
  Button.set_label button "Click me!"
  Button.connectClicked button onClick

  label <- Label.new
  Label.set_label label "A label"

  box <- Box.new
  Box.pack_start box label true true 0
  Box.pack_start box button true true 0

  Window.add win box

  Window.show_all win
  Gtk.main
