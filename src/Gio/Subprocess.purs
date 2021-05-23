module Gio.Subprocess (module Subprocess, cmd) where

import Prelude
import Effect.Class (liftEffect)
import Data.Maybe (Maybe(..))
import Data.Tuple.Nested ((/\))
import Effect.Aff (Aff, makeAff)
import Data.Either (Either(..))
import Effect.Exception (error)

import Gio.Raw.Subprocess as Subprocess
import Gio.Raw.SubprocessFlags as SubprocessFlags

-- | 'cmd' runs a command and returns stdout
cmd :: Array String -> Aff String
cmd argv = makeAff runEffect
  where
    runEffect done = do
      proc <- liftEffect $ Subprocess.new argv SubprocessFlags.stdout_pipe
      liftEffect $ Subprocess.communicate_utf8_async proc Nothing Nothing cb
      pure mempty
      where
        cb obj res = do
          ok /\ stdout /\ _stderr <- Subprocess.communicate_utf8_finish obj res
          if ok
             then done (Right stdout)
             else done (Left (error "Oops"))
