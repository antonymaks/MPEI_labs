program lab8;

const
  Nmax = 10;

var
  fin, fout: TextFile;
  i, j, n, m, sum: integer;
  a: array [1 .. Nmax, 1 .. Nmax] of integer;
  x: array [1 .. Nmax] of integer;
  max_str: integer;

begin
  //file config
  AssignFile(fin, ParamStr(1));
  Reset(fin);

  AssignFile(fout, ParamStr(2));
  Rewrite(fout);

  //read data
  readln(fin, n, m);
  for i := 1 to n do
    begin
      for j := 1 to m do read(fin, a[i, j]);
      readln(fin);
    end;

  // calculations
  {summ}
  sum := 0;
  for i := 1 to n do
    begin
      for j := 1 to m do sum := sum + a[i,j];
    end;

  {arr X}
  for i := 1 to n do
    begin
      x[i] := 1;
      for j := 1 to m do
        begin
          if (a[i, i] <= a[i, j]) and (i <> j) then
          begin
            x[i] := 0;
            //break;
          end;
        end;
    end;


  //write data
  writeln(fout, n,' ', m);
  for i := 1 to n do
    begin
      for j := 1 to m do write(fout, a[i, j], ' ');
      writeln(fout);
    end;

  writeln(fout, sum);

  for i := 1 to n do write(fout, x[i], ' ');



  //close file
  CloseFile(fin);
  CloseFile(fout)
end.
