{- The meaning of Haskell programs is centered around evaluating expressions rather than executing instructions. -}

{- In Haskell one can always “replace equals by equals”, just like you learned in algebra class. -}

{- Taking similar pieces of code and factoring out their commonality is known as the process of abstraction. -}

{- Wholemeal programming and "indexitis", not worry about the low-level details of iterating over an array by keeping track of a current index. -}

x :: Int
x = 3

{- In Haskell, variables are not mutable boxes; = does not denote “assignment” x = 4 should not be read as “x gets 4” or “assign 4 to x”, but as “x is defined to be 4”. -}

-- Machine-sized integers
i :: Int
i = -78

-- you can find the range of the machine-sized integers for your architecture by:
biggestInt, smallestInt :: Int
biggestInt = maxBound
smallestInt = minBound
{-
*Main> biggestInt 
9223372036854775807
*Main> smallestInt 
-9223372036854775808
-}

-- Arbitrary-precision integers
-- The Integer type, on the other hand, is limited only by the amount of memory on your machine.
n :: Integer
n = 1234512345123451234512345123451234512345123451234512345
numDigist :: Int
numDigist = length (show n) --55

{- Haskell also has if-expressions.
 - if-expression is DIFFERENT from if-statement
 - if-statement's else part can be optional, omitted else clause means "if the test evaluates to False then do nothing"
 - with if-expression, else part is required, since if-expression must result in some value -}

{- Idiomatic Haskell does not use if expressions very much, often using pattern-matching or guards instead -}

-- Functions by cases
-- Compute the sum of integers from 1 to n
sumtorial :: Integer -> Integer
-- a function which takes an Integer as input and yields another Integer as output.
sumtorial 0 = 0
sumtorial n = n + sumtorial (n-1)

-- Choices can also be made based on arbitrary Boolean expressions using guards.
hailStone :: Integer -> Integer
hailStone n
  | n `mod` 2 == 0 = n `div` 2
  | otherwise      = 3*n + 1
{- Any number of guards can be associated with each clause of a function definition, each of which is a Boolean expression. If the clause’s patterns match, the guards are evaluated in order from top to bottom, and the first one which evaluates to True is chosen. If none of the guards evaluate to True, matching continues with the next clause. -}

foo :: Integer -> Integer
foo 0 = 16
foo 1
  | "Haskell" > "C++"   = 3
  | otherwise           = 4
foo n
  | n < 0               = 0
  | n `mod` 17 ==2      = -43
  | otherwise           = n + 3

-- Pairs
p :: (Int, Char)
p = (3, 'a')

sumPair :: (Int,Int) -> Int
sumPair (x,y) = x + y

-- multiple argument just separate by space
f :: Int -> Int -> Int -> Int
f x y z = x + y + z
ex17 = f 3 17 8

-- function application has higher precedence than any infix operators
someN :: Int
someN = 2
nPlus1 = f 3 (someN+1) 7 --13

{- Strings are just lists of characters. That is, String is just an abbreviation for [Char] -}

-- hello1 and hello2 are exactly the same
hello1 :: [Char]
hello1 = ['h', 'i', '!']

hello2 :: String
hello2 = "hi!"

helloSame = hello1 == hello2 --True

-- Generate the sequence of hailStone iterations from a starting number
hailStoneSeq :: Integer -> [Integer]
hailStoneSeq 1 = [1]
hailStoneSeq n = n : hailStoneSeq (hailStone n)

-- Pattern Matching
intListLength :: [Integer] -> Integer
intListLength []      = 0
intListLength (_:xs)  = 1 + intListLength xs
-- the second clause says if the input list looks like (_:xs), a first element consed onto a remaining list xs

sumEveryTwo :: [Integer] -> [Integer]
sumEveryTwo []         = []
sumEveryTwo (x:[])     = [x] -- list with just single element [x]
sumEveryTwo (x:(y:zs)) = (x + y) : sumEveryTwo zs
-- sumEveryTwo [1,2,3,4,5,6,7]
-- [3,7,11,7]
