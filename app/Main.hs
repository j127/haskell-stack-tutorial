module Main where

import           StrAdd

main :: IO ()
main = do
    putStrLn "enter first argument"
    a <- getLine
    putStrLn "enter second argument"
    b <- getLine

    let result = strAddInts a b

    putStrLn (displayResult result)
