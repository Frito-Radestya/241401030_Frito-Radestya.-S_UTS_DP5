program fibonaci;
uses crt;

var 
    n, i, a, b, next, total: integer;

begin
clrscr;

  write('Masukkan nilai batas (N): ');
  readln(n);

  a := 0;
  b := 1;
  total := 0;

  write('Sequence = ');
  
  for i := 1 to n do
  begin
    if i = 1 then
      next := a
    else if i = 2 then
      next := b
    else
    begin
      next := a + b;
      a := b;
      b := next;
    end;

    write(next);
    if i < n then
      write(', ');  

    total := total + next;
  end;

  writeln;
  writeln('Total = ', total);
end.