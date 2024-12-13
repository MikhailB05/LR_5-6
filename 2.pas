program dva;

var
  arr: array[1..20] of integer;
  i: integer;
  J: boolean; 

begin
  writeln('Введите 20 целых чисел:');
  for i := 1 to 20 do
    readln(arr[i]);

  J := false; 
  for i := 1 to 19 do
    if arr[i] > arr[i+1] then
    begin
      J := true; 
    end;


  if J then
    writeln('Массив НЕ упорядочен по возрастанию.')
  else
    writeln('Массив упорядочен по возрастанию.');

end.
