module Gio.SettingsSchemaSource
  ( Instance, get_default, list_schemas
  ) where

import Effect (Effect)
import Data.Maybe (Maybe(..))
import Data.Tuple (Tuple(..))

foreign import data Instance :: Type

foreign import get_defaultImpl :: (forall x. x -> Maybe x) -> (forall x. Maybe x) -> Effect (Maybe Instance)

foreign import list_schemasImpl ::
  (forall x y. x -> y -> Tuple x y) -> Instance -> Boolean -> Effect (Tuple (Array String) (Array String))

get_default :: Effect (Maybe Instance)
get_default = get_defaultImpl Just Nothing

list_schemas :: Instance -> Boolean -> Effect (Tuple (Array String) (Array String))
list_schemas = list_schemasImpl Tuple
