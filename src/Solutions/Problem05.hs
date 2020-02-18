module Solutions.Problem05(myReverse) where
    myReverse :: [a] -> [a]
    myReverse [] =  []
    myReverse (head:tail) = (myReverse tail) ++ [head]