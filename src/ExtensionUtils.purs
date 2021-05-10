module ExtensionUtils where

import Effect (Effect)

foreign import data Extension :: Type

foreign import getCurrentExtension :: Effect Extension

foreign import getPath :: Extension -> String -> Effect String
