main = do
  a <- getLine
  -- (words a) will delimit a via space into a list of items
  -- if a is "2 3", will be delimited into ["2"," ","3"]
  let b = head (words a) -- "2"
  let c = last (words a) -- "3"
  let x = convertInt b   -- 2
  let y = convertInt c   -- 3
  print y
  rec x
  
convertInt :: String -> Int
convertInt n = read n

rec :: Int -> IO ()
rec 0 = return ()
rec n = do
    c <- getLine
    rec (n-1)
