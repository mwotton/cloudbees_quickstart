{-# LANGUAGE OverloadedStrings #-}
module Main where


import Web.Scotty
import System.Environment
import Data.Monoid (mconcat)

main = do
  port <- getEnv "PORT"
  scotty (read port) $ do
  get "/:word" $ do
    beam <- param "word"
    html $ mconcat ["<h1>Scotty, ", beam, " me up!</h1>"]