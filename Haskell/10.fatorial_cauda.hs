{-
Refaça a função fatorial utilizando recursão em cauda. Qual a diferença?
-}
{-
Acredito que a principal diferença é que o resultado do fatorial
já vai sendo calculado na variável parcial a medida que ocorrem 
as chamadas da função, ao invés de começar a ser calculado a partir do caso base 
e os subsequentes retornos da função, como é no método recursivo tradicional
-}

fatorial_cauda :: Int -> Int -> Int
fatorial_cauda 0 parcial = parcial
fatorial_cauda n parcial = fatorial_cauda (n - 1) (parcial*n) 

fatorial :: Int -> Int
fatorial n = fatorial_cauda n 1

