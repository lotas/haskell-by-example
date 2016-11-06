module Main where

-- Max distance between two elements
maxNeighborsDistance :: [Int] -> Int
maxNeighborsDistance [] = 0             -- if empty passed return 0
maxNeighborsDistance [x] = 0            -- if only one element return 0
maxNeighborsDistance (x:xs) = max a b   -- return max from first difference and other
    where
        a = abs(x - head xs)            -- first difference is absolute (x element - first of the rest) or abs(x1 - x2)
        b = maxNeighborsDistance xs     -- this is the recursive max for the rest of the elements 


main = do
    print (maxNeighborsDistance [2, 3, 1, 6, 5, 7, 0, 3])
