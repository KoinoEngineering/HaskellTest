module Main(
   module Solutions.Problem01,
   module Solutions.Problem02,
   module Solutions.Problem03,
) where

import Solutions.Problem01
import Solutions.Problem02
import Solutions.Problem03

main :: IO()
main = do
    mapM_ putStrLn [
        "Main Loaded",
        "",
        "----------------------------------------",
        "Problem01",
        "λ> myLast [1,2,3,4]",
        (show $ myLast [1,2,3,4]),
        "λ> myLast ['x','y','z']",
        (show $ myLast ['x','y','z']),
        "",
        "----------------------------------------",
        "Problem02",
        "λ> myButLast [1,2,3,4]",
        (show $ myButLast [1,2,3,4]),
        "λ> myButLast ['a'..'z']",
        (show $ myButLast ['a'..'z']),
        "",
        "----------------------------------------",
        "Problem03",
        "λ> elementAt [1,2,3] 2",
        (show $ elementAt [1,2,3] 2),
        "λ> elementAt \"haskell\" 5",
        (show $ elementAt "haskell" 5),
        ""
        ]

-- fizz :: Int -> String
-- fizz n | n `mod` 15 == 0  = "FizzBuzz"
--        | n `mod` 3  == 0  = "Fizz"
--        | n `mod` 5  == 0  = "Buzz"
--        | otherwise = show n

-- main :: IO()
-- main = mapM_ putStrLn $ map fizz [1..100]