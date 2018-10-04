xa = input('xa = ');
xb = input('xa = ');
tol = input('tol = ');

do
  xm = (xa + xb) / 2;
  fa = exp(xa) - 3 * xa;
  fm = exp(xm) - 3 * xm;
  if fa * fm < 0
    xb = xm;
  else
    xa = xm;
  end
until abs(xb - xa) < tol

printf('El valor de la raiz se aproxima a: %.5f \n', xm)
