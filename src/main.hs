module Main(
   module Solutions.Problem01
) where

import Solutions.Problem01

main :: IO()
main = do
    mapM_ putStrLn [
        "Main Loaded",
        "",
        "Problem01",
        "λ> myLast [1,2,3,4]",
        (show $ myLast [1..10]),
        "λ> myLast ['x','y','z']",
        (show $ myLast ['x','y','z'])
        ]

-- fizz :: Int -> String
-- fizz n | n `mod` 15 == 0  = "FizzBuzz"
--        | n `mod` 3  == 0  = "Fizz"
--        | n `mod` 5  == 0  = "Buzz"
--        | otherwise = show n

-- main :: IO()
-- main = mapM_ putStrLn $ map fizz [1..100]