import StrAdd


main :: IO ()
main = do
    putStrLn ""
    putStrLn $ if isAllDigits "123" then "OK" else "FAIL"
    putStrLn $ if not $ isAllDigits "4st" then "OK" else "FAIL"
    putStrLn $ if not $ isAllDigits "123_4" then "OK" else "FAIL"
    return ()
