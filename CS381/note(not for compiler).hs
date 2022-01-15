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

-------------------------different ways for same function-------------------
addXY :: (Int, Int) -> Int
addXY (x,y) = x + y

addTwo :: Int -> Int -> Int
addTwo x y = x+y
map (addTwo 1) [1,2,3]              [2,3,4]

evens :: [Int] -> [Int]
evens [] = []
evens xs = [x | x <- xs, x `mod` 2 == 0]    OR evens(x:xs)
                                                      | mod x 2 == 0 = x: evens xs
                                                      | otherwise    = evens xs

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


-------------------------function: map-------------------
map :: (a -> b) -> [a] -> [b]  
map _ [] = []  
map f (x:xs) = f x : map f xs

map (+3) [1,5,3,1,6]  
[4,8,6,4,9]  

map (replicate 3) [3..6]  
[[3,3,3],[4,4,4],[5,5,5],[6,6,6]] 

map (map (^2)) [[1,2],[3,4,5,6],[7,8]]  
[[1,4],[9,16,25,36],[49,64]]


-------------------------function: filter-------------------
filter _ [] = []  
filter p (x:xs)   
filter :: (a -> Bool) -> [a] -> [a]  
    | p x       = x : filter p xs  
    | otherwise = filter p xs 

filter (>3) [1,5,3,2,1,6,4,3,2,1]  
[5,6,4]  
filter (==3) [1,2,3,4,5]  
[3]  

[2,4,6,8,10] 
filter even [1..10]  

-------------------------conditional expressions-------------------
abs  :: Int -> Int
abs n = if n >= 0 then n else -n
--same as
abs n 
    | n >= 0     = n
    | otherwise  = -n

-------------------------use Eq-------------------
myE :: Eq a => a -> [a] -> Bool
myE _ [] = False
myE e (x:xs) = (e == x) || (myE e xs)

-------------------------isAsc function-------------------
isAsc :: [Int] -> Bool
isAsc [] = True
isAsc [x] = True
isAsc (x:y:xs) = (x <= y) && isAsc(y:xs)




























type Bag a = [(a,Int)]

ins :: Eq a => a -> Bag a -> Bag a
ins x [] = [(x,1)]
ins x ((y,n):ms) | x==y      = (y,n+1):ms
                 | otherwise = (y,n):ins x ms

del :: Eq a => a -> Bag a -> Bag a
del x [] = []
del x ((y,n):ms) | x==y && n>1 = (y,n-1):ms
                 | x==y        = ms
                 | otherwise   = (y,n):del x ms

bag :: Eq a => [a] -> Bag a
bag = foldr ins []

subbag :: Eq a => Bag a -> Bag a -> Bool
subbag [] _ = True
subbag ((x,n):xs) ys = case lookup x ys of
                         Just m -> n<=m && subbag xs ys
                         Nothing -> False

isbag :: Eq a => Bag a -> Bag a -> Bag a
isbag [] _ = []
isbag ((x,n):xs) ys = case lookup x ys of
                         Just m -> (x,min n m):isbag xs ys
                         Nothing -> isbag xs ys

size :: Bag a -> Int
size = sum . map snd

xs,ys :: [Int]
xs = reverse [5,7,2,3,7,8,3,7]
ys = reverse [5,5,7,8,3,8,7]

lx = bag xs
ly = bag ys
lz = del 8 ly
la = del 5 lz
lb = del 3 la