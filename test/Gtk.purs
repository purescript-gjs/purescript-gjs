module Test.Gtk where

import Prelude

import Cairo as Cairo
import Data.List as L
import Data.Tuple (Tuple(..))
import Data.Traversable (traverse_)
import Effect (Effect)
import GJS as GJS
import Gtk as Gtk
import Gtk.Box as Box
import Gtk.Button as Button
import Gtk.DrawingArea as DrawingArea
import Gtk.Label as Label
import Gtk.Widget as Widget
import Gtk.Window as Window
import Data.Int (toNumber)

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
      let xn = x / 10.0
          yn = xn * xn
          y = yn * 200.0
       in Cairo.lineTo cr x yn

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

  drawing <- DrawingArea.new
  DrawingArea.connectDraw drawing onDraw
  Widget.set_size_request drawing 200 200

  box <- Box.new
  Box.pack_start box label true true 0
  Box.pack_start box button true true 0
  Box.pack_start box drawing true true 0

  Window.add win box

  Window.show_all win
  Gtk.main
