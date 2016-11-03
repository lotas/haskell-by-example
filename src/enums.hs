module Main where

data Projects = F1man
            | Loliful
            | Mutiful
            | Uelco
    deriving Show


eyaSpaceProject :: Projects
eyaSpaceProject = Uelco


isAndroidProject :: Projects -> Bool
isAndroidProject Mutiful = True
isAndroidProject _ = False


main = print (isAndroidProject eyaSpaceProject)