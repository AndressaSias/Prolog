gosta(andressa,musica).
gosta(andressa,cinema).
gosta(andressa,leitura).
gosta(andressa,comer_pizza).
gosta(leticia,cinema).
gosta(leticia,show).
gosta(leticia,comer_pizza).
gosta(leticia,asssitir_netflix).
gosta(brenda,asssitir_netflix).
gosta(brenda,dancar).
gosta(brenda,brincar).
gosta(brenda,musica).
gosta(isadora,dancar).
gosta(isadora,brincar).
gosta(isadora,comer_pizza).
custa(musica,8).
custa(cinema,15).
custa(leitura,30).
custa(comer_pizza,35).
custa(show,70).
custa(assistir_netflix,40).
custa(dancar,20).
quanto(Y):-
    custa(Y,Z),
    write(Z).

quanto_juntos(X,Y,Z):-
    gosta(X,Z),
    gosta(Y,Z),
    X\=Y,
    custa(Z,V),
    C is V+V,
    write(C).

convida(X,Y,Z,V):-
    gosta(X,Z),
    gosta(Y,Z),
    X\=Y,
    custa(Z,C),
    R is C+C,
    R<V,
    write('Passatempo custa menos que o valor estipulado').

gostam(X,Y,Z):-
    gosta(X,Z),
    gosta(Y,Z),
    write(X),write(' e '),write(Y),write(' gostam de '), write(Z).

mais_caro(X,Y):-
    custa(X,V),
    custa(Y,Z),
    (V>Z,
     write(X),write(' eh mais caro que '),write(Y);
     write(Y),write(' eh mais caro que '),write(X)),
    !.
