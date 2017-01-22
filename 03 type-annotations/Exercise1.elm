module Main exposing (..)

import Html


cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


calculateFreebies purchasedQty =
    if purchasedQty >= 10 then
        3
    else if purchasedQty >= 5 then
        1
    else
        0


applyFreebies item =
    { item
        | freeQty = calculateFreebies item.qty
    }


main =
    Html.text <| toString <| List.map applyFreebies cart
