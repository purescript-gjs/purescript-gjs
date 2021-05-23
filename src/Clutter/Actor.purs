module Clutter.Actor where

import Prelude (Unit)
import Effect (Effect)
import Clutter.ButtonEvent (ButtonEvent)
import Clutter.KeyEvent (KeyEvent)
import Clutter.LayoutManager (class LayoutManager)
import Clutter.ActorAlign (ActorAlign)
import GObject (HandlerID)

class Actor :: forall k. k -> Constraint
class Actor a

foreign import unsafe_add_child :: forall parent child. parent -> child -> Effect Unit

add_child :: forall parent child. Actor parent => Actor child => parent -> child -> Effect Unit
add_child = unsafe_add_child

foreign import unsafe_set_position :: forall actor. actor -> Number -> Number -> Effect Unit

set_position :: forall actor. Actor actor => actor -> Number -> Number -> Effect Unit
set_position = unsafe_set_position

foreign import unsafe_set_size :: forall actor. actor -> Number -> Number -> Effect Unit

set_size :: forall actor. Actor actor => actor -> Number -> Number -> Effect Unit
set_size = unsafe_set_size

foreign import unsafe_set_reactive :: forall actor. actor -> Boolean -> Effect Unit

set_reactive :: forall actor. Actor actor => actor -> Boolean -> Effect Unit
set_reactive = unsafe_set_reactive

foreign import unsafe_destroy :: forall actor. actor -> Effect Unit

destroy :: forall actor. Actor actor => actor -> Effect Unit
destroy = unsafe_destroy

foreign import unsafe_show :: forall actor. actor -> Effect Unit

show :: forall actor. Actor actor => actor -> Effect Unit
show = unsafe_show

foreign import unsafe_hide :: forall actor. actor -> Effect Unit

hide :: forall actor. Actor actor => actor -> Effect Unit
hide = unsafe_hide

type ButtonEventCallback = forall actor. Actor actor => actor -> ButtonEvent -> Effect Boolean

foreign import unsafe_onButtonPressEvent :: forall actor cb. actor -> cb -> Effect HandlerID

onButtonPressEvent :: forall actor. Actor actor => actor -> (actor -> ButtonEvent -> Effect Boolean) -> Effect HandlerID
onButtonPressEvent = unsafe_onButtonPressEvent

foreign import unsafe_onButtonReleaseEvent :: forall actor cb. actor -> cb -> Effect HandlerID

onButtonReleaseEvent :: forall actor. Actor actor => actor -> (actor -> ButtonEvent -> Effect Boolean) -> Effect HandlerID
onButtonReleaseEvent = unsafe_onButtonReleaseEvent

foreign import unsafe_onKeyPressEvent :: forall actor cb. actor -> cb -> Effect HandlerID

onKeyPressEvent :: forall actor. Actor actor => actor -> (actor -> KeyEvent -> Effect Boolean) -> Effect HandlerID
onKeyPressEvent = unsafe_onKeyPressEvent

foreign import unsafe_onKeyReleaseEvent :: forall actor cb. actor -> cb -> Effect HandlerID

onKeyReleaseEvent :: forall actor. Actor actor => actor -> (actor -> KeyEvent -> Effect Boolean) -> Effect HandlerID
onKeyReleaseEvent = unsafe_onKeyReleaseEvent

foreign import unsafe_set_layout_manager :: forall actor lm. actor -> lm -> Effect Unit

set_layout_manager :: forall actor lm. Actor actor => LayoutManager lm => actor -> lm -> Effect Unit
set_layout_manager = unsafe_set_layout_manager

foreign import unsafe_set_y_align :: forall actor. actor -> ActorAlign -> Effect Unit

set_y_align :: forall actor. Actor actor => actor -> ActorAlign -> Effect Unit
set_y_align = unsafe_set_y_align

foreign import unsafe_set_x_align :: forall actor. actor -> ActorAlign -> Effect Unit

set_x_align :: forall actor. Actor actor => actor -> ActorAlign -> Effect Unit
set_x_align = unsafe_set_x_align
