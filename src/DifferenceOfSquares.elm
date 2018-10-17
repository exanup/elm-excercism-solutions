module DifferenceOfSquares exposing (difference, squareOfSum, sumOfSquares)


squareOfSum : Int -> Int
squareOfSum n =
    let
        sum =
            sumUptoN n
    in
    sum * sum


sumUptoN : Int -> Int
sumUptoN n =
    if n <= 0 then
        0

    else
        n + sumUptoN (n - 1)


sumOfSquares : Int -> Int
sumOfSquares n =
    if n <= 0 then
        0

    else
        n * n + sumOfSquares (n - 1)


difference : Int -> Int
difference n =
    squareOfSum n - sumOfSquares n
