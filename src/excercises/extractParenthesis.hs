module Main where

-- list of all chars we need to filter
parenthesis = ['(', ')', '[', ']', '{', '}']

-- remove all non parenthesis
extractParenthesis :: String -> String
extractParenthesis [] = []  -- if string is empty return empty
extractParenthesis (x:xs)   -- splits incoming string into first char (x) and rest (xs)
    | elem x parenthesis = x : extractParenthesis xs    -- if x is one of the parenthesis, then return it + the rest of the string recursively
    | otherwise = extractParenthesis xs                 -- just continue with the rest of the string

    
main = do
    print (extractParenthesis "[(2+5)*a-(xy), {text}]")
