{-
fibonacci: recebe um número inteiro positivo e retorna o n-ésimo elemento 
da seqüência de Fibonacci
-}

-- Começando com 0 e 1
fib 0 = 0
fib 1 = 1
fib n = fib(n - 1) + fib(n - 2)