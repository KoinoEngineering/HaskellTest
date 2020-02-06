module Solutions.Problem01(myLast) where
myLast :: [a] -> a
myLast [] = error "Empty list"
myLast [x] = x
myLast (_:tail) = myLast tail
