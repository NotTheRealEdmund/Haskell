main = do
  a <- getLine
  let b = convertInt a
  let c = b
  rec b c

convertInt :: String -> Int
convertInt n = read n

rec :: Int -> Int -> IO ()
rec 0 c = return ()
rec n c = do
    putStrLn ( (show (c-n+1) ) ++ " Abracadabra")
    rec (n-1) c
