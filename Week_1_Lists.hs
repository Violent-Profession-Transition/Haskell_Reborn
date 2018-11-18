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
