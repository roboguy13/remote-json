{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}
module Main where

import Control.Monad        
import Control.Applicative
import Data.Monoid
import Data.Aeson
import Data.Maybe
import Data.Text (Text)
import qualified Data.Text.IO as IO
import System.Random

import DSL 
import Server

main = do
        ts <- send (Session session) $ do
                say "Hello!"
                say "Hello!"
                t1 <- temperature
                t2 <- temperature
                f3 <- fib 5
                say "Howdy"
                return [t1,t2,f3]
        print ts                       
        

