module Main exposing (..)

import Html


type alias Item =
    { name : String
    , qty : Int
    , freeQty : Int
    }


cart : List Item
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


calculateFreebies : Int -> Int
calculateFreebies purchasedQty =
    if purchasedQty >= 10 then
        3
    else if purchasedQty >= 5 then
        1
    else
        0


applyFreebies : Item -> Item
applyFreebies item =
    { item
        | freeQty = calculateFreebies item.qty
    }


main : Html.Html msg
main =
    Html.text <| toString <| List.map applyFreebies cart
