module Main exposing (..)

import Html


wordCount : String -> Int
wordCount =
    String.words >> List.length


main =
    Html.text <| toString <| wordCount "Hello my friend"



--Html.text <| toString <| List.length <| String.words "Hello my friend"
