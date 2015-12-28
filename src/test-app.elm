module Main where

import Signal
import Html exposing (..)
import Html.Attributes as A

import Widgets

type alias Model =
  { pbValue : Float
  }


type Action
  = NoOp

-- the mailbox where the action notifications will be received
appMailbox = Signal.mailbox NoOp

initialModel : Model
initialModel = { pbValue = 0.75 }

update : Action -> Model -> Model
update a m =
  m

view address model =
  div
    [ A.class "widget-container" ]
    [ Widgets.progressBar model.pbValue ]


stateSignal = Signal.foldp update initialModel appMailbox.signal

main = Signal.map (view appMailbox.address) stateSignal
