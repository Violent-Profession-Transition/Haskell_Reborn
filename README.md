想像力こそが、すべてを変える。

学習リソース:
- 課程に基づいてLearn You a Haskell for Great Good (LYHGG) [course link](https://sites.google.com/a/lclark.edu/drake/courses/pls)
- CIS 194: Introduction to Haskell (Spring 2013) [course link](https://www.seas.upenn.edu/~cis194/spring13/)
- Bitemyapp [github](https://github.com/bitemyapp/learnhaskell)
- 面白いスライドショーUniversity of Virginia  CS 1501 Lectures  Spring 2013 [course link](http://www.shuklan.com/haskell/index.html)
- 1時間で学ぶ [YouTube](https://www.youtube.com/watch?v=02_H3LjqMr8)

Notes with Paul-ZQ Jan 19th @NUS-ALSET:

1. Haskell disallows multiple declaration of variable **during a program's runtime**. So in GHCi, you can assign different values to a variable name multiple times, but in a .hs program, the variable is tied to an expression/value.

2. A variable in Haskell is a **name that is bound to the expression/value on the right**, unlike in imperative programming's memory location abstraction.

3. Haskell does not have a `return` keyword, because a function is a single expression, not a sequence of statements. The value of the expression is the result of the function, and a function can be evaluated to be another partial function like `partialMod = mod x`.

4. In imperative language, we can just write `if` without providing a branch for `else`. In Haskell, because we work with **expression**, an `if` that does not have `else` branch will not evaluate to a value if the predicate is False.
```haskell
-- Haskell must provide an evaluated result for all branches
ifFunc x = if (x>10) then "Big number" else "Small number"
-- ifFunc 11 -> "Big number"
```

5. Haskell is lazy, `take 3 [1,2..]` will be `[1,2,3]`

6. **`:`** operator takes in an item and return `->` a function that takes in a list and `->` return a list. 
```hasell
*Main> :t (:)
(:) :: a -> [a] -> [a]
*Main> (:) 1 [1]
[1,1]
```

7. Pattern matching involving () and []. Since `:`'s second input is a list type, so `(x:xs)` actually means some `x` concats to a list `xs`.
```haskell
someFunc :: [Char] -> Char
someFunc [] = '1'
someFunc (x:[]) = x
someFunc (x:xs) = head xs

-- in GHCi
*Main> someFunc "dettol"
'e'
```

