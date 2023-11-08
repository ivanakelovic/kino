-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 14, 2022 at 08:29 AM
-- Server version: 5.7.23
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tmp`
--

-- --------------------------------------------------------

--
-- Table structure for table `kino`
--

DROP TABLE IF EXISTS `kino`;
CREATE TABLE IF NOT EXISTS `kino` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(255) NOT NULL,
  `reditelj` varchar(255) NOT NULL,
  `zanr` varchar(255) NOT NULL,
  `trajanje` varchar(255) NOT NULL,
  `drzava` varchar(255) NOT NULL,
  `opis` text NOT NULL,
  `3d` tinyint(1) NOT NULL DEFAULT '0',
  `slika` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kino`
--

INSERT INTO `kino` (`id`, `naziv`, `reditelj`, `zanr`, `trajanje`, `drzava`, `opis`, `3d`, `slika`) VALUES
(1, 'VJEČNICI', 'Chloé Zhao', 'akcija, avantura', '156 min', 'SAD', 'Besmrtni superjunaci, od kojih svaki ima posebnu energiju i razlikuje se od ostalih članova, \r\nizlaze iz tajnosti kako bi zajedno s ljudima obranili život na Zemlji.\r\nRadnja filma se odvija nakon filma „Osvetnici: Završnica“, kada novi zaštitnici Zemlje izlaze iz sjene i okupljaju se protiv najstarijeg neprijatelja čovječanstva, Devijanata.', 0, 'vjecnici.jpg'),
(2, 'LJUBAV OKO SVIJETA', 'Anđela Rostuhar, Davor Rostuhar', 'dokumentarni', '74 min', 'Hrvatska', 'Od dubokih amazonskih šuma i zabačenih sela na Himalaji, \r\npreko malih pacifičkih zemalja i afričkih slamova, \r\nsve do najvećih svjetskih metropola.\r\nOvaj zapanjujući dokumentarac prikazuje nam 33 različite priče o ljubavi i braku, izazovima i borbama, usponima i padovima,\r\nstvarajući jedinstvenu ljubavnu priču koja nas podsjeća kako ljubav nikada ne može biti jednostavna, \r\nali kako je, istovremeno, tek nekoliko stvari na Zemlji jednostavno poput ljubavi.', 0, 'ljubav_oko_svijeta.jpg'),
(3, 'DINA', 'Denis Villeneuve', 'SF, avantura', '155 min', 'SAD', 'Priča prati Paula Atreidesa iz kuće Atreides, \r\nsjajnog i nadarenog mladića rođenog za velike stvari,\r\nkoji mora otputovati na najopasniji planet u svemiru kako bi osigurao budućnost svoje obitelj i svog naroda. \r\nNađe se usred sukoba oko ekskluzivne opskrbe najcjenjenijim resursom koji postoji, \r\nnajvrijednijem elementu galaksije koji se nalazi samo na Arrakisu i koji može otključati najveći potencijal čovječanstva, \r\nu kojem će preživjeti samo oni koji mogu pobijediti svoj strah.', 1, 'dina.jpg'),
(4, 'Nesavršeni robot Ron', 'Sarah Smith, Jean-Philippe Vine, Octavio E. Rodriguez', 'animirani', '107 min', 'SAD', 'Ovo je priča o Barneyju, neobičnom dječaku koji se bori s vladavinom društvenih medija, \r\ni Ronu, njegovom novom digitalnom uređaju koji može hodati i razgovarati, \r\ni koji je stvoren da mu bude trenutni ‘najbolji prijatelj‘.\r\nBarney je pomalo čudan školarac, a Ron je njegov robot. Osim što je Ron spojen na Internet, \r\non može i pričati i hodati. Nema ništa bolje od takvog prijatelja, zar ne?\r\nNo ubrzo se ispostavlja da je Ron zapravo neispravan i nepopravljiv, \r\na njegove urnebesne smetnje pokreću Barneyja na nezaboravno putovanje u kojem se dječak i robot upoznaju s izazovima i mogućnostima pravog prijateljstva.', 0, 'nesavrseni_robot_Ron.jpg'),
(5, 'CRNA KUTIJA', 'Yann Gozlan', 'triler', '130 min', 'Francuska', 'Mathieu je talentirani mladi analitičar crne kutije u misiji da riješi razlog smrtonosnog pada potpuno novog zrakoplova. \r\nIpak, kad vlasti zatvore slučaj, Mathieu se ne može oteti dojmu da s dokazima nešto nije u redu.\r\nDok ponovno preslušava snimku, počinje otkrivati neke ozbiljno uznemirujuće detalje. \r\nMože li se snimka modificirati? \r\nIdući protiv zapovijedi svog šefa, Mathieu započinje vlastitu istragu - opsesivnu i opasnu potragu za istinom koja će brzo ugroziti mnogo više od njegove karijere ...', 0, 'crna_kutija.jpg'),
(6, 'POSLJEDNJI DVOBOJ', 'Ridley Scott', 'drama', '152 min', 'SAD, Velika Britanija', 'Scenarij kojeg su zajedno s Nicole Holofcener napisali Ben Affleck i Matt Damon, \r\noživljava pod redateljskom palicom jednog od najpoznatijih, \r\nnajnagrađivanijih i najcjenjenijih filmaša, Ridleya Scotta. \r\nPosljednji dvoboj donosi istinitu priču o posljednjem službeno dopuštenom dvoboju u Francuskoj.\r\nRadnja smještena u Francusku 14. stoljeća, epska je priča o izdaji i pravdi, ispričana s tri različita gledišta: \r\ndva viteza (dobitnik Oscara Matt Damon i za Oscara nominirani Adam Driver), čiji je odnos na kušnji radi izdaje, \r\ni mlade žene (dobitnica Emmyja Jodie Comer) koja pokušava preživjeti u brutalnoj i opresivnoj kulturi tog doba.', 0, 'poslednji_dvoboj.jpg'),
(7, 'VENOM 2', 'Andy Serkis', 'akcija, triler', '97 min', 'SAD', 'Tom Hardy vraća se na veliko platno kao ubojiti zaštitnik Venom, jedan od najvećih i najkompleksnijih MARVEL-ovih likova. \r\nU režiji Andyja Serkisa glume i Michelle Williams, Naomie Harris te Woody Harrelson u ulozi negativca Cletusa Kasadya / Carnagea', 1, 'venom_2.jpg'),
(8, 'NIJE VRIJEME ZA UMIRANJE', 'Cary Joji Fukunaga', 'akcija', '163 min', 'SAD', 'U filmu “NIJE VRIJEME ZA UMIRANJE” Bond je napustio službu i uživa u mirnom životu na Jamajci. Njegov mir neće trajati dugo, kada se pojavi njegov stari prijatelj iz CIA, Felix Leiter, moleći ga za pomoć.\r\nMisija u kojoj je potrebno izbaviti otetog znanstvenika ispostavit će se mnogo teža nego što je bilo očekivano i navest će Bonda na trag misterioznom zlikovcu koji je naoružan novom, opasnom tehnologijom.', 0, 'nije_vrijeme_za_umiranje.jpg'),
(9, 'DEMONI', 'Neill Blomkamp', 'horor', '104 min', 'SAD', 'Ime redatelja Neilla Blomkampa širokoj publici već je dobro poznato. \r\nSvojim redateljskim\r\nprvijencem iz 2009. godine, filmom \"District 9\" pobrao je hvalospjeve publike i kritike te\r\nzaradio nominaciju za Oscara. \r\nNjegov sljedeći film \"Elysium\" također je pobrao odlične\r\nkritike. \r\nOve godine Blomkamp predstavlja film snimljen u tajnosti tijekom pandemije, koji\r\ngovori o mladoj ženi koja oslobađa zastrašujuće demone kada se krenu otkrivati\r\nnadnaravne sile u korijenu desetljeća starog raskola između majke i kćeri.', 0, 'demoni.jpg'),
(10, 'NE DIŠI 2', 'Rodo Sayagues', 'horor, triler', '98 min', 'SAD', 'Norman Nordstrom živi povučeno s Phoenix, mladom djevojkom o kojoj se brine i koju trenira kako bi preživjela. \r\nNjihov siguran i miran život narušen je kad skupina muškaraca upadne u njihov dom i otme Phoenix. Norman kreće u lov za njezinim otmičarima u napetoj igri mačke i miša. \r\nNo, ovaj napad izvlači na površinu grijehe iz Normanove prošlosti i Phoenix je prisiljena preispitati njihovu vezu - je li joj on otac ili čudovište?', 0, 'ne_disi_2.jpg'),
(11, 'TOMA', 'Dragan Bjelogrlić', 'biografski', '147 min', 'Srbija', 'Film “TOMA” je jedan impresionistički portret Tome Zdravkovića koji prikazuje same njegove početke, baš kao i vrhunac slave, njegove ljubavi koje su ga inspirirale prilikom skladanja nekih od najvećih hitova, kao i odnos sa velikim brojem prijatelja koje je imao u umjetničkom miljeu tadašnje Jugoslavije. \r\nPored Tome, kroz film ćemo pratiti i živote poznatih umjetnika tog vremena: Zorana Radmilovića, Mike Antića, Tozovca i drugih. \r\n“TOMA” je biografski film o Tomi Zdravkoviću, čovjeku koga ne pamtimo samo po njegovim pjesmama i načinu na koji ih je pjevao, već i kao jednog velikog boema - po ponašanju i u duši. Film prati dvije linije radnje: 1991. pratimo odnos Tome i doktora koji započinje liječenje Tome i kako se to poznastvo pretvara u prijateljstvo. \r\nDruga linija prati Tomin život: od djetinjstva u Pečenjevcima, preko poznanstva sa Silvanom Armenulić koje će presudno utjecati na njegovu karijeru ali i na privatni život, dostizanja neslućene visine popularnosti, ali i dna života. \r\nOvo je priča o duši.', 0, 'toma.jpg'),
(12, 'POSLIJE SVEGA: PAD', 'Castille Landon', 'ljubavna drama', '98 min', 'SAD', 'Ljubav Tesse i Hardina oduvijek je bila komplicirana, ali sad su dospjeli u fazu u kojoj se izlaz ne nazire.\r\nUpravo dok se Tessa sprema donijeti jednu od važnijih odluka u životu, sve se promijeni. Hardin se još uvijek ne zna kontrolirati i sve oko nje počinje se raspadati.\r\nNikome ne može vjerovati, nitko nije onakav kakav se čini.\r\nNi obitelj, ni prijatelji.', 0, 'poslije_svega_pad.jpg'),
(13, 'LUKA', 'Enrico Casarosa', 'animirani', '95 min', 'SAD', 'Mladi dečko Luka doživljava nezaboravno ljeto na talijanskoj rivijeri ispunjeno hrpom sladoleda, ukusne mediteranske hrane i beskrajnom vožnjom skutera uz more. \r\nLuka dijeli ove pustolovine sa svojim novootkrivenim najboljim prijateljem, ali njihovoj beskrajnoj zabavi prijeti duboko čuvana tajna: radi se zapravo o pravim morskim čudovištima iz drugog svijeta, iz dubine oceana.', 0, 'luka.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
