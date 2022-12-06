Program lab1;
{$APPTYPE CONSOLE}

var x, y: real;

begin
  writeln('x = ?'); readln(x);

  y := 1 / sqrt(x) + sqr(ln(abs(0.2 + sin(x)))) * exp(1 / 3 * ln(sqr(x)));

  writeln('y = ', y : 7 : 5);
  write('press ENTER...'); readln

end.

