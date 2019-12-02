module Y2018.Day2 where

import Data.List (lines, scanl', sort, group, groupBy)

multiplesOf :: String -> Int -> Char -> Bool
multiplesOf str num letter =
    let res = filter (\a -> a == letter) str
    in length res == num

checksum :: String -> (Bool, Bool)
checksum s = 
    ( reduceToTrue $ s `multiplesOf` 2 <$> alphabet
    , reduceToTrue $ s `multiplesOf` 3 <$> alphabet
    )

reduceToTrue = foldr (\a -> \b -> if a == True then a else b) False
keepTrue     = filter (\x -> x == True)
alphabet     = ['a'..'z']

day2 = do
    fileData2 <- readFile "2018/input2.txt"
    let inputData = lines fileData2
    
    let allChecksums  = unzip $ fmap checksum inputData
    let totalChecksum = (length . keepTrue . fst $ allChecksums) * (length . keepTrue . snd $ allChecksums)
    print totalChecksum

