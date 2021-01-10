module StrAdd
    ( isAllDigits
    , strAddInts
    , displayResult
    ) where

import           Data.Char

isAllDigits :: String -> Bool
isAllDigits "" = False
isAllDigits xs = all ((== True) . isDigit) xs

strAddInts :: String -> String -> Either String Int
strAddInts a b
    | isAllDigits a && isAllDigits b       = Right (read a + read b)
    | not (isAllDigits a || isAllDigits b) = Left "both args are wrong"
    | not (isAllDigits a)                  = Left "first arg is wrong"
    | otherwise                            = Left "second arg is wrong"

displayResult :: Either String Int -> String
displayResult (Left  addError) = "error: " ++ show addError
displayResult (Right res     ) = "answer: " ++ show res
