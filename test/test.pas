program Test;

uses SysUtils;

type
  TPerson = record
    ID: Integer;
    Name: string;
  end;

var
  person: TPerson;
  i: Integer;

function Add(a, b: Integer): Integer;
begin
  Result := a + b;
end;

begin
  person.ID := 1;
  person.Name := 'Tom';

  for i := 1 to 5 do
  begin
    WriteLn('Hello ', person.Name, '! ', i, ' + 2 = ', Add(i, 2));
  end;
end.
