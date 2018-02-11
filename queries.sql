

1)  SELECT sid, name FROM student
	WHERE sid IN 
	(SELECT sid FROM memberof 
		WHERE memberof.tid NOT IN (SELECT tid FROM teams)
	)
	
SID, Name
338, Deloris Fincken
310, Gaby Roddick
515, Urbain Wipper
210, Octavius des Remedios
213, Chico Pendrigh
629, Konstanze Audley
239, Dante Henriques
716, Cicily Hatchell
878, Mitch Cowoppe
203, Berenice Farran
641, Leland Gipp


2)  SELECT teams.tid, student.sid, name FROM memberof
	JOIN student ON student.sid = memberof.sid
	JOIN teams ON memberof.tid = teams.tid
    ORDER BY teams.tid
	
TID, SID, Name
101, 842, Ola Redwall
101, 826, Harry Pritchett
101, 138, Rowan Dioniso
152, 298, Germayne Espasa
152, 465, Nicolle Artist
152, 998, Shayla Kilby
152, 295, Skipp Laird
183, 594, Simeon McNicol
183, 647, Hillary Geratt
183, 909, Gawain Lamberti
183, 173, Thorn Harome
250, 953, Tom Grier
250, 313, Glenna Daid
250, 947, Chaim Smidmoor
250, 674, Doloritas Kleuer
264, 492, Mommy Dayes
264, 321, Austin Cradoc
421, 731, Blithe MacShirie
421, 951, Araldo Griswood
446, 223, Nat Tebbut
446, 751, Constantin Heimann
467, 532, Pooh de Verson
467, 349, Hillary Schellig
467, 727, Valene Christoffersen
467, 325, Myranda Etty
483, 248, Arte Malyon
483, 414, Bride Basilotta
494, 709, Winnie Barczewski
494, 850, Lyndsey Frosch
615, 145, Jacinta Chace
615, 233, Jed Limb
615, 426, Alistair Ozintsev
615, 235, Corliss Sparwell
684, 605, Angelico Antoniewski
684, 608, Linnet Keeri
684, 378, Euell Payne
703, 694, Bette-ann Hoffmann
703, 266, Mayer Lowry
703, 614, Jacques Degoey
736, 650, Meredith Handover
736, 135, Conan Vondra
736, 529, Alejandro Broodes
750, 902, Ianthe Langmead
750, 744, Goldarina Meachem
750, 996, Cherilyn Clemonts
750, 163, Kimbra Clatworthy
859, 208, Bertrand Tumelty
859, 833, Hersch Havers
859, 695, Kerrie Handyside
907, 134, Doris Ortet
907, 498, Chucho Wainwright
932, 693, Birgit Gentle
932, 416, Karl Paoletto
932, 708, Ivonne Biddell
978, 346, Valina Heaker
978, 750, Richmound Cubbini
988, 412, Teresina Stoppe
988, 570, Estell O' Mahony
988, 587, Helen-elizabeth Gerber

	
	