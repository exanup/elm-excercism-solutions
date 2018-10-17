module Bob exposing (hey)


hey : String -> String
hey remark =
    if isBlank remark then
        "Fine. Be that way!"

    else if isYellingQuestion remark then
        "Calm down, I know what I'm doing!"

    else if isYelling remark then
        "Whoa, chill out!"

    else if isQuestion remark then
        "Sure."

    else
        "Whatever."


isBlank : String -> Bool
isBlank remarks =
    remarks |> String.trim |> String.isEmpty


isYellingQuestion : String -> Bool
isYellingQuestion remarks =
    isYelling remarks && isQuestion remarks


isYelling : String -> Bool
isYelling remarks =
    containsAnyUppercase remarks && containsNoLowercase remarks


containsAnyUppercase : String -> Bool
containsAnyUppercase remarks =
    String.any Char.isUpper remarks


containsNoLowercase : String -> Bool
containsNoLowercase remarks =
    String.all (not << Char.isLower) remarks


isQuestion : String -> Bool
isQuestion remarks =
    String.endsWith "?" remarks
