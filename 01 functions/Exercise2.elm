module Main exposing (..)

import Html


uppercase : String -> String
uppercase text =
    if String.length text > 10 then
        String.toUpper text
    else
        text


formatText : String -> String
formatText name =
    uppercase name ++ " - name length: " ++ (toString <| String.length name)


main =
    Html.text <| formatText "Denis Gerina"
