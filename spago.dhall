{ name = "gjs"
, dependencies =
  [ "effect"
  , "exceptions"
  , "maybe"
  , "lists"
  , "arrays"
  , "foldable-traversable"
  , "psci-support"
  , "integers"
  , "nullable"
  , "either"
  , "prelude"
  , "tuples"
  ]
, packages =
    https://github.com/purescript/package-sets/releases/download/psc-0.14.1-20210516/packages.dhall sha256:f5e978371d4cdc4b916add9011021509c8d869f4c3f6d0d2694c0e03a85046c8
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
