-- comments
{- Multi-line comments
 - Haskell has no for, while loops and techincally variables
 -}

import Data.List
import System.IO

-- Int -2^63 2^63
maxInt = maxBound :: Int
minInt = minBound :: Int

-- Integer, more commonly used, unbounded integer
-- as big as your memory can hold

-- Float single-precision
-- Double 11-decimal place precision
bigFloat = 3.999999999999 + 0.000000000005
-- 12-decimal point will lead to 4.0000000000039995

-- Bool True Flase
-- Char '
-- Tuple

-- always5 :: Int

sumOfNums = sum [1..1000]

-- prefix
modEx = mod 5 4
-- infix
modEx2 = 12 `mod` 9

num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9)

{-
 - Haskell has tons of Math functions
 -}

-- Built in math functions
piVal = pi
e = exp 1
logOfe = log (e**100)
power9 = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999

tan45 = atan 1
sin30 = asin 0.5

-- :t sth is very useful for checking the type
-- :t truncate

-- list is VERY VERY IMPORTANT in haskell
primeNumbers = [3,5,7,11]

morePrime = primeNumbers ++ [13,17]

favNums = 2:morePrime

revPrime = reverse favNums

isListEmpty = null revPrime

sndPrime = favNums !! 1

-- first is head, last is last, everything except last is init
primeExceptLast = init favNums

is7InList = 7 `elem` favNums
is12InList = 12 `elem` favNums

many2s = take 10 (repeat 2)
many3s = replicate 5 3

cycleList = take 10 (cycle [1,2,5])

-- sort is from Data.List
sortedList = sort [9,9,8,7,1,2]

-- zipWith
sumOfLists = zipWith (+) [1..100] [100,99..1]

--filter
listBiggerThen5 = filter (>5) [1..10]

-- takeWhile
evensUpto20 = takeWhile (<=20) [n | n <- [1..], not (odd n)]

-- foldl fold Left
foldLeft = foldl (+) 23 [1..10]
foldLeft' = foldl (-) 23 [1..10]
foldLeft'' = foldl (*) 23 [1..10]
foldLeft''' = foldl (/) 23 [1..10]
-- foldr fold Right

-- zip from two lists to form tuples
names = ["Bob", "Kate", "Wilhem"]
addresses = ["123 Main", "234 North", "567 South"]

nameAddress = zip names addresses

-- do can chain a series of commands
promptGreet = do
    putStrLn "What is your name?"
    inputName <- getLine
    putStrLn ("Hello, " ++ inputName)

-- type declaration x :: type
addMe :: Int -> Int -> Int
-- funcName param1 param2 = operations (returned value)
addMe x y = x + y
-- any function without params are called definitions or names

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (i, j) (m, n) = (i+m, j+n)

whatAge :: Int -> String
whatAge 16 = "You can drive"
whatAge 18 = "you can vote"
whatAge 21 = "you are an adult"
-- _ is wildcard
whatAge _ = "Nothing Important"
