-- Generated by PureGirGen.hs
module GLib.Variant where

import Effect (Effect)
import Prelude (Unit)
import Data.Maybe (Maybe)

foreign import data Variant :: Type

-- | Creates a new boolean #GVariant instance -- either %TRUE or %FALSE.
-- Returns a floating reference to a new boolean #GVariant instance
foreign import new_boolean :: Boolean -> Effect Variant

-- | Creates a new byte #GVariant instance.
-- Returns a floating reference to a new byte #GVariant instance
foreign import new_byte :: Int -> Effect Variant

-- | Creates an array-of-bytes #GVariant with the contents of @string.
-- Returns a floating reference to a new bytestring #GVariant instance
foreign import new_bytestring :: Array Int -> Effect Variant

-- | Creates a new double #GVariant instance.
-- Returns a floating reference to a new double #GVariant instance
foreign import new_double :: Number -> Effect Variant

-- | Creates a new handle #GVariant instance.
-- Returns a floating reference to a new handle #GVariant instance
foreign import new_handle :: Int -> Effect Variant

-- | Creates a new int16 #GVariant instance.
-- Returns a floating reference to a new int16 #GVariant instance
foreign import new_int16 :: Int -> Effect Variant

-- | Creates a new int32 #GVariant instance.
-- Returns a floating reference to a new int32 #GVariant instance
foreign import new_int32 :: Int -> Effect Variant

-- | Creates a new int64 #GVariant instance.
-- Returns a floating reference to a new int64 #GVariant instance
foreign import new_int64 :: Int -> Effect Variant

-- | Creates a D-Bus object path #GVariant with the contents of @string.
-- Returns a floating reference to a new object path #GVariant instance
foreign import new_object_path :: String -> Effect Variant

-- | Creates a D-Bus type signature #GVariant with the contents of
-- Returns a floating reference to a new signature #GVariant instance
foreign import new_signature :: String -> Effect Variant

-- | Creates a string #GVariant with the contents of @string.
-- Returns a floating reference to a new string #GVariant instance
foreign import new_string :: String -> Effect Variant

-- | Creates a new uint16 #GVariant instance.
-- Returns a floating reference to a new uint16 #GVariant instance
foreign import new_uint16 :: Int -> Effect Variant

-- | Creates a new uint32 #GVariant instance.
-- Returns a floating reference to a new uint32 #GVariant instance
foreign import new_uint32 :: Int -> Effect Variant

-- | Creates a new uint64 #GVariant instance.
-- Returns a floating reference to a new uint64 #GVariant instance
foreign import new_uint64 :: Int -> Effect Variant

-- | Boxes @value.  The result is a #GVariant instance representing a
-- Returns a floating reference to a new variant #GVariant instance
foreign import new_variant :: Variant -> Effect Variant

-- | Performs a byteswapping operation on the contents of @value.  The
-- Returns the byteswapped form of @value
foreign import byteswap :: Variant -> Effect Variant

-- | Returns the boolean value of @value.
-- Returns %TRUE or %FALSE
foreign import get_boolean :: Variant -> Effect Boolean

-- | Returns the byte value of @value.
-- Returns a #guint8
foreign import get_byte :: Variant -> Effect Int

-- | Returns the string value of a #GVariant instance with an
-- Returns          the constant string
foreign import get_bytestring :: Variant -> Effect (Array Int)

-- | Returns the double precision floating point value of @value.
-- Returns a #gdouble
foreign import get_double :: Variant -> Effect Number

-- | Returns the 32-bit signed integer value of @value.
-- Returns a #gint32
foreign import get_handle :: Variant -> Effect Int

-- | Returns the 16-bit signed integer value of @value.
-- Returns a #gint16
foreign import get_int16 :: Variant -> Effect Int

-- | Returns the 32-bit signed integer value of @value.
-- Returns a #gint32
foreign import get_int32 :: Variant -> Effect Int

-- | Returns the 64-bit signed integer value of @value.
-- Returns a #gint64
foreign import get_int64 :: Variant -> Effect Int

-- | Given a maybe-typed #GVariant instance, extract its value.  If the
-- Returns the contents of @value, or %NULL
foreign import get_maybe :: Variant -> Effect (Maybe Variant)

-- | Gets a #GVariant instance that has the same value as @value and is
-- Returns a trusted #GVariant
foreign import get_normal_form :: Variant -> Effect Variant

-- | Determines the number of bytes that would be required to store @value
-- Returns the serialised size of @value
foreign import get_size :: Variant -> Effect Int

-- | Returns the type string of @value.  Unlike the result of calling
-- Returns the type string for the type of @value
foreign import get_type_string :: Variant -> Effect String

-- | Returns the 16-bit unsigned integer value of @value.
-- Returns a #guint16
foreign import get_uint16 :: Variant -> Effect Int

-- | Returns the 32-bit unsigned integer value of @value.
-- Returns a #guint32
foreign import get_uint32 :: Variant -> Effect Int

-- | Returns the 64-bit unsigned integer value of @value.
-- Returns a #guint64
foreign import get_uint64 :: Variant -> Effect Int

-- | Unboxes @value.  The result is the #GVariant instance that was
-- Returns the item contained in the variant
foreign import get_variant :: Variant -> Effect Variant

-- | Generates a hash value for a #GVariant instance.
-- Returns a hash value corresponding to @value
foreign import hash :: Variant -> Effect Int

-- | Checks if @value is a container.
-- Returns %TRUE if @value is a container
foreign import is_container :: Variant -> Effect Boolean

-- | Checks whether @value has a floating reference count.
-- Returns whether @value is floating
foreign import is_floating :: Variant -> Effect Boolean

-- | Checks if @value is in normal form.
-- Returns %TRUE if @value is in normal form
foreign import is_normal_form :: Variant -> Effect Boolean

-- | Determines the number of children in a container #GVariant instance.
-- Returns the number of children in the container
foreign import n_children :: Variant -> Effect Int

-- | Increases the reference count of @value.
-- Returns the same @value
foreign import ref :: Variant -> Effect Variant

-- | #GVariant uses a floating reference count system.  All functions with
-- Returns the same @value
foreign import ref_sink :: Variant -> Effect Variant

-- | If @value is floating, sink it.  Otherwise, do nothing.
-- Returns the same @value
foreign import take_ref :: Variant -> Effect Variant

-- | Decreases the reference count of @value.  When its reference count
foreign import unref :: Variant -> Effect Unit

-- | Determines if a given string is a valid D-Bus object path.  You
-- Returns %TRUE if @string is a D-Bus object path
foreign import is_object_path :: String -> Effect Boolean

-- | Determines if a given string is a valid D-Bus type signature.  You
-- Returns %TRUE if @string is a D-Bus type signature
foreign import is_signature :: String -> Effect Boolean

foreign import get_child_value :: Variant -> Int -> Effect Variant
