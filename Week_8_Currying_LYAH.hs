-- functions seem to take multiple parameters are actually taking a single parameter and returning a partially applied funciton.
--
-- :t max
-- max :: (Ord a) => a -> a -> a
-- max :: (Ord a) => a -> (a -> a)
-- if we call a function with too few parameters, we get back
-- partially applied function

-- multThree :: Int -> Int -> Int -> Int
-- can also be written as
multThree :: Int -> (Int -> (Int -> Int))
multThree a b c = a*b*c
-- (((multThree a) b) c)

compareWith100 :: Int -> Ordering
compareWith100 x = compare 100 x
-- compareWith100 100 -- EQ
-- compareWith100 = compare 100
-- :t compare
-- compare :: (Ord a) => a -> (a -> Ordering)
-- compare 100 will return a function!

-- (-4) cannot be a sections
minusFour :: (Num a) => a -> a
minusFour = (subtract 4)
demoMinusFour = minusFour 100 -- 96

-- (a -> a) indicates a function
applyTwice :: (a -> a) -> a -> a
applyTwice func x = func (func x)
applyTwice (+3) 10 -- 16
applyTwice (++ "back") "front" --"frontbackback"

flip' :: (a -> b -> c) -> b -> a -> c
flip' func y x = func x y
flip' zip [1,2,3,4,5] "HELLO"
-- [('H',1),('E',2),('L',3),('L',4),('O',5)]

flip' (zipWith (div)) [2,2..] [10,8..2] -- [5,4,3,2,1]
