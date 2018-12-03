import Data.List

data Rank = Ace | Two | Three | Four | Five | Six | Seven
            | Eight | Nine | Ten | Jack | Queen | King
            deriving (Eq, Ord, Bounded, Enum, Show, Read)
-- Bounded allows us to have minimum and maximum values
-- minBound :: Rank -> Ace
-- Enum allows us to make ranges
-- [Ace..Six] -> [Ace,Two,Three,Four,Five,Six]
-- Show is necessary for Haskell to print an item
-- Read allows us to read the item, but we have to specify the type
-- read "Jack" :: Rank

data Suit = Spades | Hearts | Diamonds | Clubs
            deriving (Eq, Enum, Show, Read)

data Card = Card Rank Suit deriving (Eq, Show, Read)

type Hand = [Card]

-- create a whole deck with list comprehension
wholeDeck = [Card r s | r <- [Ace .. King], s <- [Spades .. Clubs]]

-- Returns True if all consecutive pairs satisfy f
allPairs f [] = True
allPairs f [x] = True
allPairs f (x:y:ys) = f x y && allPairs f (y:ys)
-- eg. allPairs (<) [1,2,3,4,5]
