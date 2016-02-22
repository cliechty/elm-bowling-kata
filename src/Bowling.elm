module Bowling where

scoreGame : List Int -> Int
scoreGame throws =
  case throws of
    -- Last frames
    [] -> 0
    x :: [] -> x
    x :: y :: [] -> x + y
    x :: y :: z :: [] -> x + y + z

    -- Frames with possible Strike or spare score
    x :: y :: z :: xs ->
      if x == 10 then -- Strike
        x + y + z + scoreGame (y :: z :: xs)
      else if x + y == 10 then -- Spare
        x + y + z + scoreGame (z :: xs)
      else -- Open Frame
        x + y + scoreGame (z :: xs)
