{ name = "gir"
, dependencies =
  [ "console"
  , "effect"
  , "exceptions"
  , "maybe"
  , "lists"
  , "foldable-traversable"
  , "psci-support"
  , "integers"
  ]
, packages =
    https://github.com/purescript/package-sets/releases/download/psc-0.14.0-20210405/packages.dhall sha256:6686e4f0e4a95bdea867ecb65123d838850ab8006033f1161cd5f1f26161dccd
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
