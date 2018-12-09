-- CIS 194 Homework 1 based on Lecture 1

{- Exercise 1:
 - credit providers rely on a checksum formula for distinguishing valid numbers
 -}

-- the validation algorithm for credit cards
toDigits :: Integer -> [Integer]
toDigits n
  | n <= 0     = []
  | otherwise  = toDigits (n `div` 10) ++ [n `mod` 10]

toDigitsRev :: Integer -> [Integer]
toDigitsRev n = reverse (toDigits n)

{- Exercise 2
 - double every other digit from the right
 - second to last, fourth to last ...
 -}

doubleFromLeft :: [Integer] -> [Integer]
doubleFromLeft [] = []
doubleFromLeft (x:[]) = [x]
doubleFromLeft (x:y:zs) = x : y*2 : doubleFromLeft zs

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther n
  | length n <= 1     = n
  | otherwise         = reverse (doubleFromLeft (reverse n))

{- Exercise 3
 - the output of doubleEveryOther has a mix of one-digit and two-digit numbers
 -}

singleAllDigits :: [Integer] -> [Integer]
singleAllDigits [] = []
singleAllDigits (x:xs) = (toDigits x) ++ (singleAllDigits xs)

sumEachItem :: [Integer] -> Integer
sumEachItem [] = 0
sumEachItem (x:[]) = x
sumEachItem (x:xs) = x + sumEachItem xs

sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits x =  sumEachItem (singleAllDigits x)

{- Exercise 4
 - validate if the credit card number is valid
 - by adding all the digits of the doubleEveryOther and see if the sum is 10 multiple
 -}

validate :: Integer -> Bool
validate n
  | sumDigits (doubleEveryOther (toDigits n)) `mod` 10 == 0    = True
  | otherwise                                       = False
{-
 - *Main> validate 4012888888881881
 - True
 - *Main> validate 4012888888881882
 - False
 -}

{- Exercise 5
 - Tower of Hanoi
 - only move one disk at a time
 - a larger disk may never be stacked on top of a smaller one
 -}

type Peg = Char
type Move = (Peg, Peg)
hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi 2 'a' 'b' 'c' = [('a','c'), ('a','b'), ('c','b')]
