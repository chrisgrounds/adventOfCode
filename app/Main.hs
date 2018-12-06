{-# LANGUAGE OverloadedStrings #-}
module Main where

import Day1
import Day2

main :: IO ()
main = do
    day1
    day2
    -- print totalChecksum
    -- let doublesAndTriples = filter (\x -> x /= "") $ (getMultiples <$> data2) <*> ['a'..'z']
    -- let doubles = filter (\x -> length x == 2) doublesAndTriples
    -- let triples = filter (\x -> length x == 3) doublesAndTriples
    -- print $ doublesAndTriples
    -- print $ length triples
    -- print $ length doubles * length triples

    -- part 1
    -- print $ foldr changeFrequency 0 data1

    -- part 2
    
