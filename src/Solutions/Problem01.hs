module Solutions.Problem01(problem01) where
problem01 :: [a] -> a
problem01 [] = error "Empty list"
problem01 [x] = x
problem01 (_:tail) = problem01 tail