
program LoginPassword;
uses crt;

var
  Password, Rahasia: string;
  Percobaan: integer;

begin
  clrscr;

  Rahasia := 'pascal123';
  Percobaan := 0;

  repeat
    write('Masukkan kata sandi: ');
    readln(Password);

    Percobaan := Percobaan + 1;

    if Password = Rahasia then
    begin
      writeln('Login Berhasil! Selamat Datang');
      break;
    end
    else
    begin
      writeln('Kata sandi salah!');

      if Percobaan < 3 then
        writeln('Sisa percobaan: ', 3 - Percobaan);
    end;

  until Percobaan >= 3;

  if Password <> Rahasia then
    writeln('Akses Ditolak! Akun Terkunci.');

  readln;
end.