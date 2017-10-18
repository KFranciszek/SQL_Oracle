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

