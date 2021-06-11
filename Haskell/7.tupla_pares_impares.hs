{-
Faça um programa que dada uma lista, retorne uma tupla listalista (de inteiros) onde a lista da esquerda contém os números impares e a lista da direita os números pares
ex:
func :: [Int] -> ([Int],[Int])
[1,2,3,4,5,6,7] => ([1,3,5,7],[2,4,6])
-}

tupla_par_impar :: [Int] -> ([Int], [Int])
tupla_par_impar [] = ([], [])
tupla_par_impar (head:tail) = ([x | x <- head:tail, mod x 2 == 1], [x | x <- head:tail, mod x 2 == 0])
                            
