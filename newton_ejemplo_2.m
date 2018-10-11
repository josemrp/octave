#Metodo de Newton

i = 1;
x(i) = input('valor inicial de x: ');
tol = input('grado de tolerancia: ');

do  
  F(i) = (1 / x(i)^(1/2)) - exp(sin(x(i)));
  dF(i) = (-1 / (2*x(i)^(3/2))) - exp(sin(x(i)))*cos(x(i));
  x(i + 1) = x(i) - F(i) / dF(i);
  i = i + 1;
until abs(x(i)-x(i-1)) < tol

#Se aplica i-1 debido a que el valor se encuentra en la interacion anterior a sumarse la unidad
printf('La raiz se aproxima a %.5f \n Y se efecturaon %.0f iteraciones \n', x(i), i-1);
printf('El valor de la funcion en ese punto es de: %.8f \n', F(i-1));

################################################################################
# Grafica:
# >> x = [0:0.1:5];
# >> y = (1 ./ x.^(1/2)) - exp(sin(x));
# >> plot(x, y)
################################################################################
