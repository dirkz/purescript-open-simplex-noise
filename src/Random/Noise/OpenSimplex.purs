--|Wrapper around [open simplex noise](https://www.npmjs.com/package/open-simplex-noise)
module Random.Noise.OpenSimplex (makeNoise2D) where

import Prelude
import Data.Function.Uncurried (Fn1, Fn2, runFn1, runFn2)

foreign import _makeNoise2D :: Fn1 Int (Fn2 Number Number Number)

--|Given an arbitrary seed number, returns a 2D noise function.
makeNoise2D ∷ Int → (Number → Number → Number)
makeNoise2D = runFn2 <<< runFn1 _makeNoise2D
