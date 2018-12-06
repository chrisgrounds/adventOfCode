module Day1Spec (spec) where

import Test.Hspec

import Day1

spec = do
    describe "part 1" $ do
        it "returns 3 when given [+1, +1, +1]" $ do
            part1 ["+1", "+1", "+1"] `shouldBe` 3

        it "returns 0 when given [+1, +1, -2]" $ do
            part1 ["+1", "+1", "-2"] `shouldBe` 0

        it "returns -6 when given [-1, -2, -3]" $ do
            part1 ["-1", "-2", "-3"] `shouldBe` (-6)
