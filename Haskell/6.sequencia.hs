{-
recebe dois numeros naturais n e m, e retorna uma lista com n elementos, 
onde o primeiro é m, o segundo é m+1, etc...
ex.:
(sequencia 0 2) ==> [ ] (sequencia 3 4) ==> [4, 5, 6]
-}

sequencia :: Int -> Int -> [Int]
sequencia 0 _ = []
sequencia n m = m: sequencia (n - 1) (m + 1)

