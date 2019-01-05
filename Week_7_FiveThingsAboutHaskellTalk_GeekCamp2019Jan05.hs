import Data.Char (toUpper)

-- #1 and #2 single param and currying
myFunc :: Num a => a -> a -> a
myFunc a b = a + b

-- #3 Pattern Matching
isItTwo :: Integer -> Bool
isItTwo 2 = True
isItTwo _ = False

upperCase (x:xs) = toUpper x : upperCase xs
-- must have a case for the program to terminate
upperCase     [] = []

-- #4 Tail recursion
upperCase str = convert str where
        convert (x:xs) = toUpper x : convert xs
        convert     [] = []
-- #5 Function Composition
(f . g)x = f(g x)
map(\x -> negate(abs x)) [5,-3,-6,24]
-- the syntax is much cleaner if you do it in composition
map(negate . abs) [5,-3,-6,24]
