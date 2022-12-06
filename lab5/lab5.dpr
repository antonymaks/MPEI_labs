program lab5;

{$APPTYPE CONSOLE}

const
   Nmax = 20;

var
  n, i, s_m: integer;
  A: array [1..Nmax] of integer;
  fin, fout: TextFile;


begin
  //in file conf
  AssignFile(fin, ParamStr(1));
  Reset(fin);

  //out file conf
  AssignFile(fout, ParamStr(2));
  Rewrite(fout);

  //read data from file
  readln(fin, n);
  for i := 1 to n do readln(fin, A[i]);

  //check n
  if (n < 2) or (n > 20) then
    begin
      writeln(fout, 'ЛР-5 ВАР-22');
      for i := 1 to 160 do write(fout, '*');
      writeln(fout);
      writeln(fout, 'ОШИБКА' : 80);
      for i := 1 to 160 do write(fout, '*');
      writeln(fout);
      writeln(fout, 'Введено некорректное значение n!');
      writeln(fout, 'Для правильной работы программы');
      writeln(fout, 'введите n в диапазоне 2 <= n <= 20.');

      CloseFile(fin);
      CloseFile(fout)
    end;

  //calculations
  s_m := A[1] + A[2];
  for i := 1 + 1 to n do
    begin
      if a[i] + a[i - 1] < s_m then s_m := a[i] + a[i - 1];
    end;

  //write data to file
  writeln(fout, 'ЛР-5 ВАР-22');

  for i := 1 to 160 do write(fout, '*');
  writeln(fout);
  writeln(fout, 'ВХОДНЫЕ ДАННЫЕ' : 80);
  for i := 1 to 160 do write(fout, '*');
  writeln(fout);

  writeln(fout, 'Длинна масссива A: ', n : 3);
  writeln(fout, 'Массив A: ');
  for i := 1 to n do writeln(fout, '    ', i : 2,') ', A[i] : 4);
  writeln(fout);

  for i := 1 to 160 do write(fout, '*');
  writeln(fout);
  writeln(fout, 'ВЫХОДНЫЕ ДАННЫЕ' : 80);
  for i := 1 to 160 do write(fout, '*');
  writeln(fout);

  writeln(fout, 'Минимальная сумма соседних элементов: ', s_m : 4);
  writeln(fout);

  //files close
  CloseFile(fin);
  CloseFile(fout)
end.
