--Notes with Paul-ZQ Jan 19th @NUS-ALSET:

-- variable is bound not assigned
x = 10
-- not allowed
-- x = 11

-- In Haskell, because we work with expression,
-- an if that does not have else branch will not evaluate to a value if the predicate is False.

-- Haskell must provide an evaluated result for all branches
ifFunc x = if (x>10) then "Big number" else "Small number"
-- ifFunc 11 -> "Big number"

-- Haskell is lazy,
firstThree = take 3 [1,2..] -- will be [1,2,3]

-- : operator takes in an item and return -> a function that takes in a list and -> return a list.
{-
 - *Main> :t (:)
 - (:) :: a -> [a] -> [a]
 - *Main> (:) 1 [1]
 - [1,1]
 -}

-- Pattern matching involving () and [].
-- Since :'s second input is a list type,
-- so (x:xs) actually means some x concats to a list xs.
someFunc :: [Char] -> Char
someFunc [] = '1'
someFunc (x:[]) = x
someFunc (x:xs) = head xs
-- someFunc "dettol" -> 'e'
