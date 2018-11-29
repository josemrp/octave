# Regrecio lineal exponencial
# Datos
# x = [1,2,3,4]
# y = [2328, 4955, 8254, 11491]
# xp = 5
#
x = input('x: ');
y = input('y: ');
xp = input('xp: ');
n = length(x);

s1 = 0;
s2 = 0;
s3 = 0;
s4 = 0;
s7 = 0;

for i = [1:n]
  s1 = s1 + x(i);
  s2 = s2 + x(i)^2;
  s3 = s3 + y(i);
  s7 = s7 + log(y(i));
  s4 = s4 + x(i)*log(y(i));
end

promy = s3 / n;

a = exp((s7 * s2 - s4 * s1) / (n * s2 - s1^2));
b = (n * s4 - s1 * s7) / (n * s2 - s1^2);

s5 = 0;
s6 = 0;

for i = [1:n]
	s5 = s5 + (a*exp(b*x(i)) - promy)^2;
	s6 = s6 + (y(i) - promy)^2;
end

yp = a*exp(b*xp);
r2 = s5 / s6;
printf('yp: %.3f \nR2: %.4f \n', yp, r2);

# yp: 21637.076
# R2: 1.2437

