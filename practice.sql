select * from country;
select * from city;
select * from countryLanguage;

# velika mala slova
select upper(Name) from country;
select lower(Name) from country;

# trenutacno vrijeme
select now();

# operatori uspoređivanje
# =, != (<>), <, >, <= i >=
select * from country where SurfaceArea=1200;
select * from country where SurfaceArea !=1200;
select * from country where SurfaceArea <6000;
select * from country where SurfaceArea >6000;
select * from country where SurfaceArea >=10000;
select * from country where SurfaceArea <=10000;

# logički operatori - booleovi operatori
# and, or i not
select * from country where SurfaceArea>=2000 and SurfaceArea<=20000;
select * from country where SurfaceArea>=2000 or SurfaceArea<=20000;
select * from country where not (
SurfaceArea=20000 or ((SurfaceArea>=20000 and SurfaceArea<=42000) or SurfaceArea=25000));

# in, between, like, is null i is not null
select * from country where SurfaceArea in(500,1500);
select * from country where SurfaceArea between 800 and 1500;


#sve drzave čije ime počinje slovom J
select * from country where Name like 'J%';


# VJEŽBANJE

# baza mjesta
# odaberite sva mjesta koja se nalaze na kontinentu Asia
select * from country where Continent='Asia';


# odaberite sva mjesta koja u sebi umaju niz znakova pan
select * from country where Name like '%pan%';

# odaberite sva mjesta koja ne završavaju s nizom znakova ia
select * from country where Name not like '%ia';

#broj redaka u tablici
select count(*) from country;

#kojem kontinentu pripada Japan
select * from country where Name='Japan';


#koliko ima drzava u Europi
select count(*) from country where continent='Europe';


#odaberi sva mjesta koja su u South America i North America; logički operator !
select * from country where continent='South America';
select * from country where continent='North America';
select * from country where continent in('Africa','North America');

#odaberi sva mjesta koja nisu u South America i North America; logički operator !
select * from country where continent not in('South America','North America');

#update naredba
update country set Name='Japannnnnn' where Name like '%ina';
select * from country where Name='Japannnnnn';