distancia((X1, Y1), (X2, Y2), D) :- Dx is X2 - X1, Dy is Y2 - Y1, D is sqrt(Dx*Dx + Dy*Dy).

% Caso base: lista vacía o con un solo punto -> distancia 0
distancia_total([], 0).
distancia_total([_], 0).

distancia_total([(X1, Y1), (X2, Y2) | Resto], Total) :- 
    distancia((X1, Y1), (X2, Y2), D), distancia_total([(X2, Y2)| Resto], TotalResto),
    Total is D + TotalResto.
