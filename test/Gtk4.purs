module Test.Gtk4 where

import Prelude
import Cairo as Cairo
import Data.Int (toNumber)
import Data.List as L
import Data.Traversable (traverse_)
import Effect (Effect)
import GJS as GJS
import GLib.MainLoop as GLib.MainLoop
import GObject as GObject
import Gtk4 as Gtk4
import Gtk4.Application as Application
import Gtk4.DrawingArea as DrawingArea
import Gtk4.Box as Box
import Gtk4.Button as Button
import Gtk4.Scale as Scale
import Gtk4.Label as Label
import Gtk4.Orientation as Orientation
import Gtk4.Window as Window

onClick :: Effect Unit
onClick = GJS.log "Clicked!"

onDraw :: Cairo.Context -> Effect Unit
onDraw cr = do
  GJS.log "Drawing!"
  -- Cairo.arc cr 100.0 100.0 80.0 0.0 3.14
  traverse_ segment (toNumber <$> L.range 0 200)
  Cairo.stroke cr
  where
  segment :: Number -> Effect Unit
  segment x =
    let
      xn = x / 10.0

      yn = xn * xn

      y = yn * 200.0
    in
      Cairo.lineTo cr x yn

mkWidget :: Effect Box.Box
mkWidget = do
  label <- Label.new "A label"
  scale <- Scale.new_with_range Orientation.horizontal 20.0 120.0 5.0
  Scale.set_draw_value scale true
  -- TODO: investigate bug happening when using a format value func:
  --   `Attempting to run a JS callback during garbage collection`
  -- Scale.set_format_value_func scale (\n -> show n <> " min")
  button <- Button.new_with_label "Click me!"
  _ <- GObject.signal_connect_closure button "clicked" onClick
  da <- DrawingArea.new
  DrawingArea.set_draw_func da onDraw
  Gtk4.set_size_request da 200 200
  box <- Box.new Orientation.vertical 5.0
  Box.append box label
  Box.append box scale
  Box.append box button
  Box.append box da
  pure box

main :: Effect Unit
main = do
  -- Gtk.init
  loop <- GLib.MainLoop.new
  app <- Application.new "test.gtk4"
  GJS.log "starting app"
  _ <- GObject.signal_connect_closure app "activate" (activate loop)
  Application.run app
  GJS.log "looping"
  GLib.MainLoop.run loop
  GJS.log "Done."
  where
  destroy loop = do
    GJS.log "destroying"
    GLib.MainLoop.quit loop

  activate loop = do
    GJS.log "activating"
    win <- Window.new
    Window.set_title win "Test GTK4"
    _ <- GObject.signal_connect_closure win "close-request" (destroy loop)
    box <- mkWidget
    Window.set_child win box
    Gtk4.show win
