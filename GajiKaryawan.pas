
program GajiKaryawan;

var
  Golongan: char;
  JamKerja, JamLembur: integer;
  GajiPokok, Lembur, Bonus, TotalGaji: longint;

begin
  writeln('=== PROGRAM GAJI KARYAWAN ===');

  write('Masukkan golongan (A/B/C): ');
  readln(Golongan);

  write('Masukkan total jam kerja per minggu: ');
  readln(JamKerja);

  case Golongan of
    'A', 'a': GajiPokok := 1500000;
    'B', 'b': GajiPokok := 2000000;
    'C', 'c': GajiPokok := 2500000;
  else
    GajiPokok := 0;
  end;

  if GajiPokok = 0 then
    writeln('Golongan tidak valid!')
  else
  begin
    if JamKerja > 40 then
      JamLembur := JamKerja - 40
    else
      JamLembur := 0;

    Lembur := JamLembur * 20000;
    Bonus := 0;

    if (Golongan = 'C') or (Golongan = 'c') then
      if JamKerja > 50 then
        Bonus := 100000;

    TotalGaji := GajiPokok + Lembur + Bonus;

    writeln;
    writeln('=== RINCIAN GAJI ===');
    writeln('Gaji Pokok  : Rp', GajiPokok);
    writeln('Jam Lembur  : ', JamLembur, ' jam');
    writeln('Upah Lembur : Rp', Lembur);
    writeln('Bonus       : Rp', Bonus);
    writeln('Total Gaji  : Rp', TotalGaji);
  end;

  readln;
end.