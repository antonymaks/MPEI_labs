program lab3;

{$APPTYPE CONSOLE}

uses
  Windows;

const
  Nmax = 20;
  pi = 3.14159265;

var
  n, i, r, num: integer;
  p, sr, sx, cx: real;
  x: array [1 .. Nmax] of integer;
  y: array [1 .. Nmax] of real;

begin
  //console lang
  setConsoleCP(1251);
  setConsoleOutputCP(1251);

  //data input
  writeln('��-2 ���-22' : 65);
  writeln('������ ������� X:');readln(n);
  { TODO : ���� ������������ �������� R }
  writeln('������� ����� � �������� (������ �):');
  for i := 1 to n do readln(x[i]);

  //next part line
  for i := 1 to 120 do write('=');
  writeln;

  //calculating
  num := 0;
  for i := 1 to n do
    begin
      if x[i] > 0 then
        begin
          sx := (sin((x[i] * pi) / 180));
          y[i] := 1 - sx;
        end;

      else
        begin
          cx := -(cos((abs(x[i]) * pi) / 180));
          y[i] := 1 - cx
        end;

      if x[i] >= 0 then
        num := num + 1;
    end;

  //data output
  writeln('�������� ������');

  writeln('  ����� ������� X:', n : 3);

  writeln('  �������� ������� X:');
  for i := 1 to n do writeln('   x_', i, x[i] : 4);

  //next part line
  for i := 1 to 120 do write('*');
  writeln;

  writeln('�������� ������');

  writeln('  �������� ������� Y: ');
  for i := 1 to n do
    begin
      write('   y_', i,'  '); writeln(y[i] : 4 : 4);
    end;
  writeln('���-�� ��������������� �:', num : 3);


  write('������� ENTER...');readln
end.
