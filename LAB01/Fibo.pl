
fibonacci(0, 0).
fibonacci(1, 1).

fibonacci(X,Total) :- X>1, X1 is X-1, X2 is X-2,
    fibonacci(X1,Total1), fibonacci(X2,Total2),
    Total is Total1+Total2.

