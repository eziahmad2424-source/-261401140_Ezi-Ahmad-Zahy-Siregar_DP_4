
program TotalBelanja;
uses crt;

var
  N, i: integer;
  Harga, Total, Diskon, TotalBayar: real;

begin
  clrscr;

  write('Masukkan jumlah barang: ');
  readln(N);

  Total := 0;

  for i := 1 to N do
  begin
    write('Masukkan harga barang ke-', i, ': ');
    readln(Harga);
    Total := Total + Harga;
  end;

  if Total < 100000 then
    Diskon := 0
  else if Total < 500000 then
    Diskon := Total * 10 / 100
  else
    Diskon := Total * 20 / 100;

  TotalBayar := Total - Diskon;

  writeln;
  writeln('=== RINCIAN BELANJA ===');
  writeln('Total sebelum diskon: Rp', Total:0:0);
  writeln('Besar diskon        : Rp', Diskon:0:0);
  writeln('Total bayar akhir   : Rp', TotalBayar:0:0);

  readln;
end.