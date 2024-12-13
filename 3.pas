program tri;

var
  arr: array[1..20] of Integer;
  i, minIndex, firstPositiveIndex: Integer;
  foundPositive: Boolean;

begin

  for i := 1 to 20 do
  begin
    arr[i] := Random(101) - 50;
    Write(arr[i], ' ');
  end;

  Writeln;

  foundPositive := False;
  firstPositiveIndex := -1;

  for i := 1 to 20 do
  begin
    if (arr[i] > 0) and (not foundPositive) then
    begin
      firstPositiveIndex := i;
      foundPositive := True;
    end;
  end;

  if foundPositive then
  begin
    for i := firstPositiveIndex to 20 - 1 do
      arr[i] := arr[i + 1];
  end;

  minIndex := 1;
  for i := 2 to 20 do
  begin
    if arr[i] < arr[minIndex] then
      minIndex := i;
  end;

  for i := minIndex to 20 - 1 do
    arr[i] := arr[i + 1];
  
  Writeln('Массив после удаления:');
  for i := 1 to 18 do
    Write(arr[i],' ');

end.

