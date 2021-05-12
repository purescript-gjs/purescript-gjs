module ShellUI.Main.Panel where

import Prelude (Unit)
import Effect (Effect)
import ShellUI.PanelMenu as ShellUI.PanelMenu

foreign import addToStatusArea :: String -> ShellUI.PanelMenu.Button -> Effect Unit
