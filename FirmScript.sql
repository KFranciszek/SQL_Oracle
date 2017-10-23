create table USLUGI (id_USLUGI int, nazwa varchar2(36));
create table faktura (id_faktura int , usluga VARCHAR2(36), kwota int, vat int);
create table firma (id_firma int, nazwa VARCHAR2(36), miasto VARCHAR2(20), ulica VARCHAR2(20), nr INT, nip CHAR(11));


insert into firma VALUES (12, 'PiekarniaJana', 'Warszawa', 'Malinowa', 45,5269486274);
insert into firma VALUES (22, 'FastFood', 'Lodz', 'Jerzynowa', 1,8991935172);
insert into firma VALUES (34, 'ModnaModa', 'Wroclaw', 'Truskawkowa', 33,1295170424);
insert into firma VALUES (66, 'Fryzjer', 'Warszawa', 'Nowa', 66,5190040139);
insert into firma VALUES (2, 'Sklep Madzi', 'Poznan', 'Stara', 2,7560538193);



insert into USLUGI VALUES (34, 'Sprzedaz pieczywa');
insert into USLUGI VALUES (46, 'Sprzedaz posilkow');
insert into USLUGI VALUES (55, 'Sprzedaz ubran');
insert into USLUGI VALUES (43, 'Usluga fryzjerska');
insert into USLUGI VALUES (67, 'Sprzedaz produktow zywnosciowych');


insert into faktura VALUES (232017, 'Sprzedaz pieczywa', 30, 6);
insert into faktura VALUES (102017, 'Sprzedaz posilkow', 60, 23);
insert into faktura VALUES (442017, 'Sprzedaz ubran', 300, 23);
insert into faktura VALUES (12017, 'Usluga fryzjerska', 50, 7);
insert into faktura VALUES (332017, 'Sprzedaz produktow zywnosciowych', 150, 23);





