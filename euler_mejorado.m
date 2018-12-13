# Euler mejorado

printf('Metodo de euler mejorado\n');

n = input('n: ');
x(1) = input('x(1): ');
x(n+1) = input('x(a): ');
y(1) = input('y(1): ');

h = abs(x(n+1) - x(1)) / n;

for i = [2:n]
  x(i) = x(1) + (i+1)*h;
end

for i = [1:n]
  y(i+1) = y(i) + h*(sin(x(i)) - log(y(i))); # Prediccion inicial
  # Y mejorado
  y(i+1) = y(i) + h/2 * (sin(x(i)) - log(y(i)) + sin(x(i+1)) - log(y(i+1))); # Correccion final
end

printf('F(xa): %.5f\n', y(i+1))

# .' traspuesta de una matriz
display([x.', y.'])
