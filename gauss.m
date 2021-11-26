L = input('Dose ton Pinaka L');
b = input('Dose ton Pinaka b');
U = input('Dose ton Pinaka U');
b2 = input('Dose ton Pinaka b');
%pros ta empos
% L n-by-n nonsingular lower triangular matrix
% b n-by-1 vector
%
% Output:
% x Solution of the system Lx=b
%
n = length(b);
x = zeros(n,1);
for j=1:n-1
 x(j) = b(j)/L(j,j);
 b(j+1:n) = b(j+1:n) - x(j)*L(j+1:n,j);
end
x(n) = b(n)/L(n,n);
matrix = full(x)
%pros ta piso
% Output:
% x Solution of the system Ux=b
n = length(b2);
x = zeros(n,1);
for j=n:-1:2
 x(j) = b2(j)/U(j,j);
 b2(1:j-1) = b2(1:j-1) - x(j)*U(1:j-1,j);
end
x(1) = b2(1)/U(1,1);
matrix2 = full(x)
