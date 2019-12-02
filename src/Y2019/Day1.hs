module Y2019.Day1 ( day1 ) where

-- Fuel required to launch a given module is based on its mass. 
-- Specifically, to find the fuel required for a module, take its mass, divide by three, round down, and subtract 2.
-- What is the sum of the fuel requirements for all of the modules on your spacecraft?

toFloat :: String -> Float
toFloat = read

fuelFromMass :: Float -> Int
fuelFromMass = (subtract 2) . (floor :: Float -> Int) . (/ 3)

fuelFromMassIncludingFuel :: Float -> Int
fuelFromMassIncludingFuel f = go f 0
  where 
    go f acc
      = let requiredFuel = fuelFromMass f
         in if (requiredFuel > 0)
            then go (fromIntegral requiredFuel) (requiredFuel + acc)
            else acc

part1, part2 :: [String] -> Int
part1 x = sum $ fuelFromMass . toFloat <$> x
part2 x = sum $ fuelFromMassIncludingFuel . toFloat <$> x

day1 :: [String] -> (Int, Int)
day1 modules = (part1 modules, part2 modules)
