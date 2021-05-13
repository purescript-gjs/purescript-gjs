module St where

import Prelude (Unit)
import Effect (Effect)
import Data.Nullable (Nullable, toNullable)
import Data.Maybe (Maybe)

class Widget :: forall k. k -> Constraint
class Widget a

foreign import unsafe_add_style_class_name :: forall widget. widget -> String -> Effect Unit

add_style_class_name :: forall a. Widget a => a -> String -> Effect Unit
add_style_class_name = unsafe_add_style_class_name

foreign import unsafe_remove_style_class_name :: forall widget. widget -> String -> Effect Unit

remove_style_class_name :: forall a. Widget a => a -> String -> Effect Unit
remove_style_class_name = unsafe_remove_style_class_name

foreign import unsafe_set_style :: forall widget. widget -> Nullable String -> Effect Unit

set_style :: forall a. Widget a => a -> Maybe String -> Effect Unit
set_style widget styleM = unsafe_set_style widget (toNullable styleM)
