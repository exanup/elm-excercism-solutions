module HelloWorldTest exposing (suite)

import Expect exposing (Expectation)
import HelloWorld exposing (helloWorld)
import Test exposing (..)


suite : Test
suite =
    describe "Hello, World!"
        [ test "Hello with no name" <|
            \() ->
                Expect.equal "Hello, World!" (helloWorld Nothing)
        , test "Hello to a sample name" <|
            \() ->
                Expect.equal "Hello, Alice!" (helloWorld (Just "Alice"))
        , test "Hello to another sample name" <|
            \() ->
                Expect.equal "Hello, Bob!" (helloWorld (Just "Bob"))
        ]
