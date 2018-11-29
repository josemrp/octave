# Regrecio lineal
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

for i = [1:n]
  s1 = s1 + x(i);
  s2 = s2 + x(i)^2;
  s3 = s3 + y(i);
  s4 = s4 + y(i)*x(i);
end

promy = s3 / n;

a = (s3 * s2 - s4 * s1) / (n * s2 - s1^2);
b = (n * s4 - s1 * s3) / (n * s2 - s1^2);

s5 = 0;
s6 = 0;

for i = [1:n]
	s5 = s5 + (a + b * x(i) - promy)^2;
	s6 = s6 + (y(i) - promy)^2;
end

yp = a + b * xp;
r2 = s5 / s6;
printf('yp: %.3f \nR2: %.4f \n', yp, r2);

# yp: 14454.000
# R2: 0.9975

