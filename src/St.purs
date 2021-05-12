module St where

import Prelude (Unit)
import Effect (Effect)

class Widget :: forall k. k -> Constraint
class Widget a

foreign import unsafe_add_style_class_name :: forall widget. widget -> String -> Effect Unit

add_style_class_name :: forall a. Widget a => a -> String -> Effect Unit
add_style_class_name = unsafe_add_style_class_name

foreign import unsafe_remove_style_class_name :: forall widget. widget -> String -> Effect Unit

remove_style_class_name :: forall a. Widget a => a -> String -> Effect Unit
remove_style_class_name = unsafe_remove_style_class_name
