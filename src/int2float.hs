module Main where

-- will throw Couldn't match expected type ‘Float’ with actual type ‘Int’
i2f :: Int -> Float
i2f a = a/1

-- i2f :: Int -> Float
-- i2f a = fromIntegral(a) / 1

main = print (i2f 1)