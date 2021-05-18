module Shell.ActionMode where

foreign import data ActionMode :: Type

foreign import normal :: ActionMode
foreign import overview :: ActionMode
foreign import lock_screen :: ActionMode
foreign import all :: ActionMode
