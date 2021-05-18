select * from smjer
where sifra<10;

select * from osoba;

# osnova select narewdba koristi samo select
select 5;


# djelovi select naredbe
# select lista - filtriranje kolona
# * - sve kolone
select * from osoba;
# nazivi kolona odvojeni zarezom
select ime, prezime from osoba;
# kolonama se mogu dati zamjensa imena
select ime as naziv from osoba;
select oib as kljuc, ime, prezime from osoba;
select ime, prezime, ime, prezime from osoba;
select *,ime from osoba;
# može se nalaziti i konstanta
select ime, prezime, 'Osijek' as mjesto from osoba;
select 1,2,'Pero' from osoba;
# može se još nalaziti izraz (funckija)
select upper(ime), lower(left(ime,1)) from osoba;
select now();


# filtriranje redova
# primarni ključ u where osigurava jedan red
select * from osoba where sifra=1;

# where radi s operatorima
# operatori uspoređivanje
# =, != (<>), <, >, <= i >=
select * from osoba where sifra<5;
select * from osoba where sifra!=5;
select * from osoba where sifra<>5;
select * from osoba where sifra<=5;

# logički operatori - booleovi operatori - https://introcs.cs.princeton.edu/java/71boolean/images/truth-table.png
# and, or i not
select * from osoba
where sifra>=3 and sifra<=5;

select * from osoba where sifra=3 or sifra=5;

select * from osoba where not (
sifra=1 or ((sifra>=8 and sifra<=9) or sifra=12));

# ostali operatori
# in, between, like, is null i is not null

select * from grupa where datumpocetka is not null;

select * from osoba where sifra=5 or sifra=8 or sifra=12;
select * from osoba where sifra in (5,8,12);

select * from osoba where sifra>=5 and sifra<=10;
select * from osoba where sifra between 5 and 10;

select * from osoba where ime='Josip';

#sve osobe čije ime počinje slovom J
select * from osoba where ime like 'J%';

select * from osoba where ime like '%om%';

select * from osoba where ime not like '%a';

# VJEŽBANJE

# baza mjesta
# odaberite sva mjesta koja se nalaze u Osječko baranjskoj
# županiji
select * from mjesto;
select * from mjesto where postanskibroj like '31%';

# odaberite sva mjesta koja u sebi umaju niz znakova guz
select * from mjesto where naziv like '%guz%';

# odaberite sva mjesta koja ne završavaju s nizom znakova ar


# baza knjiznica
# odaberite sve autori za koje ne znamo datum rođenja

# odaberite autore koji su rođeni na Vaš datum rođenja
# uključujući i godinu

select * from autor where datumrodenja='1980-12-07';

# odaberite autore koji se zovu kao Vi

# odaberite sve izdavače koji su 
# društva s ograničenom odgovornošću

select * from izdavac where naziv like '%d.o.o.'
or naziv like '%d.o.o%';

# baza world
# odaberite sve zemlje iz Europe

# unesite mjesto Donji Miholjac

# Promjenite Donji Miholjac u Špičkovinu

# Obrišite mjesto Špičkovina


