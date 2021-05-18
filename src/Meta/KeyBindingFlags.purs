module Meta.KeyBindingFlags where

foreign import data KeyBindingFlags :: Type

foreign import none :: KeyBindingFlags
foreign import per_window :: KeyBindingFlags
foreign import builtin :: KeyBindingFlags
foreign import ignore_autorepeat :: KeyBindingFlags
