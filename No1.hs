module No1 where
import Prelude hiding (last)

-- Get last item of list without using the last function, but using recursion

last :: [a] -> Maybe a
last list = 
     case list of
          [] -> Nothing
          (x:[]) -> Just x  -- If it reaches the last item, end program
          (x:xs) -> last xs -- Separate the first item from the rest, call recursive function again with the rest of the items, so the first item is essentially removed for the next call
