{-
recebe uma lista de números e transforma todas as repetições 
em sub-listas de dois elementos: sendo o primeiro elemento 
o número de repetições encontradas e o segundo elemento 
é o número que repete na lista original. 
Os números que não repetem na lista original não devem ser alterados.
ex.:
(compactar '(2 2 2 3 4 4 2 9 5 2 4 5 5 5)) ==> ((3 2) 3 (2 4) 2 9 5 2 4 (3 5))
-}

-- Função que conta repetições de elementos subsequentes
repeticoes :: Int -> [Int] -> Int
repeticoes a [] = 0
repeticoes a (head:tail) | a == head = repeticoes a tail + 1
                         | otherwise = 0

-- Coloca no formato da compactação = [repetições subsequentes, número]
compactar_aux :: Int -> [Int] -> [Int]
compactar_aux a [] = []
compactar_aux a (head:tail) | repeticoes a (head:tail) > 1 = [repeticoes a (head:tail), a]
                            | otherwise = [a]

--Compactação
compactar :: [Int] -> [[Int]]
compactar [] = [[]]
compactar (head:tail) = compactar_aux head (head:tail): 
                        compactar (drop (repeticoes head (head:tail)) (head:tail))
                      



