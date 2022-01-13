-All type errors are found at compile time, which makes programs safer and faster by removing the need for type checks at run time.
-Function and argument names must begin with a lower-case

-Bool    -      logical values
-Char    -      single characters
-Int     -      fixed-precision integers
-Integer -      arbitrary-precision integers
-Float   -      floating-point numbers
-String  -      strings of characters

-Tuple types is a sequence of valuse of different types, for example (False, 'a') :: (Bool, Char)
-Function is a mapping from values of one type to values of another type, for example: isEven :: Int -> Bool
- function application to associate to the left: mult x y z => ((mult x) y) z

-Polymorphic: if its tyoe contains one or more type variables
    1. length :: [a] -> Int  means for any type a, length takes a list of values of type a and return an integer

-a list [1,2,3,4] means 1:(2:(3:(4:[])))
-:t (==)  means (==) :: (Eq a) => a -> a -> Bool
-Type classes:
    1. Ord is anything that has an ordering.
    2. Show are things that can be presented as strings.
    3. Enum is anything that can be sequentially ordered.
    4. Bounded means has a lower and upper bound.
    5. Num is a numeric typeclass – so things have to “act” like numbers.
    6. Integral and Floating what they seem