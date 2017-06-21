/*
 * Run this script into your schema and enjoy this app
 */

-- Dumping database structure for magazin_online
CREATE DATABASE IF NOT EXISTS `magazin_online` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `magazin_online`;

-- Dumping structure for table magazin_online.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `username` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table magazin_online.accounts: ~5 rows (approximately)
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` (`username`, `pass`) VALUES
	('andreea', '12345'),
	('ionut', '23456'),
	('mihai', '34567'),
	('razvan', '45678'),
	('ana', '56789');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;

-- Dumping structure for table magazin_online.produs
CREATE TABLE IF NOT EXISTS `produs` (
  `id` int(3) NOT NULL,
  `pret` int(9) DEFAULT NULL,
  `denumire` varchar(200) DEFAULT NULL,
  `stoc` int(7) DEFAULT NULL,
  `numePoza` varchar(100) DEFAULT NULL,
  `descriere` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table magazin_online.produs: ~9 rows (approximately)

INSERT INTO `produs` (`id`, `pret`, `denumire`, `stoc`, `numePoza`, `descriere`) VALUES
	(1, 80, 'Crema de zi', 50, 'c_zi.jpg', 'Crema cu actiune intensive pentru fata si gat. Actiune de densificare si netezire prin actiunea lipo-restructuranta. Pro-Xylane – o noua molecula de densificare, intareste Phyto-Complexul de Soia pentru a recrea o piele densa si consistenta.\r\nIzobiolin ajuta la refacerea lipo-structurii pentru a reconstrui zonele de sustinere a pielii. Instantaneu, pielea este hranita, trasaturile sunt netezite. Dupa 8 saptamani, pielea isi recapata densitatea si fermitatea. Trasaturile fetei si conturul gatului sunt vizibil remodelate.'),
	(2, 85, 'Crema de noapte', 50, 'c_noapte.jpg', 'Avon Anew Platinum Night Cream este o crema de noapte cu efecte intense, recomandata femeilor peste 55 de ani, care reface pielea in profunzime.  Crema reda fermitatea pielii si previne aparitia ridurilor profunde.  Produsul contine complexul Paxillium, care are ca scop cresterea producerii de paxillin cu pana 60%, o proteina care are ca efect mentinerea celulelor tinere. O data cu inaintarea in varsta, pielea isi pierde fermitatea si elasticitatea, iar procesul de formare a colagenului este incetinit, efect observat chiar pe pielea ta. '),
	(3, 80, 'Crema hidratanta', 60, 'c_hid.jpg', 'Vichy Aqualia Thermal Fortifying, Soothing and 24hr Hydrating Care Light Texture pentru piele sensibila este un produs special creat pentru pielea deshidratata si are ca efect hidratarea pielii si calmarea sa pentru 24 de ore. Pentru realizarea acestui produs a fost folosita o tehnologie noua ce combina efrectele benefice ale apei termale Vichy cu  revolutionarul acid hyaluronic ce are un efect hidratant intens.'),
	(4, 150, 'Crema antirid', 60, 'c_antirid.jpg', 'Crema Vichy Neovadiol Complex Substitutiv pentru tenul matur uscat este o crema reactivatoare fundamentala pentru tenul matur ce confera densitate, elasticitate, volum redefinit si luminozitate tenului dumneavoastra.'),
	(5, 90, 'Crema pentru ten uscat', 80, 'c_t_uscat.jpg', 'Confort şi flexibilitate conferite tenului timp de 24h. Tenul uscat este pregătit progresiv pentru a redeveni normal.Aplicaţi zilnic, dimineaţa şi/sau seara, pe pielea perfect curăţată. Masaţi delicat pentru a pătrunde rapid în piele. Nutrilogie permite un machiaj imediat.'),
	(6, 60, 'Crema pentru ten mixt', 80, 'c_t_mixt.jpg', 'Crema cu efect de netezire si iluminare. Pentru toate femeile, indiferent de varsta, tip sau nuanta a tenului.Calitate ideala a tenului: ten netezit, riduri diminuate, culoare uniforma. '),
	(7, 65, 'Crema pentru ten gras', 60, 'c_t_gras.jpg', 'Crema energizantă cu efect de netezire și iluminare acționează simultan asupra uniformității, a luminozității naturale și a texturii pielii (linii fine, pori) pentru un efect de durată, chiar și în cazul oboselii. Porii și liniile fine par reduse. Hidratare 24h'),
	(8, 60, 'Crema revitalizanta', 60, 'c_revit.jpg', 'Crema de zi cu zi Vichy Neovadiol GF, pentru revitalizare si  restaurare, este un accesoriu indispensabil in ingrijirea regulata a pielii, fiin conceputa in special pentru femeile cu pielea foarte uscata. Crema Vichy Neovadiol GF este hipoalergenica si contine ingrediente active care contribuie la refacerea rapida a aspectului tineresc al tenului dumneavoastra. Ofera o ingrijire intensiva a pielii, restabileste elasticitatea acesteia, previne uscarea tenului, oferind totodata un aspect compact. Non-comedogenic. Permite o aplicare usoara. Pentru utilizarea zilnica.'),
	(9, 105, 'Crema anticearcane', 59, 'c_anticearcane.jpg', 'Liftactiv Serum 10 pentru ochi si gene este primul serum antirid cu rol de fortifiere a genelor. Secretul formulei ? Aceasta contine ramnoza 10% – primul ingredient activ de origine vegetala capabil sa stimuleze activitatea dermului papilar –, iluminatori pentru a reflecta lumina si ceramide – lipide ce se gasesc in mod natural in genele tinere, cu rol de fortifiere, regenerare si protectie a genelor. Are un efect de lifting, reduce ridurile si ne face genele mai puternice. Serumul poate fi folosit si de purtatoarele de lentile de contact');

