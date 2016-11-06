module Main where

-- interval from, to of a list
averageBetween :: Double -> Double -> [Double] -> Double
averageBetween from to list = filteredSum / fromIntegral filteredCount
    where
      filtered = [ x | x <- list, x >= from && x <= to ] -- create new list with only numbers in interval [from, to]
      filteredSum = sum filtered        -- sum of filtered items
      filteredCount = length filtered   -- total number of elements in filtered list



main = do
    print (averageBetween 2 5 [2.0, 3.0, 5.0, 1.0, 0.0, 1.0])
