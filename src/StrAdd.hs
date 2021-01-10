module StrAdd where

import           Data.Char

isAllDigits :: String -> Bool
isAllDigits "" = False
isAllDigits xs = all ((== True) . isDigit) xs
