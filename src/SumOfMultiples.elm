module SumOfMultiples exposing (sumOfMultiples)


sumOfMultiples : List Int -> Int -> Int
sumOfMultiples givenNumbers limit =
    List.range 1 (limit - 1)
        |> List.filter (isMultipleOfAnyOf givenNumbers)
        |> List.sum


isMultipleOfAnyOf : List Int -> Int -> Bool
isMultipleOfAnyOf numbers testSubject =
    List.any (isDivisible testSubject) numbers


isDivisible : Int -> Int -> Bool
isDivisible numerator denominator =
    remainderBy denominator numerator == 0
