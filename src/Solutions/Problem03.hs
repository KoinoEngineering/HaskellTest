module Solutions.Problem03(elementAt) where
elementAt :: [a] -> Int -> a
elementAt [] _ = error "Out of Bounds"
elementAt (x:_) 1 = x
elementAt (x:tail) n = elementAt tail (n-1)