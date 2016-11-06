module Main where


-- pi^2 / 6 
euler_pi :: Int -> Double
euler_pi x = sqrt (6 * (rowSum x))

-- recursive sum of row
-- 1/n^2
rowSum :: Int -> Double
rowSum 1 = 1
rowSum x = (1 / (fromIntegral x^2) + rowSum (x-1))


-- how many items in row we need to calculate first 4 numbers
howManyElements :: Int -> Int
howManyElements i
    | (euler_pi (i+1)) - (euler_pi (i)) < 0.0001 = i    -- when the delta between next and prev is smaller than .0001, means we have the first 4 digets
    | otherwise = howManyElements (i+1)                 -- calculate next ones

howManyElements 1  -- will calculate recursively until wished delta is reached

main = do
    print (euler_pi 10)
