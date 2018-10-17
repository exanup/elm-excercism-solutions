module RNATranscription exposing (toRNA)


toRNA : String -> Result String String
toRNA dna =
    case String.uncons dna of
        Nothing ->
            Ok ""

        Just ( firstNucleotide, remainingDna ) ->
            Result.map2 String.cons
                (nucleotideCompliment firstNucleotide)
                (toRNA remainingDna)


nucleotideCompliment : Char -> Result String Char
nucleotideCompliment n =
    case n of
        'G' ->
            Ok 'C'

        'C' ->
            Ok 'G'

        'T' ->
            Ok 'A'

        'A' ->
            Ok 'U'

        _ ->
            Err <| String.cons n " is not a valid nucleotide."
