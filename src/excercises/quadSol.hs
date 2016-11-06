module Main where

-- ax^2 + bx + c = 0
quadSol :: Float -> Float -> Float -> [Float]
quadSol a b c 
  | a == 0 && b == 0 = []             {- if a=0,b=0 -> no solutions -}
  | a == 1 && b == 1 && c == 1 = []   {- if a=1,b=1,c=1 -> no non-complex solutions -}
  | a == 0  = [-c/b]                  {- if a=0 -> single solution x = -c/b -}
  | otherwise = [x1, x2]              {- or two  -}
  where
    p = b/a                           {- p = b/a -}
    q = c/a                           {- q = c/a -}
    x1 = (-p)/2 + sqrt((p/2)**2 - q)  {- fisrt solution  -}
    x2 = (-p)/2 - sqrt((p/2)**2 - q)  {- second solution  -}

main = do
    putStr "quadSol 3 4 5 = "
    print (quadSol 3.0 14.0  2.0 ) 
