program lab2;

{$APPTYPE CONSOLE}

uses
  Windows;

const
  Nmax = 20;
  pi = 3.14159265;

var
  n, i, num: integer;
  sr, sx, cx: real;
  x: array [1 .. Nmax] of integer;
  y: array [1 .. Nmax] of real;

begin
  //console lang
  setConsoleCP(1251);
  setConsoleOutputCP(1251);

  //data input
  writeln('��-2 ���-22' : 65);
  writeln('������ ������� X:');readln(n);
  writeln('������� ����� � �������� (������ �):');
  for i := 1 to n do readln(x[i]);

  //next part line
  for i := 1 to 120 do write('=');
  writeln;

  //abstraction A0.2
  for i := 1 to n do
    begin
      y[i] := x[i] + 1;
      num := num + 1
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
      write('   y_', i); writeln(y[i] : 4);
    end;
  writeln('���-�� ��������������� �:', num : 5);

  write('������� ENTER...');readln
end.
