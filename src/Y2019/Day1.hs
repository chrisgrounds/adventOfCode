module Y2019.Day1 ( day1 ) where

-- Fuel required to launch a given module is based on its mass. Specifically, to find the fuel required for a module, take its mass, divide by three, round down, and subtract 2.
-- What is the sum of the fuel requirements for all of the modules on your spacecraft?

toFloat :: String -> Float
toFloat = read

fuelFromMass :: Float -> Int
fuelFromMass = (subtract 2) . (floor :: Float -> Int) . (/ 3)

part1 x = sum $ fuelFromMass . toFloat <$> x

-- day1 :: [String] -> []
day1 modules = do
  let a = part1 modules
  pure a
