module Main where

{- is triangle pythagoras ? -}
isTrianglePythagoras :: Int -> Int -> Int-> Bool
isTrianglePythagoras a b c 
   | (a >= b && a >= c) = (c^2 + b^2 == a^2)   {- when a is hypothenuse -}
   | (b >= a && b >= c) = (a^2 + c^2 == b^2)   {- when b is hypothenuse -}
   | otherwise = (a^2 + b^2 == c^2)            {- then c is hypothenuse -}



main =
  print (isTrianglePythagoras 3 4 5)