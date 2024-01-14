module GLib.MainLoop where

import Prelude

import Effect (Effect)
import Effect.Aff (Aff, launchAff, launchAff_)
import Effect.Class (liftEffect)
import Gio.Async as Async

foreign import data Loop :: Type

foreign import new_ :: Effect Loop

new :: Effect Loop
new = new_

foreign import run :: Loop -> Effect Unit

foreign import quit :: Loop -> Effect Unit

-- | Helper to run the batch glib loop
withLoop :: Aff Unit -> Effect Unit
withLoop act = do
  Async.init
  loop <- new
  launchAff_ do
    -- TODO: check how to catch exceptions...
    act
    liftEffect $ quit loop
  run loop
