{-
intercala: recebe duas listas e retorna outra lista com os elementos das listas originais intercalados. ex.:
(intercala '(1 2 3) '(8 9)) ==> (1 8 2 8 3)
(intercala '() '(1 2 6)) ==> (1 2 6)
-}

intercala :: [Int] -> [Int] -> [Int]
intercala [] [] = []
intercala [] l = l
intercala l [] = l
intercala (head1:tail1) (head2:tail2) = head1: head2: intercala tail1 tail2 