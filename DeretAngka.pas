
program DeretAngka;
uses crt;

var
  N, Pilihan, i: integer;

begin
  clrscr;

  write('Masukkan nilai N: ');
  readln(N);

  writeln('Pilih kategori deret:');
  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Pilihan Anda: ');
  readln(Pilihan);

  if (Pilihan <> 1) and (Pilihan <> 2) then
  begin
    writeln('Pilihan tidak valid!');
  end
  else
  begin
    writeln('Deret angka hasil penyaringan:');

    i := 1;

    while i <= N do
    begin
      if (i mod 5 = 0) then
      begin
        i := i + 1;
        continue;
      end;

      if (Pilihan = 1) and (i mod 2 = 0) then
      begin
        i := i + 1;
        continue;
      end;

      if (Pilihan = 2) and (i mod 2 <> 0) then
      begin
        i := i + 1;
        continue;
      end;

      write(i, ' ');
      i := i + 1;
    end;

    writeln;
  end;

  readln;
end.