module Etl exposing (transform)

import Dict exposing (Dict)


transform : Dict Int (List String) -> Dict String Int
transform input =
    let
        inputAsListInOldFormat =
            Dict.toList input

        outputAsListInNewFormat =
            List.concatMap transformEachTupleToNewFormat inputAsListInOldFormat

        transformEachTupleToNewFormat ( value, letters ) =
            List.map (transformTuple value) letters

        transformTuple value letter =
            ( String.toLower letter, value )
    in
    Dict.fromList outputAsListInNewFormat
