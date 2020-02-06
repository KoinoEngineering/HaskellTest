module Solutions.Problem02(myButLast) where
myButLast :: [a] -> a
myButLast [] = error "Empty list"
myButLast [x] = error "Single item list"
myButLast (x:tail) = 
        if length tail == 1 then x
        else myButLast tail