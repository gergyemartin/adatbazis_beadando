A feladatot készítette:
Gergye Martin
Pásztor Bálint Márk
Zakócs János

Egy autókereskedés SQL adatbázisát valósítottuk meg.
A kereskedés új, és használt autókkal is kereskedik.
Az adatokat "kézzel" generáltuk, így ezek nem minden esetben reálisak.
Az adatbázisban csak olyan autók szereplnek, amit a kereskedés még nem adott el.
Az adatbázis 9 táblából áll.

Leírás az adatbázis jobb átlátásához:
táblák:
tarolasi_helyek:
	raktar_id
	raktar_nev

auto_helye:
	rendszam
	raktar_id

auto_tulajdonsag:
	rendszam
	modell_id <- Az modellek id-t kapnak márka és típus szerint
	használt <- Bool változó
	állapot <- Az autó állapota egy 10-es skálán (10-es a legjobb)
	km
	listaar <- Az autó újkori listaára

auto_tipus
	modell_id
	marka
	tipus

veteli_tulajdonsag
	rendszam
	elado_neve <- Akitől a kereskedés vásárolta az autót
	vetelar <- Amennyiért a kereskedés vásárolta az autót
	vetel_idopont

tranzakcio
	tranzakcio_id <- Az eladási folyamat azonosítója
	rendszam

eladasi_infok
	tranzakcio_id
	ker_id <- Az autó eladásáért felelős kereskedő ID-ja
	optimalis_eladasi_ar <- Amennyiért a kereskedés szeretné eladni az autót
	minimum_eladasi_ar <- A minimum ár, amennyiért az autót még veszteség nélkül adja el a kereskedés

kereskedok
	ker_id
	telefon_id
	nev
	bonusz <- Amennyi jutalmat kap a kereskedő, eladásonként

telefon
	telefon_id
	telefonszam