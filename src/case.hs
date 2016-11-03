module Main where

value = case "Hello" of
        []        -> 3
        ('H':s)   -> length s
        _         -> 7

main = print (value)
