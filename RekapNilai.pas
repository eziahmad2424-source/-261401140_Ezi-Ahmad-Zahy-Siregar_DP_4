
program RekapNilaiMahasiswa;
uses crt;

var
  M, N, i, j: integer;
  Nilai, Total, RataRata: real;
  Lulus, TidakLulus: integer;

begin
  clrscr;

  write('Masukkan jumlah mahasiswa: ');
  readln(M);

  write('Masukkan jumlah nilai tugas: ');
  readln(N);

  Lulus := 0;
  TidakLulus := 0;

  for i := 1 to M do
  begin
    Total := 0;

    writeln;
    writeln('Mahasiswa ke-', i);

    for j := 1 to N do
    begin
      write('Masukkan nilai tugas ke-', j, ': ');
      readln(Nilai);
      Total := Total + Nilai;
    end;

    RataRata := Total / N;

    writeln('Rata-rata nilai: ', RataRata:0:2);

    if RataRata >= 65 then
    begin
      writeln('Status: LULUS');
      Lulus := Lulus + 1;
    end
    else
    begin
      writeln('Status: TIDAK LULUS');
      TidakLulus := TidakLulus + 1;
    end;
  end;

  writeln;
  writeln('===== REKAPITULASI NILAI =====');
  writeln('Total mahasiswa       : ', M);
  writeln('Mahasiswa LULUS       : ', Lulus);
  writeln('Mahasiswa TIDAK LULUS : ', TidakLulus);

  readln;
end.