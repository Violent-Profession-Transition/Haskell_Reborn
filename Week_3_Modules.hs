-- Modules
-- Data.List
-- Data.Char
-- Data.Map
-- Data.Set

-- when we start the ghci, it automatically start the prelude modules
-- prelude contains many useful stuff
-- to load additional modules in ghci, use:
-- :m + MODULE_NAME

import Data.List
-- Data.List has a useful function called find
findJust = find (>3) [1..10] -- only return Just 4
