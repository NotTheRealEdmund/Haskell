main = do
  a <- getLine
  let b = convertInt a
  rec b

convertInt :: String -> Int
convertInt n = read n

rec :: Int -> IO ()
rec 1 = putStrLn "Alice"
rec 0 = putStrLn "Bob"
rec n = rec (n-2)
