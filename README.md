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


## [Guards](src/guards.hs)
Guard (`|`) can be used as pattern matching to define function return values for some conditions
```
isTrianglePythagoras :: Int -> Int -> Int-> Bool
isTrianglePythagoras a b c 
   | (a >= b && a >= c) = (c^2 + b^2 == a^2)   {- when a is hypothenuse -}
   | (b >= a && b >= c) = (a^2 + c^2 == b^2)   {- when b is hypothenuse -}
   | otherwise = (a^2 + b^2 == c^2)            {- then c is hypothenuse -}

```


## Resources:

Great guide to start with: https://github.com/bitemyapp/learnhaskell



CIS 194 lectures: http://www.seas.upenn.edu/~cis194/spring13/lectures.html


Youtube
Haskel is for production: https://www.youtube.com/watch?v=mlTO510zO78
LambdaConf 2015 - How to Learn Haskell in Less Than 5 Years Chris Allen https://www.youtube.com/watch?v=Bg9ccYzMbxc