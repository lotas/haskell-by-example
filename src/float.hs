module Main where

intToFloat :: Int -> Float
intToFloat a = fromIntegral(a) / 250 
  
main = print (intToFloat 3)