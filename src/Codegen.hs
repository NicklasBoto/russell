module Codegen where

import Parser ( parse )

parser :: String -> IO ()
parser file = parse =<< readFile file


