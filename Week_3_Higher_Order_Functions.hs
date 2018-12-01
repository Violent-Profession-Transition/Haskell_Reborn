add1 :: Int -> Int
add1 x = x + 1

-- we can accept and return other functions
-- languages where functions are values that can be passed around like this
-- are said to have first-class functions
--
-- Here is a funciton that takes in a function as argument
f :: (Int -> Int) -> Int
f x = 3 -- f ignores x's argument and always returns 3

-- Here is a function that returns a function
g :: Int -> (Int -> Int)
g x = add1

-- map is a higher-order function
j = map add1 [1,2,3,4,5,6]
-- equivalent function is:
add1ToEach :: [Int] -> [Int]
add1ToEach [] = []
add1ToEach (x:xs)= add1 x : add1ToEach xs

h :: Int -> (Int -> Int)
h x y = x + y
-- let hmm = h 3
-- hmm 5 -> 8
-- hmm 10 -> 13

max3orSth = map (max 3) [1,1,2,3,6]

-- all haskell functions are taking in one argument and return one value
-- this sum3 function's type can be rewritten as:
sum3 :: Int -> (Int -> (Int -> Int))
sum3 x y z = x + y + z
reallySum3 = ((sum3 1) 2) 3
-- haskell allows us to leave out the implied paratheses in both the
-- 1. Type signiture
-- 2. function application
--
-- Functions that are broken down like this:
-- (sum3 3) 4) 5
-- are said to be "curried", named after Haskell Curry
-- In Haskell, all functions are automatically curried
--
-- we can supply either of the two arguments for infix
div10 = map (10/) [1..5]
tenDiv = map (/10) [1..5]

-- Strictly speaking, map can written like this:
map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs
-- functions can take multiple arguments, just remember that
-- we COULD partially apply them if we really wanted to

-- zipWith is a higher-order function that applys a function to two lists
zippedSum = zipWith (+) [1,2,3,4,5] [6,7,8,9,1]
zippedProduct = zipWith (*) [1,2,3,4,5] [6,7,8,9,1]

-- flip
from :: Int -> Int -> Int
from = flip (-)
minus3 = 3 `from` 8

-- filter
bigger5 = filter (>5) [1..10]

--takeWhile
smaller5 = takeWhile (<5) [1,3..]
