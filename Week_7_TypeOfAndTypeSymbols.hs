-- :: is read as "has type of"
-- (True, 'a') has a type of (Bool, Char)
-- unlike lists, each tuple length has its own type
-- :t ('a', "listen")
-- ('a', "listen") :: (Char, [Char])

-- it is good practice to give functions EXPLICIT type declaration
keepUppercase :: [Char] -> [Char]
-- keepUppercase has a ypte of [Char] -> [Char], meaning:
-- it maps from a string to a string
keepUppercase st = [i | i<- st, i `elem` ['A'..'Z']]

-- the return type is the last item in the declaration
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

-- IMPT --
-- everything before => is called a class constraint

-- Eq typeclass
-- The Eq typeclass test for equality.
-- Any type where it makes sense to test for equality between two values of that type should be a member of the Eq class.
-- All standard Haskell types except for IO and functions are a part of the Eq typeclass.
5 == 5 -- True
5 /= 5 -- False
(==) 1 1 -- True
-- :t ==
-- == :: (Eq a) => a -> a -> Bool
(elem) 1 [1,2,3] - True
-- :t elem
-- elem :: (Eq a) => a -> [a] -> Bool

-- Ord typeclass
-- (>) :: (Ord a) => a -> a -> Bool
"Abra" < "Zebra" -- True
"Abra" `compare` "Zebra" -- LT (less than)
-- :t (compare)
-- (compare) :: Ord a => a -> a -> Ordering

-- Show typeclass
-- :t show
-- show :: (Show a) => a -> String

-- Read typeclass
-- :t read
-- read :: (Read a) => String -> a

-- Enum typeclass
-- :t succ
-- succ :: Enum a => a -> a
-- Enum are sequentially ordered types, like succ, pred, (), Bool, Char, Ordering, Int, Float ...
-- Bounded typeclass
-- upper and lower bound

-- Num typeclass
-- :t 20
-- 20 :: (Num t) => t
-- 20 :: Int
-- 20 :: Integer
-- 20 :: Float
-- 20 :: Double
-- :t (*)
-- (*) :: (Num a) => a -> a -> a
(5 :: Int) * (9 :: Int) -- this is ok!

-- Integral typeclass
-- Integral only has Int and Integer
-- Floating typeclass
-- Floating only has Float and Double

-- fromIntegral :: (Num b, Integral a) => a -> b
