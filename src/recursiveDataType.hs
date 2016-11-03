module Main where

-- data IntList = Empty | Cons Int IntList

-- intListProd :: IntList -> Int
-- intListProd Empty = 1
-- intListProd (Cons x 1) = x * intListProd 1


data Tree = Leaf Char
        | Node Tree Int Tree
   deriving Show
   

tree :: Tree
tree = Node (Leaf 'x') 1 (Node (Leaf 'y') 2 (Leaf 'z'))  

-- output all char from leaf nodes
outputTree :: Tree -> [Char]
outputTree (Leaf c) = [c]
outputTree (Node x d y) = (outputTree x) ++ (outputTree y)

-- output all using case
outputTreeCase :: Tree -> [Char]
outputTreeCase x = case x of
            (Leaf c)     -> [c]
            (Node x d y) ->  (outputTreeCase x) ++ (outputTreeCase y)



main = print (outputTree tree)
