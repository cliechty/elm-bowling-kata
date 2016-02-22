module Scoring where

import ElmTest exposing (..)

import Bowling exposing (scoreGame)

scoringSpecs : Test
scoringSpecs =
  suite "Bowing Game Scoring"
    [ test "Gutterball Game"
        <| assertEqual 0
        <| scoreGame
        <| List.repeat 20 0

    , test "Single pin per throw game"
        <| assertEqual 20
        <| scoreGame
        <| List.repeat 20 1

    , test "Single spare game"
        <| assertEqual 16
        <| scoreGame
        <| 3 :: 7 :: 3 :: List.repeat 17 0

    , test "Single strike game"
        <| assertEqual 28
        <| scoreGame
        <| 10 :: 3 :: 6 :: List.repeat 17 0

    , test "Perfect game"
        <| assertEqual 300
        <| scoreGame
        <| List.repeat 12 10
    ]
