-------------------------list-------------------
--input                 --output
head [1,2,3,4,5]        1
length [1,2,3,4,5]      5  
tail [1,2,3,4,5]        [2,3,4,5]
--select the nth element
[1,2,3,4,5] !! 2        3
--select the first n element
take 3 [1,2,3,4,5]      [1,2,3]
product [1,2,3,4,5]     120
[1,2,3] ++ [4,5]        [1,2,3,4,5]
reverse[1,2,3]          [3,2,1]

-------------------------function application-------------------
--() denotes function application, which has higher priority
--space or juxtaposition denote multiplication
f(a,b) + c d   --same as: f a b + c d

-------------------------Types-------------------
e :: t --e has type t, expression e would product a value of type t

--explicit grouping                 --implicit grouping
a = b + c           
     where
       {b = 1;      --same as       b = 1
        c = 2}                      c = 2
d = a * 2

--two ways to add
addXY :: (Int, Int) -> Int
addXY (x,y) = x + y

addTwo :: Int -> Int -> Int
addTwo x y = x+y
map (addTwo 1) [1,2,3]              [2,3,4]

-------------------------Infinite List-------------------
take 10(cycle[1,2,3])
take 10(repeat 5)

-------------------------List Comprehensions-------------------
[x*2 | x <- [1..10], x*2 >= 12]                [14,16,18,20]

-------------------------Pattern Matching-------------------
(@@) :: Bool ->Bool ->Bool
True  @@ True  = True
_  @@ _ = False

-------------------------Type of functions-------------------
keepUppercase :: [Char] -> [Char]
keepUppercase ls = [c | c <- ls, c `elem` ['A'..'Z']]

