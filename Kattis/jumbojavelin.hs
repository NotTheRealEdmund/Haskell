main = do
  a <- getLine
  let b = convertInt a
  rec b 1   -- First value of accumulator must be 1 because for the first rod, we will minus one even though it is not a fusion

convertInt :: String -> Int
convertInt n = read n

rec :: Int -> Int -> IO ()
rec 0 acc = print acc
rec n acc = do
    c <- getLine
    let d = convertInt c
    let new_acc = acc + d - 1
    rec (n-1) new_acc
