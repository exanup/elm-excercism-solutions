module CollatzConjecture exposing (collatz)


collatz : Int -> Result String Int
collatz n =
    if n <= 0 then
        Err "Only positive numbers are allowed"

    else if n == 1 then
        Ok 0

    else if modBy 2 n == 0 then
        Result.map ((+) 1) <| collatz <| n // 2

    else
        Result.map ((+) 1) <| collatz <| 3 * n + 1
