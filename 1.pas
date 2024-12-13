program odin;

var
  arr: array[1..20] of integer;
  i: integer;

begin
  writeln('Введите 20 целых чисел:');
  for i := 1 to 20 do

    readln(arr[i]);

  for i := 1 to 20 do
  begin
    if arr[i] > 0 then
      arr[i] := 0
    else if arr[i] < 0 then
      arr[i] := sqr(arr[i]);
  end;

  writeln('Измененный массив:');
  for i := 1 to 20 do
    write(arr[i]:2); 
  writeln;

end.