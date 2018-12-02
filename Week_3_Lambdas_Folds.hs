-- Lambda operators allow us to define functions on the fly

lambdaAdd1 = map (\x -> x +1) [1..5]
-- \x kind of looks like lambda symbol
-- lambda calculus is a logical system invented in the 30s by Alonzo Church
-- lambda allows us to create a function without giving it a name

addAll :: (Num a) => [a] -> a
addAll [] = 0
addAll (x:xs) = x + addAll xs

multAll :: (Num a) => [a] -> a
multAll [] = 0
multAll (x:xs) = x * multAll xs

-- the above code is full of repeating elements
-- in functional programming, should try to use Higher-order functions

addAllFold = foldl (+) 0 [1..5]
-- same as ((0 + 1) + 2) + ..
multAllFold = foldl (*) 1 [1..5]
-- same as ((1 * 1) * 2) * ..

-- we use foldl to rewrite addAll
addAll' :: (Num a) => [a] -> a
addAll' = foldl (+) 0
-- as a partial function
multAll' :: (Num a) => [a] -> a
multAll' = foldl (*) 1

-- foldl is fold LEFT
-- foldr is fold RIGHT
-- the direction matters when in subtraction
subtractFoldL = foldl (-) 0 [1,2,3]
-- ((0 - 1) - 2) - 3
subtractFoldR = foldr (-) 0 [1,2,3]
-- 1 - (2 - (3 - 0))
