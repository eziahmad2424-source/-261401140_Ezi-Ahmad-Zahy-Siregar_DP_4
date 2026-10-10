
program KalkulatorSederhana;
uses crt;

var
  Pilihan: integer;
  A, B, Hasil: real;
  Ulang: char;
  Bil1, Bil2: integer;

begin
  clrscr;

  repeat
    writeln('===== KALKULATOR SEDERHANA =====');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV dan MOD');
    writeln('================================');
    write('Pilih operasi (1-5): ');
    readln(Pilihan);

    case Pilihan of
      1:
        begin
          write('Masukkan angka pertama: ');
          readln(A);
          write('Masukkan angka kedua: ');
          readln(B);
          Hasil := A + B;
          writeln('Hasil penjumlahan = ', Hasil:0:2);
        end;

      2:
        begin
          write('Masukkan angka pertama: ');
          readln(A);
          write('Masukkan angka kedua: ');
          readln(B);
          Hasil := A - B;
          writeln('Hasil pengurangan = ', Hasil:0:2);
        end;

      3:
        begin
          write('Masukkan angka pertama: ');
          readln(A);
          write('Masukkan angka kedua: ');
          readln(B);
          Hasil := A * B;
          writeln('Hasil perkalian = ', Hasil:0:2);
        end;

      4:
        begin
          write('Masukkan angka pertama: ');
          readln(A);
          write('Masukkan angka kedua: ');
          readln(B);

          if B <> 0 then
          begin
            Hasil := A / B;
            writeln('Hasil pembagian = ', Hasil:0:2);
          end
          else
            writeln('Error: Pembagian dengan nol tidak diperbolehkan!');
        end;

      5:
        begin
          write('Masukkan bilangan bulat pertama: ');
          readln(Bil1);
          write('Masukkan bilangan bulat kedua: ');
          readln(Bil2);

          if Bil2 <> 0 then
          begin
            writeln('Hasil DIV = ', Bil1 div Bil2);
            writeln('Hasil MOD = ', Bil1 mod Bil2);
          end
          else
            writeln('Error: Pembagian dengan nol tidak diperbolehkan!');
        end;

    else
      writeln('Pilihan tidak valid!');
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(Ulang);
    clrscr;

  until (Ulang = 'T') or (Ulang = 't');

  writeln('Terima kasih telah menggunakan kalkulator!');
  readln;
end.