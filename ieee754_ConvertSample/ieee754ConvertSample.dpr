program ieee754ConvertSample;

uses
  Forms,
  MainCode in 'MainCode.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
