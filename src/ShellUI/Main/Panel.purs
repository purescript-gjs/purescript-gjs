module ShellUI.Main.Panel where

import Prelude (Unit)
import Effect (Effect)
import ShellUI.PanelMenu as ShellUI.PanelMenu
import St as St

foreign import addToStatusArea :: String -> St.Widget ShellUI.PanelMenu.Button -> Effect Unit
