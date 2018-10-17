module Leap exposing (isLeapYear)


isLeapYear : Int -> Bool
isLeapYear year =
    isEDB400 year
        || (isEDB4 year && (not << isEDB100) year)



-- Here, EDB means Evenly Divisible By


isEDB400 : Int -> Bool
isEDB400 year =
    remainderBy 400 year == 0


isEDB100 : Int -> Bool
isEDB100 year =
    remainderBy 100 year == 0


isEDB4 : Int -> Bool
isEDB4 year =
    remainderBy 4 year == 0
