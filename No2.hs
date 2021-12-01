-- Tail-Recursive Fibonacci using recursion
-- F0 = 0, F1 = 1, Fn = Fn-1 + Fn-2
--                 Fn =  a   +  b
-- F3 = F2 + F1
-- F2 = F1 + F0
-- The previous a becomes the b for the next recursion call, the previous a+b becomes the a for the next recursion call

fib :: Int -> Int
fib n =
     let rec n a b =
          if n == 0 then
               b
          else
               rec (n-1) (a+b) a
     in
          rec n 1 0
