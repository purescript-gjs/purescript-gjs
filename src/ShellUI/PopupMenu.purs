module ShellUI.PopupMenu where

import Prelude (Unit)
import Effect (Effect)
import St as St

foreign import data PopupMenuItem :: Type

foreign import newItem ::  String -> Effect (St.Widget PopupMenuItem)

foreign import connectActivate :: St.Widget PopupMenuItem -> Effect Unit -> Effect Unit
