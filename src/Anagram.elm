module Anagram exposing (detect)


detect : String -> List String -> List String
detect word candidates =
    List.filter (isAnagramOf word) candidates


isAnagramOf : String -> String -> Bool
isAnagramOf word candidate =
    let
        lcWord =
            String.toLower word

        lcCandidate =
            String.toLower candidate
    in
    (lcWord /= lcCandidate)
        && (sort lcWord == sort lcCandidate)


sort : String -> String
sort =
    String.toList >> List.sort >> String.fromList
