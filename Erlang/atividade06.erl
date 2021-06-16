-module(atividade06).
-export([fac/1, fib/1, intercala/2, uniao/2, interseccao/2, sequencia/2, impar_par/1, par/1, impar/1, 
	 generate/1, tail_fac/1, tail_recursive_fib/1]).

%% Questão 1
fac(1) ->
    1;
fac(N) ->
    N * fac(N - 1).

%% Questão 2
fib(0) ->
	0;
fib(1) ->
	1;
fib(N) ->
	fib(N - 1) + fib(N - 2).

%% Questão 3
intercala(A, B) ->
	A ++ B.


%% Questão 4
uniao(A, B) ->
	A ++ (B -- A).

%% Questão 5
interseccao(A, B) ->
	A -- (A -- B).

%% Questão 6
sequencia(0,_) ->
	[];
sequencia(N,Term) when N > 0 ->
		[Term|sequencia(N-1,Term + 1)].

%% Questão 7
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

%% Questão 8
generate([]) -> [[]];
generate([H|T]) -> PT = generate(T),
  generate(H, PT, PT).

generate(_, [], Acc) -> Acc;
generate(X, [H|T], Acc) -> generate(X, T, [[X|H]|Acc]).


%%Questão 10
tail_fac(N) -> tail_fac(N,1).
 
tail_fac(0,Acc) -> Acc;
tail_fac(N,Acc) when N > 0 -> tail_fac(N-1,N*Acc).

 %%Questão 10
tail_recursive_fib(N) ->
	tail_recursive_fib(N, 1, 1, []).

tail_recursive_fib(0, _Current, _Next, Fibs) ->
    lists:reverse(Fibs);
tail_recursive_fib(N, Current, Next, Fibs) -> 
    tail_recursive_fib(N - 1, Next, Current + Next, [Current|Fibs]).
