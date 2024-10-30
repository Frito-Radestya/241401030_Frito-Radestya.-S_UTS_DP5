program edric;
uses crt;

var 
    nama, hari, produka, produkb, produkc: string;
    hargaa, hargab, hargac, totalharga, diskon, pembayaran, totaldiskon: real;
    poin: integer;

begin
    clrscr;

    write('Nama Anggota: '); 
    readln(nama);
    write('Hari: '); 
    readln(hari);
    writeln;
    write('Produk(1): '); 
    readln(produka);
    write('Harga: '); 
    readln(hargaa);
    writeln;
    write('Produk(2): '); 
    readln(produkb);
    write('Harga: '); 
    readln(hargab);
    writeln;
    write('Produk(3): '); 
    readln(produkc);
    write('Harga: '); 
    readln(hargac);

    totalharga := hargaa + hargab + hargac;
    diskon := 0;

    if hari = 'Senin' then
        begin
            diskon := 10 + 10;
            totaldiskon := diskon / 100;
        end
    
    else if hari = 'Selasa' then
        begin 
            diskon := 10 + 5;
            totaldiskon := diskon / 100;
        end
    
    else if hari = 'Rabu' then
        begin
            diskon := 10 + 30;
            totaldiskon := diskon / 100;
        end
    
    else if hari = 'Kamis' then
        begin
            diskon := 10 + 8;
            totaldiskon := diskon / 100;
        end;

    pembayaran := totalharga - (totalharga * totaldiskon);
    poin := trunc(totalharga) div 50000;

    writeln;
    writeln('Total: Rp', totalharga:0:0);
    writeln('Diskon: ', diskon:0:0,'%');
    writeln('Pembayaran: Rp', pembayaran:0:0);
    writeln('Poin: ', poin);

    readln;
end.