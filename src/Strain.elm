module Strain exposing (discard, keep)


keep : (a -> Bool) -> List a -> List a
keep =
    filterFor True


discard : (a -> Bool) -> List a -> List a
discard =
    filterFor False


filterFor : Bool -> (a -> Bool) -> List a -> List a
filterFor condition predicate list =
    case list of
        [] ->
            []

        x :: xs ->
            if predicate x == condition then
                x :: filterFor condition predicate xs

            else
                filterFor condition predicate xs
