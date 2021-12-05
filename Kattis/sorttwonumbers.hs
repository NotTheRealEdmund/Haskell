main = do
  a <- getLine
  -- (words a) will delimit a via space into a list of items
  -- if a is "2 3", will be delimited into ["2"," ","3"]
  let b = head (words a) -- "2"
  let c = last (words a) -- "3"
  let x = convertInt b   -- 2
  let y = convertInt c   -- 3
  if (x > y) then putStrLn ( (show y) ++ " " ++ (show x) ) else putStrLn ( (show x) ++ " " ++ (show y) )
  
convertInt :: String -> Int
convertInt n = read n
