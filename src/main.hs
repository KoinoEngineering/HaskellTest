module Main(
   module Solutions.Problem01,
   module Solutions.Problem02,
   module Solutions.Problem03,
   module Solutions.Problem04,
   module Solutions.Problem05,
) where

import Solutions.Problem01
import Solutions.Problem02
import Solutions.Problem03
import Solutions.Problem04
import Solutions.Problem05

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
        "",
        "----------------------------------------",
        "Problem04",
        "λ> myLength [123, 456, 789]",
        (show $ myLength [123, 456, 789]),
        "λ> myLength \"Hello, world!\"",
        (show $ myLength "Hello, world!"),
        "----------------------------------------",
        "Problem05",
        "λ> myReverse \"A man, a plan, a canal, panama!\"",
        (show $ myReverse "A man, a plan, a canal, panama!"),
        "λ> myReverse [1,2,3,4]",
        (show $ myReverse [1,2,3,4]),
        ""
        ]

-- fizz :: Int -> String
-- fizz n | n `mod` 15 == 0  = "FizzBuzz"
--        | n `mod` 3  == 0  = "Fizz"
--        | n `mod` 5  == 0  = "Buzz"
--        | otherwise = show n

-- main :: IO()
-- main = mapM_ putStrLn $ map fizz [1..100]