#Sample script for  database....
select etat, avg(placa_pod) as srednia
from pracownicy 
group by etat
order by srednia

select count(etat)
from pracownicy
where etat like 'PROFESOR'

select id_zesp, sum(placa_pod +NVL(placa_dod,0))
from pracownicy
group by id_zesp

select id_szefa, min(placa_pod) as mala
from pracownicy
GROUP BY id_szefa
order by mala

select etat, sum(placa_pod)*60
from pracownicy
where etat = 'PROFESOR' or ETAT = 'ADIUNKT'
GROUP BY etat


SELECT COUNT(NAZWISKO)
FROM PRACOWNICY
WHERE NAZWISKO LIKE '%O%' and NAZWISKO LIKE '%R%'



SELECT MIN(PLACA_POD), MAX(PLACA_POD)
FROM PRACOWNICY 
WHERE ZATRUDNIONY >'00/01/01' AND ID_SZEFA IN(110, 130)
--GROUP BY ZATRUDNIONY



select p.nazwisko, p.etat, p.id_zesp, z.nazwa
from pracownicy p inner join zespoly z
on p.id_zesp = z.id_zesp


select p.nazwisko, p.id_zesp, z.adres
from pracownicy p inner join zespoly z
on p.id_zesp = z.id_zesp
where z.ADRES LIKE 'P%'

select p.nazwisko, p.etat, p.id_zesp, z.nazwa, z.ADRES
from pracownicy p inner join zespoly z
on p.id_zesp = z.id_zesp
where adres = 'PIOTROWO 3A'
ORDER BY NAZWISKO

select p.nazwisko, z.nazwa, z.ADRES, P.PLACA_POD
from pracownicy p inner join zespoly z
on p.id_zesp = z.id_zesp
WHERE PLACA_POD > 400


SELECT P.NAZWISKO, P.PLACA_POD, E.PLACA_MIN, E.PLACA_MAX
FROM PRACOWNICY P INNER JOIN ETATY E
ON P.PLACA_POD BETWEEN E.PLACA_MIN AND E.PLACA_MAX


SELECT P.NAZWISKO, P.ETAT, E.NAZWA
FROM PRACOWNICY P INNER JOIN ETATY E
ON P.PLACA_POD BETWEEN E.PLACA_MIN AND E.PLACA_MAX
WHERE E.NAZWA = 'SEKRETARKA'


select  nazwisko, sum(Id_prac + id_zesp + placa_pod + NVL(placa_dod, 0)) AS SUMA, 
  case when mod(sum(Id_prac + id_zesp + placa_pod + NVL(placa_dod, 0)),3) = 0 then 'dzielne'
  else 'brak dzielnika'
  end modulo
  FROM PRACOWNICY
  GROUP  BY NAZWISKO

select id_zesp, COUNT(NAZWISKO) AS LICZBA
from pracownicy
GROUP BY ID_ZESP

select NAZWISKO, lengtH(NAZWISKO)
from pracownicy
GROUP BY NAZWISKO

SELECT  NAZWISKO,ETAT,ID_ZESP, 
CONCAT(CONCAT(SUBSTR(NAZWISKO,2,1),SUBSTR(ETAT,3,1)),POWER(ID_ZESP,2)) AS KOD 
FROM PRACOWNICY


select nazwisko, 
TO_CHAR(TO_DATE(ZATRUDNIONY,'YY/MM/DD'),'MONTH') AS MONTH,
TO_CHAR(TO_DATE(ZATRUDNIONY,'YY/MM/DD'),'YY DAY')AS YEAR_DAY
from pracownicy 
where lengtH(NAZWISKO) < 8 AND  ETAT LIKE '%A%' OR ETAT LIKE '%E%'

select nazwisko, zatrudniony, 
Extract(year from zatrudniony)-1980 as lata,
Extract(year from zatrudniony)-1980,
zatrudniony - to_date('80/01/01')
from pracownicy
