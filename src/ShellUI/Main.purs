-- https://github.com/GNOME/gnome-shell/blob/master/js/ui/main.js
module ShellUI.Main where

import Prelude (Unit)
import Effect (Effect)
import Clutter.Actor (class Actor)

foreign import notify :: String -> String -> Effect Unit

foreign import unsafe_addChrome :: forall actor. actor -> Effect Unit

addChrome :: forall actor. Actor actor => actor -> Effect Unit
addChrome = unsafe_addChrome

foreign import unsafe_addTopChrome :: forall actor. actor -> Effect Unit

addTopChrome :: forall actor. Actor actor => actor -> Effect Unit
addTopChrome = unsafe_addTopChrome

foreign import unsafe_removeChrome :: forall actor. actor -> Effect Unit

removeChrome :: forall actor. Actor actor => actor -> Effect Unit
removeChrome = unsafe_removeChrome
