module Solutions.Problem01(problem01) where
main :: [a] -> a
main [] = error "Empty list"
main [x] = x
main (_:tail) = main tail

problem01 :: IO()
problem01 = putStrLn ("problem01 [1..10] -> " ++ (show $ main [1..10]))