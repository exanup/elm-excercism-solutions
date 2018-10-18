module ScrabbleScore exposing (scoreWord)


scoreWord : String -> Int
scoreWord x =
    x
        |> String.toUpper
        |> String.toList
        |> List.map scoreChar
        |> List.sum


scoreChar : Char -> Int
scoreChar c =
    List.foldl (findScore c) 0 scores


findScore : Char -> Score -> Int -> Int
findScore c score acc =
    let
        ( val, str ) =
            score

        cstr =
            String.fromChar c
    in
    if String.contains cstr str then
        val

    else
        acc


type alias Score =
    ( Int, String )


scores : List Score
scores =
    [ ( 1, "AEIOULNRST" )
    , ( 2, "DG" )
    , ( 3, "BCMP" )
    , ( 4, "FHVWY" )
    , ( 5, "K" )
    , ( 8, "JX" )
    , ( 10, "QZ" )
    ]
