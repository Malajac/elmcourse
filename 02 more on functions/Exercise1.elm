module Main exposing (..)

import Html


(~=) : String -> String -> Bool
(~=) str1 str2 =
    String.left 1 str1 == String.left 1 str2


main =
    Html.text <| toString ("Hello" ~= "Hotel")
