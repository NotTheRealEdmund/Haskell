main = do
  a <- getLine
  if (a == "OCT 31" || a == "DEC 25") then putStrLn "yup" else putStrLn "nope"
