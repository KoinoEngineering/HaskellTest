module Main(
   module Solutions.Problem01
) where

import Solutions.Problem01

main :: IO()
main = do
    putStrLn "Main Loaded"
    putStrLn ""
    putStrLn "Problem01"
    putStrLn "λ> myLast [1,2,3,4]"
    putStrLn (show $ myLast [1..10])
    putStrLn "λ> myLast ['x','y','z']"
    putStrLn (show $ myLast ['x','y','z'])

-- fizz :: Int -> String
-- fizz n | n `mod` 15 == 0  = "FizzBuzz"
--        | n `mod` 3  == 0  = "Fizz"
--        | n `mod` 5  == 0  = "Buzz"
--        | otherwise = show n

-- main :: IO()
-- main = mapM_ putStrLn $ map fizz [1..100]