doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

-- if/else
doubleSmallNumber x = if x > 100
	then x
	else x*2

-- list comprehension
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x ]

-- _ is just a placeholder
length' xs = sum [1| _ <- xs]

removeNonUpperCase :: [Char] -> [Char]
-- `elem` is in infix position for clarity
removeNonUpperCase st = [ c | c <- st, c `elem` ['A'..'Z']]

-- "This is a common pattern in functional programming. You take a starting set of solutions and then you apply transformations to those solutions and filter them until you get the right ones."
rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2 ]

rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a + b + c == 24 ]

-- Redefine factorial as a recursive, pattern matching function
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

circumference :: Float -> Float
circumference r = 2 * pi * r

-- Double is a float with double the precision
circumference' :: Double -> Double
circumference' r = 2 * pi * r

lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY SEVEN!"
lucky x = "You're SOL, dude"

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors a b = (fst a + fst b, snd a + snd b)

-- with pattern matching
addVectors' :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors' (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- pattern matching helpers

first :: (a, b, c) -> a
first (x,_,_) = x

second :: (a, b, c) -> b
second (_,y,_) = y

third :: (a, b, c) -> c
third (_,_,z) = z

-- alternate 'head' using pattern matching
head' :: [a] -> a
head' [] = error "Cannot call head on an empty list"
head' (x:_) = x
