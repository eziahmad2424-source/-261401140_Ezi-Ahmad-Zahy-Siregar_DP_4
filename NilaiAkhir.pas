
program NilaiAkhirMatkul;
uses crt;

var
  Tugas, UTS, UAS, Kehadiran, NilaiAkhir: real;
  Indeks: char;
  Status: string;

begin
  clrscr;

  writeln('===== PROGRAM NILAI AKHIR MATA KULIAH =====');

  write('Masukkan Nilai Tugas: ');
  readln(Tugas);

  write('Masukkan Nilai UTS: ');
  readln(UTS);

  write('Masukkan Nilai UAS: ');
  readln(UAS);

  write('Masukkan Kehadiran (%): ');
  readln(Kehadiran);

  NilaiAkhir := (Tugas * 0.30) + (UTS * 0.30) + (UAS * 0.40);

  if (NilaiAkhir >= 60) and (Kehadiran >= 80) then
    Status := 'LULUS'
  else
    Status := 'TIDAK LULUS';

  if NilaiAkhir >= 85 then
    Indeks := 'A'
  else if NilaiAkhir >= 75 then
    Indeks := 'B'
  else if NilaiAkhir >= 60 then
    Indeks := 'C'
  else if NilaiAkhir >= 50 then
    Indeks := 'D'
  else
    Indeks := 'E';

  writeln;
  writeln('===== HASIL NILAI AKHIR =====');
  writeln('Nilai Akhir : ', NilaiAkhir:0:2);
  writeln('Indeks Huruf: ', Indeks);
  writeln('Status      : ', Status);

  readln;
end.