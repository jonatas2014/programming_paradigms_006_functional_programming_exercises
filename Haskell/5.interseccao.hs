{-
Recebe duas listas sem elementos repetidos e retorna uma lista 
com os elementos que são comuns às duas
-}

-- pertence: verifica se um inteiro pertence a uma lista de interos
pertence :: [Int] -> Int -> Bool
pertence [] _ = False
pertence (head:tail) n | (head == n) = True
                       | otherwise = pertence (tail) n

interseccao :: [Int] -> [Int] -> [Int]
interseccao [] [] = []
interseccao [] lista = []
interseccao lista [] = []
interseccao (head1:tail1) (head2:tail2) | pertence (head2:tail2) head1 == True = head1: interseccao tail1 (head2:tail2)
                                        | pertence (head1:tail1) head2 == True = head2: interseccao (head1:tail1) tail2                                             
                                        | otherwise = interseccao tail1 tail2