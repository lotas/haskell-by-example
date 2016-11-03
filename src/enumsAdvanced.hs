module Main where

data ResponseCode = Ok Int
              | Error Int
    deriving Show


okResponse :: ResponseCode
okResponse = Ok 200

serverError :: ResponseCode
serverError = Error 500

okResponses :: [ResponseCode]
okResponses = [Ok 200, Ok 201, Ok 204]

redirectResponses :: [ResponseCode]
redirectResponses = [Error 301, Error 303]


checkAuth :: Bool -> ResponseCode
checkAuth True = Ok 200
checkAuth False = Error 401


getStatusCode :: ResponseCode -> Int
getStatusCode (Error d) = d
getStatusCode (Ok d) = d



data Person = Person String Int
  deriving Show

brent :: Person
brent = Person "Brent" 31 

stan :: Person
stan  = Person "Stan" 94 

getAge :: Person -> Int
getAge (Person _ a ) = a



main = print (checkAuth True)
