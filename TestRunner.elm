module Main where

import Signal exposing (Signal)

import ElmTest exposing (consoleRunner, Test, suite)
import Console exposing (IO, run)
import Task

import Scoring

allSuites : Test
allSuites =
  Scoring.scoringSpecs

console : IO ()
console = consoleRunner allSuites

port runner : Signal (Task.Task x ())
port runner = run console
