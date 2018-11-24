increasing :: (Ord a) => [a] -> Bool
increasing xs = if xs == []
                    then True
                    else if tail xs == []
                        then True
                        else if head xs <= head (tail xs)
                            then increasing(tail xs)
                            else False

decreasing :: (Ord a) => [a] -> Bool
decreasing [] = True
decreasing [x] = True
-- parenthesis are required when we match several things at once
decreasing (x:y:ys) = x >= y && decreasing(y:ys)

increasing' :: (Ord a) => [a] -> Bool
increasing' (a:b:bs) = a<=b && increasing'(b:bs)
-- can also use wildcard
increasing' _ = True

noVowels :: [Char] -> [Char]
noVowels word = if word == ""
                    then ""
                    else if head word `elem` "aeiouAEIOU"
                        then noVowels (tail word)
                        else (head word) : noVowels (tail word)

noVowels' :: [Char] -> [Char]
noVowels' "" = ""
-- pattern matcher has already helped to
-- make head is x, tail is xs
noVowels' (x:xs) = if x `elem` "aeiouAEIOU"
                        then noVowels' xs
                        else x : noVowels' xs

noVowels'' :: [Char] -> [Char]
noVowels'' "" = ""
noVowels'' (x:xs)
           | x `elem` "aeiouAEIOU" = noVowels'' xs
           | otherwise             = x : noVowels'' xs

watch :: Int -> [Char]
watch n = if n == 7
            then "7 o'clock and ... SHARKNADO!"
            else show n ++ " o'clock and all's well."
            -- the show function converts the Int to a string

watch' :: Int -> [Char]
watch' n = show n ++ " o'clock and " ++ msg n
             where msg 7 = "... SHARKNADO!"
                   msg _ = " all's well."
             -- define a function used in that expression

watch'' :: Int -> [Char]
watch'' n = show n ++ " o'clock and " ++ case n of 7 -> "... SHARKNADO!"
                                                   _ -> "all's well."

gravity :: (Fractional a) => a -> a
-- we could have defined these variables as global
-- but the advantage of let is the binding is only visible
-- within the scope of the let statement
-- good variable names are hard to come by
-- so it is better to define things as locally as possible
gravity r = let g = 6.674e-11
                earthMass = 5.972e24
            in g * earthMass / (r ^ 2)

{- pattern = result
 -...
 -}

{- pattern
 -  | expression = result
 -  ...
 -  | otherwise = result
 -}

{- result where
 - pattern = result
 - ...
 -}

{- let pattern = result 
 -  ...
 - in result
 -}

{- case expression of pattern -> result 
 - ...
 -}
