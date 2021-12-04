main = do
  a <- getLine
  -- (words a) will delimit a via space into a list of items
  -- if a is "2 3", will be delimited into ["2"," ","3"]
  let c = head (words a)        -- "2"
  let d = last (words a)        -- "3"
  let h = convertFloat c        -- 2
  let b = convertFloat d        -- 3
  let half = convertFloat "0.5" -- 0.5
  let area = half * h * b       -- 0.5 * 2 * 3
  print (area)

convertFloat :: String -> Float
convertFloat n = read n
