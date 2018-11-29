# Tiene algo malo


# Regrecio lineal exponencial
# Datos
# x = [0 12 24 36 48 60 72 84 96 108 120]
# y = [65 71 68 78 62 65 83 120 160 152 148]
# xp = 132
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

A = [n s1 s2; s1 s2 s3; s2 s3 s4];
B = [s5;s6;s7];
C = inv(A) * B;

s8 = 0;
s9 = 0;

for i = [1:n]
	s8 = s8 + (C(1) + C(2) * x(i) + C(3) * x(i)^2 - promy)^2;
	s9 = s9 + (y(i) - promy)^2;
end

yp = C(1) + C(2) * xp + C(3) + xp^2;
r2 = s8 / s7;

printf('yp: %.3f \nR2: %.4f \n', yp, r2);

# yp: 193.758
# R2: 0.8389

#

