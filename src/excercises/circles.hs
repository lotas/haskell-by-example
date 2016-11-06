module Main where

type Point = (Double, Double)
type Radius = Double
type Circle = (Point, Radius)

-- Area of a circle 
areaCircle :: Radius -> Double
areaCircle x = pi * x * x

-- Test if two circles overlap
overlaps :: Circle -> Circle -> Bool
overlaps ((x1, y1), r1) ((x2, y2), r2) 
    | distance < maxRadius = True    -- check if biggest radius is larger than the distance between two Points
    | otherwise = False
    where 
        distance = sqrt( (x1 - x2) ** 2 + (y1 - y2) ** 2 )
        maxRadius = max r1 r2

-- Test if first circle contains the second one
contains :: Circle -> Circle -> Bool
contains ((x1, y1), r1) ((x2, y2), r2) 
    | r1 < r2 = False   -- smaller radius means cannot contain
    | distance + r2 <= r1 = True
    | otherwise = False
    where
        distance = sqrt( (x1 - x2) ** 2 + (y1 - y2) ** 2 )


distance :: Point -> Point -> Double
distance (x1, y1) (x2, y2) = sqrt( (x1 - x2) ** 2 + (y1 - y2) ** 2 )


main = do
    print (overlaps ((2.0,3.0), 4.0) ((7.0,8.0), 2.0))
    print (overlaps ((2.0,3.0), 4.0) ((2.0,3.0), 3.0))
    print (contains ((2.0,3.0), 4.0) ((2.0,3.0), 3.0))
    print (contains ((2.0,3.0), 1.0) ((2.0,3.0), 3.0))
    print (contains ((2.0,3.0), 10.0) ((5.0,6.0), 3.0))