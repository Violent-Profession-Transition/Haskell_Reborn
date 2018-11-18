tupleMixType = (1, "a", 2, "two")

pairTuple = ("one", "decade")

firstElem = fst pairTuple

secondElem = snd pairTuple

zipPair = zip ['a'..'z'] ['A'..'Z']

-- numbers one to eight, which numbers have a longer word than that from a bigger value?
-- like 3 "three" and 6 "six"

numbers = [1..8]
numberInWords = ["one", "two", "three", "four", "five", "six", "seven", "eight"]

numWordPair = zip numbers numberInWords
--[(1,"one"),(2,"two"),(3,"three"),(4,"four"),(5,"five"),(6,"six"),(7,"seven"),(8,"eight")]

longerWordPair = [(i, j) | i<-numWordPair, j<-numWordPair, fst i < fst j, length(snd i) > length(snd j)]
