module Main where

data Person = Person String Int
  deriving Show

brent :: Person
brent = Person "Brent" 31 


baz :: Person -> String
baz p@(Person n _ ) = "The name field of (" ++ show p ++ ") is " ++ n

main = print (baz brent)
