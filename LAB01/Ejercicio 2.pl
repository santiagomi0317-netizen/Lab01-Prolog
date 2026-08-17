perro(firulais).
perro(bruno).
perro(max).
gato(misu).
gato(luna).
gato(chanel).
gato(orion).
ave(piolin).

dueno(ana, firulais).
dueno(ana, misu).
dueno(luis, luna).
dueno(luis, orion).
dueno(luis, firulais).
dueno(maria, piolin).
dueno(julia, chanel).
dueno(pedro, bruno).

duenoperro(X,Y) :- dueno(X,Y), perro(Y).
duenogato(X,Y) :- dueno(X,Y), gato(Y).
duenomultiples(X) :- dueno(X,Y), dueno(X,Z), Y\=Z.
amante_animales(X) :- dueno(X,Y), perro(Y), dueno(X,Z), gato(Z).
mascota_compartida(X,Y) :- dueno(X,Z),dueno(Y,A), Z==A.
tipo_mascota(X, perro) :- dueno(X, Y), perro(Y).
tipo_mascota(X, gato) :- dueno(X, Y), gato(Y).
tipo_mascota(X, ave) :- dueno(X, Y), ave(Y).