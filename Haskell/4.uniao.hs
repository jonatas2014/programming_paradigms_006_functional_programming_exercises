{-
uniao: recebe duas listas que não contenham elementos repetidos e retorna 
uma nova com todos os elementos das duas listas originais (sem repetição)
-}

-- pertence: verifica se um inteiro pertence a uma lista de interos
pertence :: [Int] -> Int -> Bool
pertence [] _ = False
pertence (head:tail) n | (head == n) = True
                       | otherwise = pertence (tail) n

uniao :: [Int] -> [Int] -> [Int]
uniao [] [] = []
uniao [] lista = lista
uniao lista [] = lista
uniao (head1:tail1) lista2 | (pertence lista2 head1 == False) = head1: uniao tail1 lista2
                           | otherwise = uniao tail1 lista2
