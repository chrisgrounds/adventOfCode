{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Y2018.Day1 as 2018
import qualified Y2018.Day2 as 2018

main :: IO ()
main = do
    -- Load files
    mass <- readFile "./data/2019/mass.txt"

    -- Run code
    2018.day1
    2018.day2
