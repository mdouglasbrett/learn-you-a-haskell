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

factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r
