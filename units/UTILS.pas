unit UTILS;

interface

Uses
  DBTables, StdCtrls;

procedure LoadComboBoxIndices(Table :TTable; var ComboBox: TComboBox);

implementation

procedure LoadComboBoxIndices(Table :TTable; var ComboBox: TComboBox);
var i:Integer;
begin
  if (Table.IndexDefs.Count > 0) then
    for i := 0 to Table.IndexDefs.Count-1 do
      ComboBox.Items.Add(Table.IndexDefs.Items[i].DisplayName);
end;

end.
