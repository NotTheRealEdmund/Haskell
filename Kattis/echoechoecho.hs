main = do
  a <- getContents
  echo a 3
  
echo :: String -> Int -> IO ()
echo a 0 = return ()
echo a n = do
    putStrLn a
    echo a (n-1)
