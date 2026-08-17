% Hechos: estudiante y su nota final en un curso
nota(ana, 4.5).
nota(luis, 2.8).
nota(maria, 3.7).
nota(juan, 5.0).
nota(pedro, 2.3).

reprueba(X) :- nota(X,Y), 3.0>Y.
aprueba(X) :- nota(X,Y), Y>3.0.
rango(X,Y,Z) :- nota(X,N), Z>=N, N>=Y.
clasificacion(X,Y) :- nota(X,N), N>0.0, 2.9>=N, Y=reprobado.
clasificacion(X,Y) :- nota(X,N), N>2.9, 3.9>=N, Y=aprobado.
clasificacion(X,Y) :- nota(X,N), N>3.9, 4.4>=N, Y=notable.
clasificacion(X,Y) :- nota(X,N), N>4.4, 5>=N, Y=excelente.