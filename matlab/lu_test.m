A = [
    14, 8, 0, 4, 4;
    4, 10, 18, 9, 9;
    2, 1, 14, 19, 12;
    5, 5, 9, 10, 13;
    6, 16, 11, 10, 7
    ]

det(A)==0

[L,U] = qr(A);
RES=L*U;


[L,U,P] = qr(A);
RES=P'*L*U;


b=[12;16;9;8;16]
[L,U,P] = qr(A);
y = L\(P*b);
x = U\y;

RES=A*x