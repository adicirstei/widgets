module Widgets.ProgressBar (progressBar) where

import Html exposing (..)
import Html.Attributes as A

pbStyle c v =
  A.style
    [ ("backgroundColor", c)
    , ("height", "1em")
    , ("float", "left")
    , ("width", toString (v * 100) ++ "%")
    ]

activeStyle = pbStyle "blue"
inactiveStyle = pbStyle "red"




progressBar : Float -> Html
progressBar p =
  div
    [ A.class "widget-progress-bar" ]
    [ div
      [ A.style [("width", "100%")] ]
      [ div
          [ activeStyle p ]
          [ text "" ]
      , div [ inactiveStyle (1-p) ] [ text "" ]
      ]
    ]
