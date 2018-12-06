module Day1Spec (spec) where

import Test.Hspec

import Day1

spec = do
    describe "part 1" $ do
        it "returns 3 when given [+1, +1, +1]" $
            part1 ["+1", "+1", "+1"] `shouldBe` 3

        it "returns 0 when given [+1, +1, -2]" $
            part1 ["+1", "+1", "-2"] `shouldBe` 0

        it "returns -6 when given [-1, -2, -3]" $
            part1 ["-1", "-2", "-3"] `shouldBe` (-6)


    describe "part 2" $ do
        it "returns 0 when given [+1, +1, +1]" $
            part2 ["+1", "-1"] `shouldBe` 0

        it "returns 10 when given [+1, +1, -2]" $
            part2 ["+3", "+3", "+4", "-2", "-4"] `shouldBe` 10

        it "returns 5 when given [-1, -2, -3]" $
            part2 ["-6", "+3", "+8", "+5", "-6"] `shouldBe` 5

        it "returns 14 when given [-1, -2, -3]" $
            part2 ["+7", "+7", "-2", "-7", "-4"] `shouldBe` 14

