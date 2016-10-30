# Haskell by example

Here is the list and progress of my findings in attempt to learn Haskell


## How to run simple [hello world](src/hello-world.hs)

You can compile and run the executable using `ghc` compiler: 

```
$ ghc src/hello-world.hs
$ ./src/hello-world
Hello World
```

Or you can load the file inside `ghci` interpreter and use something that was defined there

```
$ ghci
Prelude> -- :load filename or :l filename
Prelude> :l src/hello-world.hs
[1 of 1] Compiling Main             ( src/hello-world.hs, interpreted )
Ok, modules loaded: Main.
*Main> printHello -- call a function form the file we loaded
Hello World
```

## What should the file with program contain

```
module Main where

main = entryPointHere
```


# Functions

## Declaration and invocation

In `ghci` simply:
```
Prelude> fn x = x + x
Prelude> x 3
6
```

To declare the type of the arguments and result:
```
fn :: Int -> Int                 -- function expects 1st argument of type Int and returns Int

fnToList :: Int -> Int -> [Int]  -- will accept 2 arguments and return list of ints

isDigit :: Char -> Bool          -- will accept Char and return boolean
```


## Guards
Guard (`|`) can be used as pattern matching to define function return values for some conditions
```
squareRoots :: Int -> Int -> Int -> [Int]   {- ax^2 + bx + c = 0 -}
squareRoots a b c 
  | a == 0 && b == 0 = []             {- if a=0,b=0 -> no solutions -}
  | a == 1 && b == 1 && c == 1 = []   {- if a=1,b=1,c=1 -> no non-complex solutions -}
  | a == 0  = [-c/b]                  {- if a=0 -> one solution x = -c/b -}
  | otherwise = [x1, x2]              {- two solutions -}
  where
    p = b/a                           {- p = b/a -}
    q = c/a                           {- q = c/a -}
    x1 = (-p)/2 + sqrt((p/2)**2 - q)  {- 1st root -}
    x2 = (-p)/2 - sqrt((p/2)**2 - q)  {- 2nd root -}
```


## Resources:

Great guide to start with: https://github.com/bitemyapp/learnhaskell



CIS 194 lectures: http://www.seas.upenn.edu/~cis194/spring13/lectures.html


Youtube
Haskel is for production: https://www.youtube.com/watch?v=mlTO510zO78
LambdaConf 2015 - How to Learn Haskell in Less Than 5 Years Chris Allen https://www.youtube.com/watch?v=Bg9ccYzMbxc