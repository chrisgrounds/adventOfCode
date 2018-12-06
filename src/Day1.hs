module Day1 where

import Data.List (lines, scanl')

type Frequency = Int

changeFrequency :: String -> Frequency -> Frequency
changeFrequency ('+':a) freq = freq + (read a)
changeFrequency ('-':a) freq = freq - (read a)
changeFrequency _       freq = freq

getFirstDupe :: [Frequency] -> Int -> Maybe Frequency
getFirstDupe freqs counter = go freqs counter
    where 
        go [] _ = Nothing
        go fs n
          | length fs <= n       = Nothing
          | inPreviousFreqs fs n = Just $ fs !! n
          | otherwise            = go fs $ n + 1
        inPreviousFreqs fs n = (fs !! n) `elem` take n fs

loopUntilDupFound :: Maybe Int -> [String] -> [Frequency] -> Int -> Int
loopUntilDupFound (Just a) _    _     _ = a
loopUntilDupFound Nothing rules freqs c = loopUntilDupFound (getFirstDupe newFrequencies (length freqs)) rules newFrequencies (c + 1)
    where
        getNewFreqs [] rules = []      ++ scanl' (flip changeFrequency) 0 rules
        getNewFreqs fs rules = init fs ++ rightFrequencies
        rightFrequencies     = scanl' (flip changeFrequency) (last freqs) rules
        newFrequencies       = getNewFreqs freqs rules

part1 :: [String] -> Frequency
part1 = foldr changeFrequency 0

part2 input = loopUntilDupFound Nothing input [] 0

day1 = do
    fileData1 <- readFile "input1.txt"
    let inputData = lines fileData1
    
    print $ part1 inputData

    print $ part2 inputData

