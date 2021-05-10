module Gio.SettingsSchemaSource where

import Effect (Effect)
import Data.Maybe (Maybe(..))
import Data.Tuple (Tuple(..))
import Gio.SettingsSchema (SettingsSchema)

foreign import data SettingsSchemaSource :: Type

foreign import new_from_directory :: String -> Boolean -> Effect SettingsSchemaSource

foreign import lookup :: SettingsSchemaSource -> String -> Boolean -> Effect SettingsSchema

foreign import get_defaultImpl :: (forall x. x -> Maybe x) -> (forall x. Maybe x) -> Effect (Maybe SettingsSchemaSource)

foreign import list_schemasImpl ::
  (forall x y. x -> y -> Tuple x y) -> SettingsSchemaSource -> Boolean -> Effect (Tuple (Array String) (Array String))

get_default :: Effect (Maybe SettingsSchemaSource)
get_default = get_defaultImpl Just Nothing

list_schemas :: SettingsSchemaSource -> Boolean -> Effect (Tuple (Array String) (Array String))
list_schemas = list_schemasImpl Tuple
