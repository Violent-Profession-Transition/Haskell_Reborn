-- Recursive Function
-- Base cases
-- Recursive cases

-- Customized version based on built-in functions
length' :: [a] -> Int
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

product' :: (Num a) => [a] -> a
product' [] = 0
product' (x:xs) = x * product' xs

maximum' :: (Ord a) => [a] -> a
-- error -> display error message in console
maximum' [] = error "cannot operate on empty list"
maximum' [x] = x
maximum' (x:xs)
         | x > mx    = x
         | otherwise = mx
         where mx = maximum' xs

-- an tic-tac-toe game
-- The empty board
emptyBoard = ["   ", "   ", "   "]

-- Winner function, returns the winner
winner :: [[Char]] -> Char
winner [[a,b,c], [d,e,f], [g,h,i]]
       | a==b && b==c && a /= ' ' = a
       | d==e && e==f && d /= ' ' = d
       | g==h && h==i && g /= ' ' = g
       | a==d && d==g && a /= ' ' = a
       | b==e && e==h && b /= ' ' = b
       | c==f && f==i && c /= ' ' = c
       | a==e && e==i && a /= ' ' = a
       | c==e && e==g && c /= ' ' = c
       | ' ' `elem` [a,b,c,d,e,f,g,h,i] = '?' -- Game not over
       | otherwise                      = '-' -- Tie

-- Replaces the ith element of a list
-- uses recursion
replace :: Int -> a -> [a] -> [a]
replace 0 a (x:xs) = a:xs
replace i a (x:xs) = x:(replace (i-1) a xs)

-- !! means index
