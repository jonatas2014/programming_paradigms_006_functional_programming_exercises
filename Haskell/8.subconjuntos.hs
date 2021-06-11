{-
O conjunto de todos os subconjuntos de um segundo conjunto é denominado 
conjuntos das partes desse segundo conjunto. 
Faça um programa que encontra o conjunto das partes de uma lista.
-}

subconjuntos :: [Int] -> [[Int]]
subconjuntos []  = [[]]
subconjuntos (head:tail) = subconjuntos tail ++ map (head:) (subconjuntos tail)
