program lab4;

{$APPTYPE CONSOLE}

const
  Nmax = 20;
  pi = 3.14159265 ;

var
  n, i, r, num: integer;
  p, sr, sx, cx: real;
  x: array [1 .. Nmax] of integer;
  y: array [1.. Nmax] of real;
  fin: TextFile;
  fout: TextFile;

begin
  //in file config
  AssignFile(fin, 'G:\учёба\ВУЗ\1 сем\прог\лаб\ЛР-4\inpt.txt');
  Reset(fin);

  //out file config
  AssignFIle(fout, 'G:\учёба\ВУЗ\1 сем\прог\лаб\ЛР-4\outpt.txt');
  Rewrite(fout);

  //read data from file
  readln(fin, n);
  for i := 1 to n do readln(fin, x[i]);

  //calculations
  for i := 1 to n do
    begin
      if x[i] > 0 then
        begin
           sx := (sin((x[i] * pi) / 180));
           y[i] := 1 - sx
        end;

      if x[i] <= 0 then
        begin
          cx := -(cos((abs(x[i]) * pi) / 180));
          y[i] := 1 - cx
        end;

      if x[i] >= 0 then num := num + 1
    end;


  //write data to file
  writeln(fout, 'ЛР-4 ВАР-22');

  for i := 1 to 160 do write(fout, '*');
  writeln(fout);
  writeln(fout, 'ВХОДНЫЕ ДАННЫЕ' : 80);
  for i := 1 to 160 do write(fout, '*');
  writeln(fout);

  writeln(fout, 'Длинна масссива Х: ', n);
  writeln(fout, 'Массив Х(градусные меры углов): ');
  for i := 1 to n do writeln(fout, '    ', i : 2,') ', x[i] : 4);
  writeln(fout);

  for i := 1 to 160 do write(fout, '*');
  writeln(fout);
  writeln(fout, 'ВЫХОДНЫЕ ДАННЫЕ' : 80);
  for i := 1 to 160 do write(fout, '*');
  writeln(fout);

  writeln(fout, 'Количество неотрицательных Х: ', num);
  writeln(fout, 'Массив Y: ');
  for i := 1 to n do writeln(fout, '    ', i : 2,') ', y[i] : 6 : 6);
  writeln(fout);

  //files close
  CloseFile(fin);
  CloseFile(fout)
end.
