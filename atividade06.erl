-module(atividade06).
-export([fac/1, fib/1, intercala/2, uniao/2, interseccao/2, sequencia/2, impar_par/1, par/1, impar/1]).

fac(1) ->
    1;
fac(N) ->
    N * fac(N - 1).


fib(0) ->
	0;
fib(1) ->
	1;
fib(N) ->
	fib(N - 1) + fib(N - 2).


intercala(A, B) ->
	A ++ B.



uniao(A, B) ->
	A ++ (B -- A).


interseccao(A, B) ->
	A -- (A -- B).



sequencia(0,_) ->
	[];
sequencia(N,Term) when N > 0 ->
		[Term|sequencia(N-1,Term + 1)].

impar_par(L) ->
	io:fwrite("~w~n",[spawn(?MODULE, par, [L])]),  
	io:fwrite("~w~n",[spawn(?MODULE, impar, [L])]).


par([]) -> [];
par([Term|Y]) when Term rem 2 == 0 ->
	io:fwrite("Par ~p~n",[Term]),
	[Term|par(Y)];
par([_|Y])  ->
	par(Y).

impar([]) -> [];
impar([Term|Y]) when Term rem 2 /= 0 ->
	io:fwrite("Impar ~p~n",[Term]),
	[Term|impar(Y)];
impar([_|Y])  ->
	impar(Y).
