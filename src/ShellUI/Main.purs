-- https://github.com/GNOME/gnome-shell/blob/master/js/ui/main.js
module ShellUI.Main where

import Prelude (Unit)
import Effect (Effect)

foreign import notify :: String -> String -> Effect Unit
