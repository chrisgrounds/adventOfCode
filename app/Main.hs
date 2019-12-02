{-# LANGUAGE OverloadedStrings #-}

module Main where

-- 2018
import qualified Y2018.Day1 as Y2018
import qualified Y2018.Day2 as Y2018
-- 2019
import qualified Y2019.Day1 as Y2019

main :: IO ()
main = do
    -- Load files
    moduleMass <- readFile "./data/2019/moduleMass.txt"

    -- Run code
    -- Y2018.day1
    -- Y2018.day2

    print =<< Y2019.day1 (lines moduleMass)
