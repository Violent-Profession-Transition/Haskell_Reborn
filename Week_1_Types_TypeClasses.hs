-- Int
-- Num is typeclass
-- Num contains Int, Integer, Double, Float

-- :t or :type to find out the type of a value
-- :t 'a' Char
-- :t "hellow" [Char] (list of chars)
-- :t 3 Num a => a
-- 3 :: Int (3)
-- 3 :: Double (3.0)
-- :t head [a] -> a
-- :t (+) since + is infix, must surround with ()
-- :t zip


f :: [Int] -> Int
f ls = head ls + length ls
-- if we do not specify the type, haskell will be lazy and assume it is Int
-- but we can specify the function type

dividesEvenly :: Int -> Int -> Bool
dividesEvenly x y = (y `div` x)*x == y

