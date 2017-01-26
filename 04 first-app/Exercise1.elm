module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


-- model


type alias Model =
    ( Int, Int )


initModel : Model
initModel =
    ( 0, 1 )



-- update


type Msg
    = AddCalorie Int
    | Clear
    | ChangeIncrement String


update : Msg -> Model -> Model
update msg model =
    case msg of
        AddCalorie count ->
            ( Tuple.first model + count, Tuple.second model )

        Clear ->
            initModel

        ChangeIncrement inputStr ->
            case String.toInt inputStr of
                Ok count ->
                    ( Tuple.first model, count )

                Err msg ->
                    model



-- view


view : Model -> Html Msg
view model =
    div []
        [ h3 []
            [ text ("Total Calories: " ++ (toString <| Tuple.first model)) ]
        , button
            [ type_ "button"
            , onClick <| AddCalorie <| Tuple.second model
            ]
            [ text "Add" ]
        , button
            [ type_ "button"
            , onClick Clear
            ]
            [ text "Clear" ]
        , input
            [ type_ "text"
            , onInput ChangeIncrement
            , value <| toString <| Tuple.second model
            ]
            [ text <| toString <| Tuple.second model ]
        ]


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = initModel
        , update = update
        , view = view
        }
