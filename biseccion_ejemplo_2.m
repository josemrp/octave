#NOTE:
#Graphics
#plot(x,y)

xa = input('xa = ');
xb = input('xa = ');
tol = input('tol = ');

do
  xm = (xa + xb) / 2;
  fa = 2 - 10 * xa + 2 * exp(xa) + xa^3; 
  fm = 2 - 10 * xm + 2 * exp(xm) + xm^3;
  if fa * fm < 0
    xb = xm;
  else
    xa = xm;
  end
until abs(xb - xa) < tol

printf('El valor de la raiz se aproxima a: %.5f \n', xm)
