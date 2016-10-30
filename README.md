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



## Resources:

Great guide to start with: https://github.com/bitemyapp/learnhaskell



CIS 194 lectures: http://www.seas.upenn.edu/~cis194/spring13/lectures.html


Youtube
Haskel is for production: https://www.youtube.com/watch?v=mlTO510zO78
LambdaConf 2015 - How to Learn Haskell in Less Than 5 Years Chris Allen https://www.youtube.com/watch?v=Bg9ccYzMbxc