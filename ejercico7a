# Ejercicio 7a

# Regresion lineal
x=input('x: ');
y=input('y: ');
xp=input('xp: ');
printf('\n');
n=length(x);
s1=0;
s2=0;
s3=0;
s4=0;
for i=[1:n]
  s1=s1+x(i);
  s2=s2+x(i)^2;
  s3=s3+y(i);
  s4=s4+x(i)*y(i);
end
promy=s3/n;
a=(s3*s2-s4*s1)/(n*s2-s1^2);
b=(n*s4-s1*s3)/(n*s2-s1^2);
s5=0;
s6=0;
for i=[1:n]
  s5=s5+(a+b*x(i)-promy)^2;
  s6=s6+(y(i)-promy)^2;
end
yp=a+b*xp;
r2=s5/s6;
printf('Regresion Lineal:\nyp: %.3f\nr2: %.4f\n\n',yp,r2);

# Store results
ryp(1) = [yp];
rr2(1) = [r2];

# Regresion Parabolica
#x=input('x: ');
#y=input('y: ');
#xp=input('xp: ');
#n=length(x);
s1=0;
s2=0;
s3=0;
s4=0;
s5=0;
s6=0;
s7=0;
for i=[1:n]
  s1=s1+x(i);
  s2=s2+x(i)^2;
  s3=s3+x(i)^3;
  s4=s4+x(i)^4;
  s5=s5+y(i);
  s6=s6+y(i)*x(i);
  s7=s7+y(i)*x(i)^2;
end
promy=s5/n;
a=[n s1 s2;s1 s2 s3;s2 s3 s4];
b=[s5;s6;s7];
c=inv(a)*b;
s8=0;
s9=0;
for i=[1:n]
  s8=s8+(c(1)+c(2)*x(i)+c(3)*x(i)^2-promy)^2;
  s9=s9+(y(i)-promy)^2;
end
yp=c(1)+c(2)*xp+c(3)*xp^2;
r2=s8/s9;
printf('Regresion Parabolica\nyp: %.3f\nr2: %.4f\n\n',yp,r2)

# Store results
ryp(2) = [yp];
rr2(2) = [r2];

if(rr2(1) > rr2(2))
  printf('Regresion LINEAL con mejor resultado\n');
else
  printf('Regresion PARABOLICA con mejor resultado\n');
endif  
