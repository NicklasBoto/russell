module Codegen where

import Parser

parser :: String -> IO ()
parser file = parse =<< readFile file


