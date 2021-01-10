module StrAdd where

import Data.Char

isAllDigits :: String -> Bool
isAllDigits val = all (== True)
    $ map (\x -> x `elem` ['0'..'9']) val
