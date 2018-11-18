stringIsList = ["calculus", "congruent"]

stringIsList' = stringIsList ++ ["elliptic"]

newList = 1:3:5:7:9:[]

indexInString = "Bouna Vista" !! 6

mustBeSameType = [[1,2], [3,4]] ++ [[5,6]]

headList = head newList

tailList = tail newList

lastList = last newList

lengthList = length newList

tailOfTail = tail (tail (tail (tail (tail newList))))

newList' = 99 : tail newList

texasGauss = sum [1..100]

oddNum = [1,3..100]

takeInfList = take 10 [1,3..]

power2List = [2**x | x <- [1..10]]

fizzBuzz = [x | x <-[1..100], x `mod` 3 == 0, x `mod` 5 == 0]

onlyVowel = [i | i <- "Betadine", i `elem` "aeiou"]

multiplicationTable = [[i*j | i<-[1..9]] | j<-[1..9]]

funcFizzBuzz i = [if j `mod` 15 == 0 then "fizzBuzz" else if j `mod` 5 == 0 then "fizz" else if j `mod` 3 == 0 then "buzz" else show j | j<-i]

oddFizzBuzz = [x | x<-[1..100], odd x]
