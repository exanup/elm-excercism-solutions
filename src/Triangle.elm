module Triangle exposing (Triangle(..), triangleKind)


type Triangle
    = Equilateral
    | Isosceles
    | Scalene


triangleKind : number -> number -> number -> Result String Triangle
triangleKind x y z =
    isValidTriangle ( x, y, z )
        |> Result.map validTriangleKind


isValidTriangle :
    ( number, number, number )
    -> Result String ( number, number, number )
isValidTriangle ( x, y, z ) =
    if x <= 0 || y <= 0 || z <= 0 then
        Err "Invalid lengths"

    else if x + y < z || y + z < x || z + x < y then
        Err "Violates inequality"

    else
        Ok ( x, y, z )


validTriangleKind : ( number, number, number ) -> Triangle
validTriangleKind ( x, y, z ) =
    if x == y && y == z && z == x then
        Equilateral

    else if x == y || y == z || z == x then
        Isosceles

    else
        Scalene
