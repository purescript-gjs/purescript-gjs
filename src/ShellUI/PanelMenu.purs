module ShellUI.PanelMenu where

import Effect (Effect)
import Prelude (Unit)
import ShellUI.PopupMenu (PopupMenuItem)
import St as St

foreign import data Button :: Type

foreign import newButton :: Number -> String -> Boolean -> Effect (St.Widget Button)

foreign import addMenuItem :: St.Widget Button -> St.Widget PopupMenuItem -> Effect Unit
