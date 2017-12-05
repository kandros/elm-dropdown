module Dropdown exposing (..)

import Html exposing (Html, Attribute, div, button, text)
import Html.Events exposing (onClick)


main : Program Never Model Msg
main =
    Html.beginnerProgram { model = model, view = view, update = update }



-- Model


type alias Model =
    { open : Bool
    }


model : Model
model =
    { open = False }



-- Update


type Msg
    = Toggle


update : Msg -> Model -> Model
update msg model =
    case msg of
        Toggle ->
            { model
                | open =
                    if model.open == True then
                        False
                    else
                        True
            }



-- View


emptyNode : Html msg
emptyNode =
    text ""


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Toggle ]
            [ text
                (if model.open then
                    "click me to close"
                 else
                    "click me to open"
                )
            ]
        , div []
            [ if model.open then
                div [] [ text "ciaone" ]
              else
                emptyNode
            ]
        ]
