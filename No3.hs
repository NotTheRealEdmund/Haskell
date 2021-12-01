-- Tail-Recursive Factorial using recursion
-- 10! = 10 * 9 * 8 * ... * 2 * 1

fact :: Int -> Int
fact n =
     let fact n acc =
          if n == 0 then
               acc
          else
               fact (n-1) (acc*n) -- To be more precise, there is a multiplication of 1 in front, this is 1 * 10 * 9 * ...
     in
          fact n 1
          
