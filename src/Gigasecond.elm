module Gigasecond exposing (add)

import Time


add : Time.Posix -> Time.Posix
add timestamp =
    let
        timeInMillis =
            Time.posixToMillis timestamp

        gigaSecondInMillis =
            1000000000000

        addedTimeInMillis =
            timeInMillis + gigaSecondInMillis
    in
    Time.millisToPosix addedTimeInMillis
