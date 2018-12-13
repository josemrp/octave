# Metodo de euler
# F'(x,y) = sin(x) - ln(y)
# P1(0.13, 0.32)
# F(0.14) = ? => x(a) = 0.14
# n = 4
# n = 15

printf('Metodo de euler\n');
n = input('n: ');
x(1) = input('x(1): ');
x(n+1) = input('x(a): ');
y(1) = input('y(1): ');

h = abs(x(n+1) - x(1)) / n;

for i = [2:n]
  x(i) = x(1) + (i-1)*h;
end

for i = [1:n]
  y(i+1) = y(i) + h*(sin(x(i)) - log(y(i)));
end

printf('F(xa): %.5f\n', y(i+1))

# .' traspuesta de una matriz
display([x.', y.'])
