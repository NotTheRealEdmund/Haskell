main = do
  a <- getLine
  let x = convertInt a
  print ( ( (2 ^ x) + 1 ) ^ 2 )
  
convertInt :: String -> Int
convertInt n = read n
