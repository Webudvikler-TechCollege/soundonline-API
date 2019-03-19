# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: sql.itcn.dk (MySQL 5.6.24-log)
# Database: heka5.tcaa
# Generation Time: 2019-03-19 08:34:48 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table brand
# ------------------------------------------------------------

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Titel',
  `description` text NOT NULL COMMENT 'Beskrivelse',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;

INSERT INTO `brand` (`id`, `title`, `description`, `deleted`)
VALUES
	(1,'Gibson','Orville Gibson begyndte med at lave mandoliner i 1884 i Kalamazoo, Michigan, USA. I 1902 blev Gibson Mandolin-Guitar Mfg. Co, Ltd grundlagt for at markedsføre disse instrumenter. \nI 1919 ansætter Gibson en ung lovende instrument mager og musiker som hed Lloyd Loar. Loar sætter en bølge af produkt udvikling i gang der blandt andet fører til en række nyskabelser indenfor banjo, mandolin og guitar design. Bl.a. lanceres i 1922 den berømte Gibson F5 mandolin og Loar opfinder den moderne jazz guitar ved at give den F-huller og forlænger samtidigt halsen således at broen rykkes tættere på midten af guitaren, hvilket giver guitaren væsentligt mere volumen og tone. Dette fører til at Gibson bliver den førende producent af jazz guitarer i USA. \nI 1930\'erne forsker Gibson i electrificeringen af guitaren, hvilket fører til Gibsons første elektriske guitar, som lanceres i 1936 under navnet ES-150. Og det er endvidere i 30\'erne at Gibsons J-45 og J-200 western guitarer introduceres Gibson stopper stort set produktionen under anden verdenskrig på grund af mangel på træ og metal til at bygge guitarer af, men i 1948 ansætter Gibson, Ted McCarty, hvilket bliver starten på Gibsons mest fremgangsrige periode. Under McCartys ledelse udvikler Gibson alle de instrumenter som i dag er grundstammen i Gibsons udvalg og som i mange tilfælde er gået hen og blevet både legendariske og myte omspundne. Det er bl.a. i denne periode at Les Paul modellen lanceres, enda i den form som vi stadig kender idag, nemlig Standard, Custom, Junior og Special modellen. I 1957 opfinder Gibson den moderne humbucker pickup som vi stadig kender som PAF (\"Patent Applied For\") modellen, året efter se den første ES-335 dagens lys og samme år lanceres både Flying V og Explorer modellen. I 1960 kommer de første Gibson Hummingbirds på markedet og i 1961 kommer den berømte Gibson SG. \nI 1974 overtages Gibson af Norlin Musical Instruments hvilket fører til et årti med tilbage gang hvilket resulterer i at Gibson står på randen af konkurs i 1986. Dog lykkedes det Norlin at sælge Gibson til 3 amerikansk/britiske forretnings mænd, nemlig Henry E. Juszkiewicz, David H. Berryman og Gary A. Zebrowski, hvilket bliver Gibsons redning og starten på en ny guldalder for Gibson. Gibson Guitar Corporation er i dag en af verdens mest kendte fabrikanter af guitarer. som, udover Gibson også omfatter Epiphone, Kramer. og Garrison\n\n',0),
	(2,'Fender','Fender Musical Instruments Corporation (tidligere Fender Electric Instrument Company) blev grundlagt af Clarence \"Leo\" Fender i 1946. I 1954 blev el-guitaren Stratocaster introduceret og er siden blevet et varemærke for Fender.',0),
	(3,'Epiphone','Epimanondas Stathopoulos grundlagde Epiphone i 1924. Han var græsk indvandrer i New York og kombinerede sit fornavn Epi med phone, det græske ord for lyd. I starten handlede det mest om banjoer, men i gennem 30´erne kæmpede Epiphone med ærkerivalerne Gibson om herredømmet på guitarmarkedet. Gibson købte Epiphone i 1957, og mærket fik stor succes i hænderne på The Beatles. I dag spiller bl.a. Tony Iommi, Paul Weller, Katie Melua og Paul McCartney Epiphone.',0),
	(4,'Squier','Squier er det navn, Fender bruger til guitarer og basser, der bliver fremstillet på fabrikker ikke direkte ejet af Fender selv. Squier var oprindelig en amerikansk baseret strengefabrikant, som Fender købte i 1965. Fender gemte dog navnet til 1982, da man lancerede en serie af billigere versioner af firmaets mange ikon-instrumenter. Nogle af disse japansk fremstillede guitarer er siden blevet samlerobjekter. \n  \nSquier er i dag et af verdens mest udbredte guitarmærker, hvilket tydeligt afspejles i det store udvalg, 4Sound har. Squier fremstiller Stratocaster, Telecaster, Jazz Bass, Precision Bass samt en lang række spændende signatur-modeller, der er overordentligt velbyggede og vellydende. Og hvem andre skulle ellers kunne lave gode billige Fender-instrumenter end Fender selv?\n\n',0),
	(5,'Martin','Det er umuligt at komme uden om Martin, når det drejer sig om stålstrengs guitarer. For det første ville der slet ikke findes guitarer, som vi kender dem, hvis det ikke havde været for Martin. Det gamle firma har på egen hånd skabt mange af de features, vi idag tager for givet på en hvilken som helst guitar - fx. dreadnought-formen og X-brace-afstivning af dækket. Ingen anden producent har i den grad præget instrumentets udvikling, og det faktum at Martin stadig er familie-ejet og med introduktionen af nye, banebrydende modeller bliver ved med at udfordre vores forstilling om, hvad en akustisk guitar er, er intet mindre end imponerende. Dernæst er håndværket altid i top; i de seneste år har Martin lanceret nogle billigere modeller, men de er aldrig gået på kompromis med kvaliteten, og på nær X-serien, laves alle modeller fortsat på deres fabrik i Pennsylvania.',0),
	(6,'Taylor','Taylor guitarer er baseret i El Cajon, Californien, og har været banebrydende for nogle af de mest succesfulde nyskabelser i akustisk guitar fremstilling i de seneste tre årtier. Etableret i 1974, steget Taylor hurtigt fra en mands drøm om at blive bedst sælgende akustiske guitar brand i Nordamerika.\n\nBredt udbud af kroppen størrelser og tone skoven i området fra Gear4music.com sikrer, at der er en Taylor guitar for hver spiller. Kendt for fremragende spilleegenskaber og rig, afbalanceret toner, hver guitar i linjen Taylor op kunne anses leader i sin kategori.',0),
	(7,'Yamaha','Yamaha er et af de største navne indenfor den moderne akustiske guitarverden. Med over 40 års erfaring, bliver Yamaha akustiske guitarer rost for deres balance mellem det traditionelle og det allernyeste. Med brugere som Bob Dylan og Jeff Beck, har Yamaha akustiske guitarer vist sig at være et levedygtigt alternativ på det akustiske guitarmarked.',0),
	(8,'Ibanez','Ibanez er en af de første Japanske guitarproducenter, som for alvor fik tag i det amerikanske og europæiske guitarmarked. Ibanez guitarer og basser laves af Hoshino som også er kendt for de populære Tama Trommesæt. Hoshino imorterede og solgte i starten af 1930\'erne, spanske guitarer af mærket Salvador Ibanez. Da Ibanez fabriken blev ødelagt under den spanske borgerkrig, beslutede Hoshino at købe retten til Ibanez navnet og begyndte i 1935 selv at producere guitarer under dette navn. I 1960\'erne begyndte Ibanez at producere billige kopier af Fender, Gibson og Rickenbacker guitarer hvilket førte til den såkaldte \"lawsuit\" periode, dette førte til at Ibanez blev tvunget til at udvikle deres egne modeller bl.a. den berømte Iceman og de populære Ibanez Roadstar guitarer. I slutningen af 80\'erne indgår Ibanez i et samarbejde med Steve Vai, hvilket fører til lanceringen af JEM og Universe guitarerne, dette bliver en stor succes for Ibanez som efterfølgende lancerer RG serien som et billigere alternativ til JEM modellerne. Ibanez er i dag det førende Japanske guitarmærke, at de er nået så vidt skyldes i høj grad at de har forstået at indrage nogle af verdenens førende og mest progressive guitarister og bassister i udviklingen af nye guitarer. Musikere som Joe Satriani, Steve Vai, John Petrucci, Pat Metheny, Joe Pass, Gary Willis, George Benson, Frank Gambale, Steve Lukather og mange flere har igennem tiden haft en aktiv indflydelse på Ibanez og de instrumenter de fremstiller.',0),
	(9,'Supreme','',0),
	(10,'Everdeen','',0),
	(11,'Musicman','',0),
	(12,'Furch','',0),
	(13,'Cort','Der er ikke mange, der ved det, men Cort er verdens største producent af guitarer og basser. Firmaet, der har fabrikker i Korea, Indonesien og Kina, laver ikke bare instrumenterne, der sælges under eget navn, men det er også dem, der producerer de billigere guitarer, basser, ja, sågar forstærkere for firmaer, som Fender, PRS, Lakland, G&L, Line 6 og mange flere. Sådan en position får man ikke, hvis man ikke leverer varen, og Cort har da også altid leveret ren kvalitet til meget små priser. Ser man på deres dyrere modeller, forbavses man over det høje niveau af håndværk, og celebre musikere, som Larry Coryell, Hiram Bullock og T.M. Stevens har kastet deres kærlighed på Cort. Synes du, det lyder fristende? Det kan være, du spiller på en Cort uden at vide det…',0),
	(14,'Korg','Korg blev grundlagt i Japan i de tidlige 60’ere af Tsutomu Katoh og hans kollega Tadashi Osanai. I 1963 introduceredes deres førstefødte Doncamatic DA-20, en elektrisk rytmeboks baseret på roterende plader. Katoh blev kontaktet af Fumio Mieda, en ingeniør, som ville bygge en ny type orgel, som desuden var programmerbar. Mieda havde i praksis konstrueret en synthesizer. 50 eksemplarer blev fremstillet og blev solgt under navnet Korg, som var en sammentrækning af navnet Keio og Organ. Resten er musikhistorie. Siden 70’erne har Korg udviklet en mængde banebrydende produkter. Alt fra Mini Korg , PE-1000 ,MS-20 , PolySix , verdens første Workstation Korg M1 ,Wavedrum og Kaoss -produkterne til verdens meste solgte synth, Microkorg , og nu i 2011: Korg Kronos . I 1975 lancerede man også verdens absolut første tuner i lommeformat, WT-10, et produkt, som siden da har fået utallige efterfølgere.',0),
	(15,'Nord','Clavia, som i 2008 omdøbte firmaet til Nord, blev grundlagt 1983 i en kælder i Stockholm af Hans Nordelius og Mikael Carlsson. Siden er Nord blevet en verdenssucces, og de fleste af de karakteristisk røde keyboard-modeller har da også vundet priser gentagne gange verden over.',0),
	(16,'Roland','Roland blev etableret i 1972 i Osaka, Japan og var allerede i 1973 repræsenteret på musikmessen NAMM Show i Los Angeles, hvor de første Rytmebokse (TR-33, TR-55 og TR-7) blev vist frem sammen med præsentationen af Rolands første synthesizer SH-1000. I 1974 kom så det første digitale piano, nemlig EP-30, der markerede begyndelsen på en dominerende rolle som udvikler af digitale pianoer af højeste standard brugt af professionelle musikere, rytmiske såvel som klassiske verden over. Roland har siden hen udviklet deres unikke V-series af instrumenter, der nu betegnes som det ypperligste inden for digitale instrumenter, lige fra piano og keyboards til accordions, trommer, guitarforstærkere og pedaler.',0),
	(17,'Akai','<p>Akai Professional hører til i den lille og eksklusive klub af producenter vis produkter har haft en direkte indflydelse på den måde musikere tænker og laver musik. Akai Professional blev grundlagt i 1984 som et datterselskab af Akai, som på det tidspunkt udelukkende fremstillede hifi udstyr. Akai Professional lancerede allerede i 1985 verdens første integrerede 12-spors mixer/recorder og i 1986 kom den legendariske Akai S900 sampler til verdenen.Umiddelbart efter kom den første MPC, Akai MPC60, en integreret sampler, trommemaskine og MIDI sequencer som blev et uundværligt værktøj for denne tids rap og hip hop kunstnere. </p><p>Akai\'s kraftige produktudvikling har ligeledes ført til store landvindinger indenfor harddisk recording hvor Akai i 90\'erne lancerede de første 8 og 16 spors harddisk recordere der var til at betale. Akai Professional fremstiller i dag keyboards, lydkort, kontrollere, grooveboxe, og samplere i topkvalitet.</p>',0),
	(18,'Roli','',0),
	(19,'Moog','',0),
	(20,'Guild','<p>Test</p>',0);

/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `iConfigID` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `iModule` int(11) DEFAULT '0',
  `vcFriendlyName` varchar(255) DEFAULT '',
  `vcVarName` varchar(255) DEFAULT '',
  `iIntVar` bigint(20) DEFAULT '0',
  `vcVarcharVar` varchar(255) DEFAULT '',
  `txTextVar` text,
  `iTypeID` mediumint(9) NOT NULL,
  PRIMARY KEY (`iConfigID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;

INSERT INTO `config` (`iConfigID`, `iModule`, `vcFriendlyName`, `vcVarName`, `iIntVar`, `vcVarcharVar`, `txTextVar`, `iTypeID`)
VALUES
	(1,1,'Website Navn','vcSiteName',0,'','',2),
	(2,1,'Website URL','vcSiteURL',0,'','',2),
	(3,1,'Site Administrator','iSiteAdminID',1,'','',1),
	(4,1,'Titel Prefix','vcTitlePrefix',0,'',NULL,3),
	(6,1,'Sidefod','txFooterInfo',0,'','',2),
	(7,1,'Google Analytics Kode','txGaCode',NULL,'','',1);

/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table folder
# ------------------------------------------------------------

DROP TABLE IF EXISTS `folder`;

CREATE TABLE `folder` (
  `iFolderID` bigint(20) NOT NULL AUTO_INCREMENT,
  `iParentID` bigint(20) NOT NULL COMMENT 'Parent folder',
  `vcTitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Folder Navn',
  `vcUrlName` varchar(255) DEFAULT NULL COMMENT 'URL Navn',
  `txDescription` text NOT NULL COMMENT 'Beskrivelse',
  `iDesignID` bigint(20) DEFAULT '0' COMMENT 'Design',
  `vcMacroName` varchar(255) DEFAULT '' COMMENT 'Makro Navn',
  `daCreated` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Oprettet',
  `iSortNum` int(11) NOT NULL DEFAULT '0' COMMENT 'Sortering',
  `iIsActive` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Aktiv',
  `iDeleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iFolderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
  `iImageID` bigint(20) NOT NULL AUTO_INCREMENT,
  `vcImageUrl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`iImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table org
# ------------------------------------------------------------

DROP TABLE IF EXISTS `org`;

CREATE TABLE `org` (
  `iOrgID` bigint(20) NOT NULL AUTO_INCREMENT,
  `vcOrgName` varchar(255) NOT NULL DEFAULT '' COMMENT 'Navn',
  `vcAddress` varchar(255) NOT NULL DEFAULT '' COMMENT 'Adresse',
  `vcZip` varchar(255) NOT NULL DEFAULT '' COMMENT 'Postnummer',
  `vcCity` varchar(255) NOT NULL DEFAULT '' COMMENT 'By',
  `vcEmail` varchar(255) NOT NULL DEFAULT '' COMMENT 'Email',
  `vcPhone` varchar(255) NOT NULL DEFAULT '' COMMENT 'Telefon',
  `vcFax` varchar(255) NOT NULL DEFAULT '' COMMENT 'Fax',
  `daCreated` bigint(20) NOT NULL DEFAULT '0',
  `iDeleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `org` WRITE;
/*!40000 ALTER TABLE `org` DISABLE KEYS */;

INSERT INTO `org` (`iOrgID`, `vcOrgName`, `vcAddress`, `vcZip`, `vcCity`, `vcEmail`, `vcPhone`, `vcFax`, `daCreated`, `iDeleted`)
VALUES
	(1,'Tech College','Øster Uttrupvej 1','9000','Aalborg','heka@techcollege.dk','20182745','65748390',1527663243,0);

/*!40000 ALTER TABLE `org` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page`;

CREATE TABLE `page` (
  `iPageID` bigint(20) NOT NULL AUTO_INCREMENT,
  `iParentID` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Parent folder',
  `vcTitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Titel',
  `vcUrlName` varchar(255) DEFAULT NULL COMMENT 'Teknisk navn',
  `vcPageImage` varchar(255) DEFAULT NULL COMMENT 'Side Billede',
  `txDescription` text COMMENT 'Beskrivelse',
  `txContent` text COMMENT 'Indhold',
  `daCreated` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Oprettet',
  `daStart` bigint(20) DEFAULT '0' COMMENT 'Startdato',
  `daStop` bigint(20) DEFAULT '0' COMMENT 'Stopdato',
  `iPageType` mediumint(11) DEFAULT '0' COMMENT 'Type',
  `iSortNum` int(11) NOT NULL DEFAULT '0' COMMENT 'Sortering',
  `iIsStartPage` tinyint(1) DEFAULT '0' COMMENT 'Startside',
  `iIsActive` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Aktiv',
  `iDeleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iPageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_number` varchar(255) NOT NULL DEFAULT '' COMMENT 'Varenummer',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Titel',
  `description_short` text NOT NULL COMMENT 'Kort beskrivelse',
  `description_long` text NOT NULL COMMENT 'Lang beskrivelse',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT 'Billede',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT 'Pris',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT 'Lagerantal',
  `brand_id` int(11) DEFAULT NULL COMMENT 'Mærke',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Oprettet',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Aktiv',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `brand_id` (`brand_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;

INSERT INTO `product` (`id`, `item_number`, `title`, `description_short`, `description_long`, `image`, `price`, `stock`, `brand_id`, `created`, `active`, `deleted`)
VALUES
	(1,'551104','Les Paul Deluxe Player Plus Satin Vintage Sunburst','El-guitar med mahognikrop, AA ahorntop, mahognihals med gribebræt af richlite, hvide bindinger og 2 x Mini Humbuckers. Inkl. Hardshell case.','<h2>El-guitar med mahognikrop, AA ahorntop, mahognihals med gribebræt af richlite, hvide bindinger og 2 x Mini Humbuckers. Inkl. Hardshell case.\r\n</h2><p>Gibson\'s 2018 modeller leveres med \"cryogenically treated frets\", hvor alle bånd behandles ved meget lave temperaturer (lavere end -185 ℃) for at modstå mere slid end normalt. De føles nøjagtigt som traditionelle bånd, men tåler meget mere. Modellerne, der ikke inkluderer guitarkasse, leveres i en polstret blød taske, der erstatter tidligere gigbag-design. HP-modellerne har opgraderede og hurtigere G-FORCE systemer, og Gibson 2018 præsenterer også helt nye farver som Cobalt Burst, Mojave Burst, Blood Orange Burst og Autumn Shade. \r\n\r\n</p><p><b>Specifikationer</b>\r\n</p><ul><li>Krop: Mahogni\r\n</li><li>Top: AA ahorn\r\n</li><li>Hvide bindinger\r\n</li><li>Hals: mahogni\r\n</li><li>Halsprofil: Rounded\r\n</li><li>Sadelbredde: 1.695\"\r\n</li><li>Gribebræt: Richlite\r\n</li><li>Skalalængde: 24.75\"\r\n</li><li>Antal bånd: 22\r\n</li><li>Sadel: Tektoid\r\n</li><li>Indlæg i gribebræt: Acrylic Traps\r\n</li><li>Stol: Tune-O-Matic med Titanium Saddles\r\n</li><li>Tailpiece: Stop Bar</li><li>\r\nKnapper: Black Tophats w/ Silver Inserts\r\n</li><li>Stemmeskruer: Kidneys\r\n</li><li>Hardware finish: Krom\r\n</li><li>Pickupper: 2 x Mini Humbuckers\r\n</li><li>Kontroller: 2 x volume, 2 x tone, 3-vejs pickupswitch\r\n</li><li>Inkl. Hardshell case</li></ul>','les-paul-deluxe-player-plus-satin-vintage-sunburst.jpeg',23399,2,1,'2019-03-04 08:36:00',1,0),
	(2,'530721','ES-335 Satin 2018 Walnut','El-guitar Semi-hollowbody model med krop af ahorn/poppel/ahorn, mahognihals med Rosewood gribebræt og Burstbucker pickupper. Inkl. kasse.','<h2>El-guitar Semi-hollowbody model med krop af ahorn/poppel/ahorn, mahognihals med Rosewood gribebræt og Burstbucker pickupper. Inkl. kasse.\r\n</h2><p>Limited Release-model med samme udseende og byggekvalitet som ES-335 Traditional, men i Satin finish. Klassiske Gibson-egenskaber som mahognihals, gribebræt af Rosewood og centerblok af ahorn. ABR-1 bro med titansadler, Grover 102 Rotomatic-stemmeskruer, MTC Control Assembly og Burstbucker 1 &amp; 2 pickupper.\r\n\r\n</p><p>Specifikationer\r\n</p><ul><li>Krop: 3-lag ahorn/poppel/ahorn\r\n</li><li>Centerblok: Ahorn\r\n</li><li>Bracing: Gran\r\n</li><li>Binding: Single-ply cream\r\n</li><li>Hals: Quarter-sawn mahogni\r\n</li><li>Halsprofil: Rounded “C”, Rolled Binding\r\n</li><li>Gribebræt: Rosewood\r\n</li><li>Indlæg: Pearloid Small Block\r\n</li><li>Oversadel: Ben\r\n</li><li>Oversadelbredde: 1.687”\r\n</li><li>Skalalængde: 24.75”\r\n</li><li>Antal bånd: 22\r\n</li><li>Hardware: Satin nickel\r\n</li><li>Bro: ABR-1 med titansadler\r\n</li><li>Stemmeskruer: Grover 102 Rotomatics\r\n</li><li>Pickupper: Burstbucker 1 (hals) og Burstbucker 2 (bridge)\r\n</li><li>Inkl. Hardshell Case</li></ul>','es-335-satin-2018-walnut.jpeg',1919900,4,1,'2019-03-04 08:42:31',1,0),
	(3,'530737','ES-275 Custom 2018 | Ebony','El-guitar Hollowbody model med top, sider og bund af 3-lags flammet ahorn/poppel, mahognihals med gribebræt af mørk Rosewood og MHS Humbucker pickupper. Inkl. kasse.','<h2>El-guitar Hollowbody model med top, sider og bund af 3-lags flammet ahorn/poppel, mahognihals med gribebræt af mørk Rosewood og MHS Humbucker pickupper. Inkl. kasse.\r\n</h2><p>ES-275 Custom 2018 i Sunset Burst finish er en klassisk archtop født på ny, designet med tanke på moderne guitarister. ES-275 Custom hædrer Gibsons lange tradition med enestående jazzguitarer både udseende-, lyd-, og følelsesmæssig, og giver guitarister inden for alle genrer et tidløst instrument med egenskaber som gribebræt af Rosewood, thinline-krop med single-cutaway og god tilgang til de høje bånd. ’Milk Bottle’ rotomatic-stemmeskruer og ABR-1 bro med titansadler som sørger for nøjagtig intonation og stemmestabilitet. Hand-wired Orange Drop-kondensatorer, 550K matchede potter og MHS Humbucker pickupper sørger for at Gibson ES-275 lyder fantastisk.\r\n</p><p><b>\r\nSpecifikationer</b>\r\n</p><ul><li>Top: 3-lags ahorn/poppel/ahorn\r\n</li><li>Bund: 3-lags ahorn/poppel/ahorn\r\n</li><li>Bracing: Quarter Sawn Adirondack Spruce\r\n</li><li>Bindinger: Multi-ply\r\n</li><li>Hals: Quarter Sawn Mahogany\r\n</li><li>Halsprofil: Rounded ”C”, Rolled Binding\r\n</li><li>Gribebræt: Mørk Rosewood\r\n</li><li>Indlæg: Mother of Pearl Full Block\r\n</li><li>Oversadelbredde: 1.687”\r\n</li><li>Skala: 24.75”\r\n</li><li>Bånd: 22\r\n</li><li>Hardware: Guldfinish\r\n</li><li>Bro: ABR-1 med titansadler og rosewood stol\r\n</li><li>Tailpiece: Three Bar Archtop\r\n</li><li>Stemmeskruer: Grover \'Milk Bottle\' Rotomatics\r\n</li><li>Halspickup: MHS Humbucker Rhythm\r\n</li><li>Bropickup: MHS Humbucker Lead\r\n</li><li>Kontroller: 2 volum, 2 tone, 3-vejs switch\r\n</li><li>Inkl. Hardshell Case</li></ul>','es-275-custom-2018-ebony.jpeg',2971900,3,1,'2019-03-04 08:47:43',1,0),
	(4,'531147','Les Paul Standard 2018 Left Hand Blood Orange Burst','El-guitar venstrehåndet med mahognikrop og AAA flammet ahorntop, mahognihals med Rosewood gribebræt og Burstbucker Pro pickupper. Inkl. kasse.','<h2>El-guitar venstrehåndet med mahognikrop og AAA flammet ahorntop, mahognihals med Rosewood gribebræt og Burstbucker Pro pickupper. Inkl. kasse.\r\n</h2><p>Les Paul Standard 2018 kan skilte med “Ultra-Modern” vægtreduktion, en flot AAA-Grade flammet ahorntop, Assymetrical Slim Taper-halsprofil med gribebræt med compound radius og “cryogenic” båndbehandling ved ekstremt lave temperaturer. Alle volume- og tonekontroller er push-pull, og tilbyder coil tap på begge pickupper, pure bypass og phase reverse. Les Paul Standard T 2017 er udstyret med opgraderede PAF-inspirerede Burstbucker Pro Rhythm og Lead pickupper og Locking Kidney låsbare stemmeskruer. </p><p>\r\n\r\nGibson\'s 2018 modeller leveres med \"cryogenically treated frets\", hvor alle bånd behandles ved meget lave temperaturer (lavere end -185 ℃) for at modstå mere slid end normalt. De føles nøjagtigt som traditionelle bånd, men tåler meget mere. Modellerne, der ikke inkluderer guitarkasse, leveres i en polstret blød taske, der erstatter tidligere gigbag-design. HP-modellerne har opgraderede og hurtigere G-FORCE systemer, og Gibson 2018 præsenterer også helt nye farver som Cobalt Burst, Mojave Burst, Blood Orange Burst og Autumn Shade.&nbsp;</p>','les-paul-standard-2018-left-hand-blood-orange-burst.jpeg',1937900,1,1,'2019-03-04 08:52:11',1,0),
	(5,'591580','American Performer Telecaster, MN Vintage White','El-guitar med krop af el, ahornhals med Modern \"C\"-profil og gribebræt af ahorn, Yosemite Single-Coil Tele pickupper, og Greasebucket Tone Circuit. Inkl. Deluxe gigbag.','<h2>El-guitar med krop af el, ahornhals med Modern \"C\"-profil og gribebræt af ahorn, Yosemite Single-Coil Tele pickupper, og Greasebucket Tone Circuit. Inkl. Deluxe gigbag.\r\n</h2><p>Fender American Performer-serien erstatter American Special, og er dermed Fenders billigste Amerika producerede serie. American Performer er kvalitets instrumenter som ikke koster det vilde, og består af kendte Fender-klassikere som bl.a. Telecaster, Stratocaster, Jazzmaster og Mustang.\r\n\r\nAmerican Performer-modellerne har matlakeret hals og Modern “C”-profil. Modellerne er også udstyret med Yosemite og DoubleTap pickupper, med voicing som matcher hver enkelt model og pickup position. Et Greasebucket Tone System lader dig dæmpe diskanten uden tab af gain. Leveres i Fender Deluxe Gigbag. En ægte Fender fra Corona, California!\r\n</p><p><b>\r\nSpecifikationer</b>\r\n</p><ul><li>Kropsmateriale: Elletræ gloss polyuretan finish\r\n</li><li>Kropsform: Telecaster\r\n</li><li>Halsmateriale: Ahorn, satin finish\r\n</li><li>Halsprofil: Modern “C”\r\n</li><li>Gribebræt: Ahorn, 9.5\" radius (241 mm)\r\n</li><li>Oversadel: Syntetisk ben\r\n</li><li>Oversadelbredde: 1.650” (42 mm)\r\n</li><li>Indlægg i gribebræt: Sorte “dots”\r\n</li><li>Truss Rod: Standard, ⅛” American Series\r\n</li><li>Antal bånd: 22\r\n</li><li>Bånd: Jumbo\r\nSkalalængde: 25.5” (648 mm)\r\n</li><li>Bropickup: Yosemite Single-Coil Telecaster\r\n</li><li>Halspickup: Yosemite Single-Coil Telecaster\r\n</li><li>Kontroller: Master Vol, Master Tone, Greasebucket Tone Circuit, 3-vejs switch\r\n</li><li>Bro: 3-Saddle Strings-Thru-Body Tele\r\n</li><li>Stemmeskruer: Fender Classic Gear\r\n</li><li>Knapper: Knurled Flat-Top\r\n</li><li>Neck Plate: 4-Bolt\r\n</li><li>Hardware: Nikkel/krom\r\n</li><li>Inkl. Deluxe Gig Bag</li></ul>','american-performer-telecaster-mn-vintage-white.jpeg',894900,8,2,'2019-03-04 08:56:21',1,0),
	(6,'551223','Eric Johnson Signature Stratocaster Thinline 2-Color Sunburst','El-guitar Eric Johnsom signaturmodel, Semi-hollowbody med F-hul, krop af el, ahornhals med Soft \"V\"-profil, gribebræt af ahorn, 3 x Eric Johnson Single-Coil pickupper og nitrolak. Inkl. Deluxe Blonde Hardhell case.','<h2>El-guitar Eric Johnsom signaturmodel, Semi-hollowbody med F-hul, krop af el, ahornhals med Soft \"V\"-profil, gribebræt af ahorn, 3 x Eric Johnson Single-Coil pickupper og nitrolak. Inkl. Deluxe Blonde Hardhell case.\r\n</h2><p>Eric Johnson Signature Stratocaster Thinline er en semi-hollow Stratocaster med krop af elletræ. Denne model, med lav vægt og det distinkte F-hul, er signaturmodellen til Eric Johnson, og er resultatet af to års samarbejde mellem ham og Fender. Målet var at udvikle en el-guitar i skæringspunktet mellem hans egen strat og personlige favoritter med semi-hollow konstruktion, som giver lyden en helt anden grad af luft og resonans.\r\n\r\n\r\n\r\nModellen er udstyret med custom Eric Johnson single-coil pickupper, skabt af R&amp;D hos Fender for optimalt at kunne reproducere sounden til Eric Johnson. Sættet kombinerer Alnico 3 og 5-magneter, og har en noget hottere pickup ved broen.\r\n\r\nAhornhalsen har “Soft V”-profil som er en afrundet, men alligevel fyldig, V-hals. Gribebrættet er af ahorn, og har 12” radius. Vintage-style tremolo uden dæksel på baksiden, nitrocelluloselak. Leveres i custom hardcase.\r\n</p><p><b>\r\nHighlights</b>\r\n</p><ul><li>Konstruktion: Semi-hollowbody\r\n</li><li>Kropsform: Stratocaster\r\n</li><li>Krop: El\r\nFinish krop/hals: </li><li>Gloss Nitrocellulose\r\n</li><li>Hals: Ahorn\r\n</li><li>Halsprofil: Soft “V”\r\n</li><li>Gribebræt: Ahorn\r\n</li><li>Bånd: 21 Medium Jumbo\r\n</li><li>Indlæg i gribebræt: Dot, sorte\r\nRadius: 12” (305 mm)\r\n</li><li>Oversadel: 1.650” (42 mm), ben\r\n</li><li>Truss Rod/nut: Vintage-Style Slotted\r\n</li><li>Mensur/skala: 25.5\" (648 mm)\r\n</li><li>Pickupper: 3 x Specially Voiced Eric Johnson Single-Coil with Countersunk Mounting Screws\r\n</li><li>Kontroller: Master Volume, Tone 1, Tone 2, 5-veis switch\r\nBro: 6-Saddle Vintage-Style Synchronized Tremolo\r\n</li><li>Stemmeskruer: Vintage-Style Staggered\r\n</li><li>Hardware: Nikkel/krom\r\n</li><li>Strenge: Fender USA, NPS, (.010-.046 Gauges)\r\n</li><li>Inkl. Deluxe Blonde Hardshell case\r\n</li></ul>','eric-johnson-signature-stratocaster-thinline-2-color-sunburst.jpeg',1864900,6,2,'2019-03-04 09:09:35',1,0),
	(7,'576745','Slash Firebird Premium Outfit','El-guitar Limited edition Slash Firebird signatur, kun 100 stk. worldwide med Seymour Duncan pickupper.','<h2>El-guitar Limited edition Slash Firebird signatur, kun 100 stk. worldwide med Seymour Duncan pickupper.\r\n</h2><p>Epiphone præsenterer en Limited edition Slash Firebird, guitaren er designet af legenden selv og der bliver kun lavet ialt 100 stk. worldwide. Hver af dem bliver personligt nummereret og signeret af Slash, der medfølger desuden Hard case med Slash´s \"Skull &amp; bones\" logo. Guitaren har AAA flammet ahorn top og er monteret med Seymour Duncan Slash pickupper.\r\n</p><p><b>\r\nSpecifikationer</b>\r\n</p><ul><li>kun 100 stk. worldwide\r\n</li><li>Skull &amp; Bones logo </li><li>Hard Case\r\n</li><li>Seymour Duncan Slash open coil humbuckers\r\n</li><li>Mahogni krop og hals\r\n</li><li>Ahorn top\r\n</li><li>Pau Ferro gribebrædt\r\n</li><li>Orange drop capacitors\r\n</li><li>ABR Tune-o-matic and Stopbar</li></ul>','slash-firebird-premium-outfit.jpeg',994900,3,3,'2019-03-04 09:14:12',1,0),
	(8,'566633','Sheraton-II PRO CF Wine Red','El-guitar Semi-hollowbody med krop af ahorn, hals af ahorn/valnød, gribebræt af pau ferro med pearloid- og abaloneindlæg og 2 stk. ProBucker humbucker pickupper.','<h2>El-guitar Semi-hollowbody med krop af ahorn, hals af ahorn/valnød, gribebræt af pau ferro med pearloid- og abaloneindlæg og 2 stk. ProBucker humbucker pickupper.\r\n</h2><p>Epiphone Sheraton-II PRO har Epiphones berømte thinline semi-hollowbody electric archtop, og har nu fået utroligt smukke ProBucker pickups med coil-split og Graphtech NuBone XL-sadel. Guitaren fejres af blueslegenden John Lee Hooker og er blevet anerkendt for kombinationen af fantastisk lyd og smukke pearloide og abalone indlæg. Originalen blev så dagens lys i 1959, inspireret af Les Pauls første solidbody - \"The Log\", som Les byggede på Epiphone fabrikken på Manhattan allerede i 1940. John Lee Hooker beskrev den originale Sheraton-model som en \"out-did 335\", med tanke på de utroligt flotte halsindlæg, den klassiske form, elegante elfenbensbindinger på krop, hals og hoved, og F-hullerne. </p><p>Den nye Sheraton II har samme profil og er lavet af lamineret ahorn toppet med plekterplade med Epiphones signatur \"E\" og klassiske bindinger.\r\n\r\nEpiphone Sheraton-II Pro er udstyret med ProBucker-2 i halsposition og en noget hottere ProBucker-3 i broposition. Begge pickupper har coil-split via individuelle volumekontroller. Coil-splitting gør det muligt at lave en humbucker om til en single-coil, og på den måde åbne op for flere tonale muligheder.</p>','sheraton-II-pro-cf-wine-red.jpeg',561200,12,3,'2019-03-04 09:19:08',1,0),
	(9,'302744','John 5 Telecaster Frost Gold','El-guitar med krop af elletræ, ahornhals med gribebræt af rosentræ og to custom humbucker pickupper.','<h2>El-guitar med krop af elletræ, ahornhals med gribebræt af rosentræ og to custom humbucker pickupper.</h2><p>\r\nShredder og riffmester John 5 har nu lagt en Squier-model til sine Fender signature-modeller. Med elletræskrop, custompickupper, matching headstock og slagplade af børstet stål får du en utroligt lækker og velspillende spade til meget få penge. </p><p><b>\r\n\r\nSpecifikationer</b> </p><ul><li>\r\nBody: Alder</li><li>Finish: Polyester </li><li>Finish\r\nNeck: 1-Piece Maple, Modern “C\" Shape, (Gloss Polyester Finish)\r\n</li><li>Fingerboard: Rosewood 12\" </li><li>Radius (305mm)\r\n</li><li>Frets: 22, Medium Jumbo\r\n</li><li>Scale Length: 25.5\" (648 mm)\r\n</li><li>Nut Width: 1.650\" (42 mm)\r\n</li><li>Hardware: Chrome\r\n</li><li>Tuning Keys: Die-Cast Tuners\r\n</li><li>Bridge: Tele 6-Saddle Bridge for Humbucking Pickup\r\n</li><li>Pickguard: Polished Stainless Steel Pickguard\r\n</li><li>Pickups:\r\nNeck: Custom Humbucking Pickup; AlNiCo II Magnet \r\nBridge: Custom Humbucking Pickup; Ceramic Magnet \r\n3-Position Toggle:\r\nPosition 1. Bridge Pickup \r\nPosition 2. Bridge and Neck Pickups \r\nPosition 3. Neck Pickup \r\nControls Volume (Bridge Pickup), Volume (Neck Pickup)\r\nFender Super 250L, (.009 to .042) Nickel Plated Steel\r\n“C\" Shape Maple Neck, Matching Black Painted Headstock,\r\nBound Top and Back, Toggle Switch Mounted on Upper \r\nBout, Chrome Switch Tip, Front Volume Control for Bridge \r\nPickup, Rear Volume Control for Neck Pickup, Polished \r\nStainless Steel Pickguard, </li><li>White Dot Position </li><li>Inlays, Silver \r\nSquier Logo, </li><li>Synthetic Bone Nut</li></ul>','john-5-telecaster-frost-gold.jpeg',349900,14,4,'2019-03-04 09:23:04',1,0),
	(10,'31625','Affinity Stratocaster MN Black','El-guitar med krop af elletræ, ahornhals, tremolo, 3 singlecoil pickupper og chrome hardware.','<h2>El-guitar med krop af elletræ, ahornhals, tremolo, 3 singlecoil pickupper og chrome hardware.\r\n</h2><p>Man skal lede længe efter en bedre deal på en Stratocaster. Med 1960´er hoved, tre singlecoil-pickupper og standard tremolosystem har denne Affinity-serie den helt rigtige vintage feel til den helt rigtige pris. \r\n\r\nSpecifikationer Squier Affinity Stratocaster\r\nKrop af elletræ\r\nC-shape ahornhals\r\nRosentræsgribebræt 9,5\" profil\r\n21 medium jumbobånd\r\n3 Strat singlecoil pickupper\r\nKontroller: Master volume, tone 1 bridgepickup, tone 2 neckpickup\r\n5-vejs pickupswitch\r\nSynchronous tremolo\r\nFender støbte, lukkede mekanikker\r\nKrom hardware\r\n1-lags slagplade\r\nMonteret med Fender Super 250L strenge 009-042</p>','affinity-stratocaster-mn-black.jpeg',149900,11,4,'2019-03-04 09:27:21',1,0),
	(11,'301251','OM-28E Retro','Akustisk/elektrisk western-guitar med East Indian Rosewood krop og dæk i Sitka gran, Hardwood hals med ibenholt gribebræt og Fishman F1 Aura + elektronik.','<h2>Akustisk/elektrisk western-guitar med East Indian Rosewood krop og dæk i Sitka gran, Hardwood hals med ibenholt gribebræt og Fishman F1 Aura + elektronik.\r\n</h2><p>OM-28E er en moderne genskabelse af den klassiske Orchestra model. Martin OM-28E Retro er ideel til guitaristen som nyder Fingerstyle teknikker og modellen har et tydeligt vintage-inspireret design, der samtidigt byder på moderne spilbarhed.\r\n</p><p><b>\r\nSpecifikationer</b>\r\n</p><ul><li>Kropstype: 000-14 Fret\r\n</li><li>Krop: East Indian Rosewood\r\n</li><li>Dæk: Sitkagran\r\n</li><li>Hals: Udvalgt hardwood\r\n</li><li>Radie: 16\"\r\n</li><li>Gribebræt: Ibenholt\r\n20 bånd\r\n</li><li>Skala: 25.4\"\r\n</li><li>Stol: Ibenholt\r\n</li><li>Finish: Gloss, hals Satin\r\n</li><li>Inkl. Ply Hardshell</li></ul>','om-28e-retro.jpeg',3084900,3,5,'2019-03-04 09:30:22',1,0),
	(12,'11704','DRS1 Natural','Akustisk Dreadnought westernguitar med dæk, sider og bund i massiv sapele, gribebræt af richlite og Fishman Sonitone pickup. Inkl. kasse.','<h2>Akustisk Dreadnought westernguitar med dæk, sider og bund i massiv sapele, gribebræt af richlite og Fishman Sonitone pickup. Inkl. kasse.\r\n</h2><p>Martin DRS1 markerer en tilbagevenden af Martins Road serie fra 2001. Serien er designet specifikt til de guitarister der søger en hårdfør og billig guitar men som ikke er villige til at gå på kompromis med guitarens klang.\r\n\r\nI modsætning til den oprindelige Road serie så er Martin DRS1 udrustet med et massivt dæk. Kroppen er lavet af massivt sapele mens halsen er konstrueret af et multi-laminat ved navn Stratabond. Stratabond fremstilles af hvid birk, som er farvet og lamineret i store blokke, før de bliver skåret i form. Denne proces øger stivheden og stabiliteten hvilket er afgørende for kvaliteten af en guitar hals. gribebrætet og bro er lavet af richlite med stol i corina og en kompenseret saddel udført i tusq. </p><p>Martin DRS1 er ydermere udrustet med et Fishman Sonitone pickupsystem hvor preampen er strategisk monteret i lydhullet med kontroller for volume og tone.\r\n\r\nSelvom sapele hører til de tungere træsorter så er DRS1 stadig en fornøjelse at spille på. Den modificerede \"Low Oval\" halsprofil kombineret med en 43 mm stol giver en kraftig hals som på intet tidspunkt bliver for klodset eller for svær at håndtere. Barre akkorder op og ned på halsen er en leg, og enkelt toner kan man problemfrit spiller op til 16/17 bånd.\r\n</p><p>\r\nLydmæssigt imponerer Martin DRS1 med en påtrængende, overtonerig og livlig tone. I det dybe område leverer den en kvik og stram bas mens diskanten er lys, klar mens den samtidigt tilføjer en smule sødme til guitarens klang. Prøver man Martin DRS1 vil man bemærke den veldefinerede mellemtone som både gør guitaren velegnet til akkordspil og til diverse former for plekter eller fingerspil. Prisen på guitaren er inkl. kasse.</p>','drs1-natural.jpeg',754900,0,5,'2019-03-04 21:08:41',1,0),
	(13,'12164','D-45 Natural','Akustisk westernguitar i dreadnaught-størrelse med massivt Sitka-grandæk, skalloperet afstivning og krop i massiv rosentræ. Inkl. guitar-kasse.','<h2>Akustisk westernguitar i dreadnaught-størrelse med massivt Sitka-grandæk, skalloperet afstivning og krop i massiv rosentræ. Inkl. guitar-kasse.\r\n</h2><p>D-45 er kendt som den fornemste dreadnought på marketdet overhovedet. Samtlige aspekter af instrumentet er i absolut topklasse, og denne guitar må opleves - både visuelt og lydmæssigt - for helt at forstå, hvor god en guitar kan være. \r\n\r\nStandard-serien udgør kernen af Martins produktion. Det er her, du finder de klassiske modeller i alt fra det simple 18-design til den overdådige udsmykning på 45-modellerne. </p><p>Disse designs fåes i et hav af klassiske Martin-størrelser, som fx. dreadnaught (D), grand concert (000) og auditorium (OM). Det er denne serie, der ligger til grund for Martins pletfri renommé, og guitarerne er blevet spillet på af alle fra Dylan, Young og Lennon til Hendrix, McCartney og Clapton. Hver af disse guitarer repræsenterer både et mesterværk indenfor instrumentbyggeri og en arbejdshest, der bare vil blive bedre og bedre... </p><p><b>\r\n\r\nSpecifikationer</b> </p><ul><li>\r\nKonstruktion: Mahogni blok/Dovetail halssamling </li><li>\r\nKrop: D-14\r\n</li><li>Dæk: Massiv Sitka Gran med abalone indlæg sort/hvid/sort/hvid\r\n</li><li>Dæk afstivnings mønster: DOM\r\n</li><li>Afstivnings materiale: Scalloperet 5/16  Sitka\r\n</li><li>Bund materiale: Massiv Østindisk palisander med abalone indlæg sort/hvid/sort/hvid\r\n</li><li>Side materiale: Massiv Østindisk Palisander med abalone indlæg sort/hvid/sort/hvid\r\n</li><li>Hals materiale: Udvalgt Mahogni\r\n</li><li>Hals form: Low profile\r\n</li><li>Hoved belægning: Massiv Østindisk Palisander med tryk i Guldfolie\r\n</li><li>Gribebræt materiale: Massiv Sort Ibenholt\r\n</li><li>Mensur: 25,4\"\r\n</li><li>Stol materiale: Massiv Sort Ibenholt\r\n</li><li>Stemmemekanikker: Schaller Chrome med store knapper\r\n</li><li>Kasse: Hard Shell</li></ul>','d45-natural.jpeg',6719900,1,5,'2019-03-04 21:13:16',1,0),
	(14,'530813','J-45 Walnut Burst','Akustisk/elektrisk dreadnaught westernguitar med Cutaway, massivt Sitkagran dæk, mahognihals med gribebræt af valnød og LR Baggs Element pickup. Inkl. kasse.','<h2>Akustisk/elektrisk dreadnaught westernguitar med Cutaway, massivt Sitkagran dæk, mahognihals med gribebræt af valnød og LR Baggs Element pickup. Inkl. kasse.</h2><p>J-45 Walnut Avant Garde tilbyder en innovativ, slank krop med rund skulder og cutaway med alle de traditionelle byggeteknikker, der går igen ved hvert eneste Gibson Acoustic produkt. Et massivt Sitka grandæk med traditionel hånd scalloped bracing går her hånd i hånd med en smuk valnød ryg og sider, som giver en fuld og afbalanceret lyd med stor klarhed mellem hver streng.\r\n</p><p><b>\r\nSpecifikationer</b>\r\n</p><ul><li>Kropsform: Round Shoulder\r\n</li><li>Dæk: Massiv Sitkagran\r\n</li><li>Sider og bund: Valnød\r\n</li><li>Hals: 2-delt Mahogni\r\n</li><li>Halsprofil: Advanced Response\r\n</li><li>Gribebræt: Valnød\r\n</li><li>Radius 16\"\r\n</li><li>Bånd 20\r\n</li><li>Stemmeskruer: Mini Grover\r\n</li><li>Finish: Nitrocellulose Lacquer\r\n1/4\" mono udgang\r\n</li><li>Strenge: 0.053, 0.042, 0.032, 0.024, 0.016, 0.012\r\n</li><li>Pickupsystem: LR Baggs Element med volume </li><li>\r\nInkl. Hardshell case</li></ul>','j45-walnut-burst.jpeg',1367900,2,1,'2019-03-04 21:17:01',1,0),
	(15,'549653','414ce-R','Akustisk/elektrisk Grand Auditorium westernguitar med cutaway, massivt dæk af sitkagran, massive sider og bund af indisk Rosewood, hals av tropisk mahogni med gribebræt af ibenholt og ES 2 pickupsystem. Inkl. kasse.','<p><b>Akustisk/elektrisk Grand Auditorium westernguitar med cutaway, massivt dæk af sitkagran, massive sider og bund af indisk Rosewood, hals av tropisk mahogni med gribebræt af ibenholt og ES 2 pickupsystem. Inkl. kasse.</b>\r\n</p><p>Taylor er i dag et ligeså populært og velrenommeret firma som Martin og Gibson, når det kommer til akustiske guitarer. Men i modsætning til disse gamle giganter er Taylor Guitars et nyt foretagende, der blev stiftet i 1974. Når man tænker på på musikeres nærmest religiøse forhold til deres instrumenter (i særdeleshed til akustiske guitarer), så har det været et ekstremt svært marked at kæmpe sig ind på, og det er kun lykkedes p.g.a. én ting: Taylor laver suveræne guitarer. \r\n\r\nDe har gjort op med den gammeldags filosofi om, at \"håndlavet altid er bedst\" og benytter udelukkende manuel arbejdskraft dér, hvor de mener, det er den bedste løsning. Til andre dele af produktionen bruger de ultra-præcise, laser-styrede maskiner, der bl.a. er ansvarlige for de meget smukke perlemorsindlæg. Taylor-lyden er sprød og nærværende, håndværket er fejlfrit, og halsene er smalle og moderne, hvilket gør Taylor-guitarer til de mest spillevenlige akustiske guitarer på markedet. Gør som de kendte - spil Taylor! </p><p><b>\r\n\r\nSpecifikationer</b>\r\n</p><ul><li>Kropsform: Grand Auditorium med venetiansk cutaway\r\n</li><li>Dæk: Massiv sitkagran\r\n</li><li>Sider og bund: Massiv indisk Rosewood\r\n</li><li>Hals: Tropisk mahogni\r\n</li><li>Bracing: Performance with Relief Rout\r\n</li><li>Mensur/skala: 25.5\"\r\n</li><li>Gribebræt: Ibenholt\r\n</li><li>Bånd: 20\r\n</li><li>Stemmeskruer: Taylor Nickel\r\n</li><li>Oversadel: Tusq\r\n</li><li>Sadel: Micarta\r\n</li><li>Elektronik: Expression System 2 preamp/piezo pickup</li><li>\r\nInkl. Taylor Deluxe Hardshell Brown Case</li></ul>','414ce-r.png',1999900,4,6,'2019-03-04 21:20:33',1,0),
	(16,'519741','322e 12-Fret','Akustisk/elektrisk Grand Concert westernguitar med massivt dæk af tropisk mahogni, masive sider og bund af Tasmanian blackwood, hals af tropisk mahogni med gribebræt af ibenholt og ES 2 pickupsystem. Inkl. kasse.','<h2>Akustisk/elektrisk Grand Concert westernguitar med massivt dæk af tropisk mahogni, masive sider og bund af Tasmanian blackwood, hals af tropisk mahogni med gribebræt af ibenholt og ES 2 pickupsystem. Inkl. kasse.</h2><p>Taylor er i dag et ligeså populært og velrenommeret firma som Martin og Gibson, når det kommer til akustiske guitarer. Men i modsætning til disse gamle giganter er Taylor Guitars et nyt foretagende, der blev stiftet i 1974. Når man tænker på på musikeres nærmest religiøse forhold til deres instrumenter (i særdeleshed til akustiske guitarer), så har det været et ekstremt svært marked at kæmpe sig ind på, og det er kun lykkedes p.g.a. én ting: Taylor laver suveræne guitarer. \r\n\r\nDe har gjort op med den gammeldags filosofi om, at \"håndlavet altid er bedst\" og benytter udelukkende manuel arbejdskraft dér, hvor de mener, det er den bedste løsning.</p><p> Til andre dele af produktionen bruger de ultra-præcise, laser-styrede maskiner, der bl.a. er ansvarlige for de meget smukke perlemorsindlæg. Taylor-lyden er sprød og nærværende, håndværket er fejlfrit, og halsene er smalle og moderne, hvilket gør Taylor-guitarer til de mest spillevenlige akustiske guitarer på markedet. Gør som de kendte - spil Taylor! </p><p><b>\r\n\r\nSpecifikationer</b>\r\n</p><ul><li>Kropsform: Grand Concert\r\n</li><li>Dæk: Massiv tropisk mahogni\r\n</li><li>Sider og bund: Massiv Tasmanian blackwood\r\n</li><li>Bracing: Performance with Relief Rout\r\n</li><li>Hals: Tropisk mahogni\r\nMensur/skala: 24-7/8\"\r\n</li><li>Gribebræt: Ibenholt\r\n</li><li>Bånd: 18\r\n</li><li>Oversadel: Tusq\r\n</li><li>Stemmeskruer: Classical Gold w/Synthetic Ivory Buttons\r\n</li><li>Sadel: Micarta\r\n</li><li>Elektronik: Expression System 2 preamp/piezo pickup\r\n</li><li>Inkl. Taylor Deluxe Hardshell Brown Case</li></ul>','322e-12-fret.png',1774900,3,6,'2019-03-04 21:24:26',1,0),
	(17,'344738','LL16 ARE Brown Sunburst','Akustisk/elektrisk guitar med dæk af massiv A.R.E behandlet Engelmann gran, sider og bund af rosentræ, mahogni/rosentræhals med gribebræt af Ibenholt og Zero-Impact pickup-system.','<h2>Akustisk/elektrisk guitar med dæk af massiv A.R.E behandlet Engelmann gran, sider og bund af rosentræ, mahogni/rosentræhals med gribebræt af Ibenholt og Zero-Impact pickup-system.\r\n</h2><p>L6-serien er modificeret med nyt bracing design (den indvendige afstivning), og lyden er blevet større og kraftigere. Der er kommet Zero-Impact Pickup system i guitaren så man også er klar til optagelse eller live-optræden med forstærkning. Det massive grandæk er A.R.E behandlet (Acoustic Resonance Enhancement), hvilket resulterer i stor og varm vintage lyd fra dag et. </p><p>A.R.E Acoustic Resonance Enhancement, er en Yamaha patenteret proces der ved at ændre de fysiske egenskaber i træfibre på dækket, giver guitaren lyd som var det fra gammelt ældet træ. Resultatet er en konstruktion der tillader træet at vibrere mere frit med en lyd der indeholder langt flere klangvariationer - som med et ældre vintage instrument.\r\n</p><p><b>\r\nSpecifikationer</b>\r\n</p><ul><li>Kropstype: Original Jumbo dreadnought </li><li>Type Body\r\nDæk af massiv Engelmann gran - A.R.E behandlet (Acoustic Resonance Enhancement)\r\n</li><li>Sider og bund af massiv Rosentræ\r\nHals af 5-lags mahogni/palisander, slank design\r\n</li><li>Stol af Ibenholt\r\nSRT Zero Impact </li><li>Pickupsystem med individuel piezo elektronik ved hver streng\r\n</li><li>Inkl. deluxe gigbag</li></ul>','ll16-brown-sunburst.jpeg',722900,5,7,'2019-03-04 21:28:06',1,0),
	(18,'452497','Banjo B200','5-strenget banjo med poppel block rim, resonator af sapele, bro af purpleheart og ahorn, mahognihals og gribebræt af purpleheart.','<h2>5-strenget banjo med poppel block rim, resonator af sapele, bro af purpleheart og ahorn, mahognihals og gribebræt af purpleheart.\r\n</h2><p>Det er tre årtier siden, Ibaniz sidst var i banjobranchen, men nu er de tilbage. Ibanez var meget etablerede banjobyggere, og havde endda en signaturmodel for den fantastiske Earl Scruggs back in the day. Ting ændrer sig, og hair-metal-bands sker (tænk 80\'erne), og banjo var pludselig ikke det fedeste instrument, man kunne finde på at spille på. Men vindene er vendt, og folk-instrumenter er mere populære end nogensinde. B200 er top of the line i Ibanez\' banjoserie og en skønhed at se på.\r\n</p><p><b>\r\nSpecifikationer</b>\r\n</p><ul><li>5-strenget banjo\r\nDouble Coodinator rod\r\nPoplar block rim\r\nSapele veneer Resonator\r\n</li><li>Hals: Mahogany\r\n</li><li>Gribebræt: Purpleheart\r\nABS-Multi Resonator binding\r\nSpecial Acrylic gribebrætindlæg\r\nChrime friction tuners\r\n22 bånd\r\nChrome w/etching Armrest\r\n</li><li>Bro: Purpleheart/ahorn\r\nChrome clam shell tailpeice\r\n</li><li>Mensur: 670mm\r\n</li><li>Radius: Flat (plan)</li></ul>','b200.jpeg',367600,2,8,'2019-03-04 21:31:45',1,0),
	(19,'572402','MB-100 Banjo Natural CF','Banjo med mahognikrop, ahornhals, gribebræt af poppel-komposit og Remo-skind.','<h2>Banjo med mahognikrop, ahornhals, gribebræt af poppel-komposit og Remo-skind.\r\nOpen-back 5-strengs banjo.</h2><p> Et perfekt begynderinstrument.\r\n\r\nSpecifikationer\r\nBanjo med 5 strenge\r\nMahognikrop\r\nRemo-skind\r\nAhornhals\r\nGribebræt af poppel-komposit\r\nDot-indlæg\r\n26,25\" skala\r\nKrom hardware</p>','mb-100-banjo-natural.jpeg',139900,3,3,'2019-03-04 21:35:29',1,0),
	(20,'334911','MM-50E Vintage Natural','Mandolin med dæk af massivt gran, krop i flammet ahorn, ahornhals med Rosewood gribebræt. Legendarisk \"F-Style\" model med indbygget Quad NanoMag pickup system.','<h2>Mandolin med dæk af massivt gran, krop i flammet ahorn, ahornhals med Rosewood gribebræt. </h2><p>Legendarisk \"F-Style\" model med indbygget Quad NanoMag pickup system.\r\nMM-50E er en professionel mandolin der kombinerer innovation og klassisk design, som man også forventer af en Epiphone mandolin. MM-50E er den første mandolin, hvor det er muligt at justere udgangsniveauet for hver enkelt strenge par, hvilket løser mange problemer med ubalance når instrumentet er forstærket op. Funktioner der kombineret med den klassiske Lloyd Loar æra F-Style kropsform og hals, gør MM-50E til et one-of-a kind instrument.\r\n</p><p><b>\r\nSpecifikationer</b>\r\n</p><ul><li>Massivt sitka gran dæk\r\n</li><li>Krop i flammet ahorn\r\n</li><li>Ahorn hals\r\n</li><li>14\" Mensur\r\nRosewood gribebræt\r\n</li><li>Pickup: Quad NanoMag justerbar\r\n</li><li>Kontroller: Master Volume, Treble, Bass, 4 individuelle strenge niveau trim potentiometre\r\n</li><li>Nickel hardware</li></ul>','mm50E-vintage-natural.jpeg',521900,1,3,'2019-03-04 21:38:18',1,0),
	(21,'360118','Ukulele Solid Pink','Ukulele i Sopran størrelse.','<p>Ukulele i Sopran størrelse.\r\nUkulelen er et sjovt og let spilbart strengeinstrument. Ukulelen, trods sin størrelse, er særdeles velegnet for både unge og ældre, og er ideel til skoler og musikalsk gruppeundervisning. Nogle mennesker tror måske, at ukulelen er et stykke legetøj, men det er den absolut ikke, og specielt i de senere år har ukulelen vundet større og større indpas på den professionelle musikalske scene.\r\n</p><p><b>\r\nSpecifikationer</b>\r\n</p><ul><li>Top, bund og sider af lamineret lindetræ\r\n</li><li>Hals af basswood\r\n</li><li>Bro og saddel af ABS\r\n</li><li>Open geared stemmemekanikker\r\n</li><li>12 bånd\r\n</li><li>Scale 345mm</li></ul>','ukulele-solid-pink.jpeg',22900,25,9,'2019-03-05 07:37:57',1,0),
	(22,'567088','UKCB-S','Sopran ukulele med krop af udvalgt Sapele ædeltræ med smukke bindinger.','<p>Sopran ukulele med krop af udvalgt Sapele ædeltræ med smukke bindinger.\r\n</p><p><b>Highlights</b>\r\n</p><ul><li>Hals af nato\r\n</li><li>Limet og skruet stol\r\n</li><li>Kvalitets strenge\r\n</li><li>Lidt buet bagside\r\n</li><li>Flotte bindinger\r\n</li><li>Kvalitets indkapslede stemmemekanikker</li></ul>','ukcb-s.jpeg',54900,13,10,'2019-03-05 07:40:54',1,0),
	(23,'551247','American Original 70s Jazz Bass MN Natural','El-bas med krop af ask, polyuretanlak, ahorn hals med 70s “U”-profil, Rosewood gribebræt og 2 x Pure Vintage ‘75 Jazz Bass pickupper. Inkl. hardcase.','El-bas med krop af ask, polyuretanlak, ahorn hals med 70s “U”-profil, Rosewood gribebræt og 2 x Pure Vintage ‘75 Jazz Bass pickupper. Inkl. hardcase.\nFenders American Original-serie består af ikoniske Fender-modeller som er specifikke for henholdsvis 50\', 60\' og 70\'erne. Modellerne har pickupper som er lavet med samme metoder som originalerne, og som fanger særpræget til hvert af de respektive tiår. Dette gælder også halsprofilerne! Alle American Original-modeller har nitrocelluloselak som lader træet ånde, og som gør at instrumentet bare vil se flottere ud med alderen. Selv om guitarerne er tydeligt vintage-orienterede, er de opdaterede med moderne gribebrætradius, vintage tall-bånd og andre detaljer som får dem til at føles naturlige for moderne guitarister.\n\nAmerican Original 70s Jazz Bass\nInstrumentet som introducerede slapping, funk og disco - Fenders Jazz Bass fra 70\'erne. American Original 70s Jazz Bass er udstyret med periodekorrekte specs som komplementeres af en del moderne tilpasninger. Denne bas har krop af ask, polyuretan-lak som på originalen fra 70\'erne, fyldig ahornhals med 70\'er “U”-profil, gribebræt af ahorn med moderne 9.5” radius. Fender Pure Vintage ‘75 Jazz Bass pickupper og periodekorrekt hardware. Leveres i hardcase.\n\nSpecifikationer\nKropsform: Jazz Bass\nKrop: Ask\nFinish: Gloss Urethane\nOversadel: Ben\nOversadelbredde: 37.46 mm\nTruss Rod: Vintage-Stylet, Vintage-style slotted\nSkalalængde: 34\" / 864 mm\nGribebræt: Ahorn\nGribebræt radius: 9.5” / 241 mm\nIndlæg i gribebræt: Pearloid Blocks\nAntal bånd: 20 Vintage Tall\nHals: Ahorn\nHalsprofil: 1975 \"U\"\nStemmeskruer: Pure Vintage \'70s with Fender® Logo\nBro: 4-Saddle Pure Vintage \'70s with Single Groove Saddles\nPickupper: 2 x Pure Vintage \'75 Single-Coil Jazz Bass\nKontroller: Vol 1, Vol 2, Master Tone\nHardware finish: Nikkel/krom\nStrenge: Fender USA Bass 7250M, NPS (.045-.105 Gauges)\nInkl. Vintage-Style Hardshell Case','american-original-70s-jazz-bass-natural.jpeg',1709900,4,2,'2019-03-05 07:44:57',1,0),
	(24,'526011','Jazz Bass PF Black','El-bas med krop af elletræ, ahornhals med gribebræt af Pau Ferro med 7.5\" radius, og Vintage-Style Jazz Bass single-coil pickupper. Inkl. Deluxe gigbag.','<p>El-bas med krop af elletræ, ahornhals med gribebræt af Pau Ferro med 7.5\" radius, og Vintage-Style Jazz Bass single-coil pickupper. Inkl. Deluxe gigbag.\r\nFender Jazz Bass-modellen blev introduceret i 1960, og har siden den gang vokset sig ind i rollen som et af verdens mest brugte instrumenter. Fender 60s Jazz Bass i Classic-serien har en tynd, komfortabel hals og autentiske Jazz Bass single-coil pickupper.\r\n\r\nMexico Classic-serien blev lanceret i slutningen af 90\'erne med tanke på dem som ønskede sig en bas med udseende og følelsen af en vintage Fender uden at bruge vanvittige summer. Serien genskaber Fender-klassikere fra 50, 60 og 70\'erne med de egenskaber som var unike for hvert tiår.\r\n</p><p>\r\nSpecifikationer </p><ul><li>\r\nKonstruktion: Bolt-on\r\n</li><li>Mensur/skala: 34 \"\r\n</li><li>Krop: Elletræ\r\n</li><li>Hals: Ahorn\r\n</li><li>Halsprofil: “C”\r\n</li><li>Gribebræt: Pau ferro\r\n</li><li>Radius: 7.25”\r\n</li><li>Bånd: 20 Vintage-style\r\n</li><li>Oversadel: Syntetisk ben, 1.5”\r\n</li><li>Bro: Vintage-Style 4-Saddle\r\n</li><li>Pickupper: 2 x Standard Vintage Alnico Magnet Single-Coil Jazz Bass\r\n</li><li>Hardware: Krom\r\n</li><li>Produktionsland: Mexico\r\n</li><li>Inkl. Deluxe gigbag</li></ul>','jazz-bass-pf-black.png',904900,8,2,'2019-03-05 23:06:34',1,0),
	(25,'526955','American Elite Jazz Bass V EB Ocean Turquoise','El-bas 5-strenget med krop af elletræ, ahornhals med Modern \"C\" - \"D\" Compound-profil, ibenholt gribebræt og 2 stk. 4th Generation Noiseless-pickupper. Inkl. Fender Elite Molded TSA-kasse.','<h2>El-bas 5-strenget med krop af elletræ, ahornhals med Modern \"C\" - \"D\" Compound-profil, ibenholt gribebræt og 2 stk. 4th Generation Noiseless-pickupper. Inkl. Fender Elite Molded TSA-kasse.\r\n</h2><p>American Elite Jazz Bass er en aktiv 5-strenget bas, designet for professionelle moderne bassister med høje krav til alsidighed, teknologiske nyheder, tidløst Fender-design og top spillekomfort.\r\n\r\nAmerican Elite-serien blev født af lidenskab som findes i bassister på ethvert niveau, altid søgende efter nye kreative udtryksformer. </p><p>American Elite er ikke bare et nyt navn på allerede kendte egenskaber. Det markerer introduktionen af instrumenter i klassisk Fender-tradition, opgraderet med de forbedringer, teknologiske nyskabelser og muligheder, som kan forventes af en professionel guitar i det 21. århundrede. \r\n\r\nHele serien er opgraderet med 4. generation af Fenders Noiseless pickups som er den heftigste pickup-teknologi Fender kan tilbyde. En ny 18V preamp bidrager til endnu mere power, forbedret signalkvalitet, større headroom og reduceret støj. \r\n\r\nBassen har en hals med compound radius (9.5”-14”). Profilen starter som Modern \"C\" ved sadlen, og formes gradvist til en \"D\"-profil nede ved halsmonteringen, et design udviklet for maksimal spillekomfort over hele registeret. En HiMass Vintage-bro giver øget attack, resonans, punch og sustain, og tillader både string-thru og top load-strengemontering. Leveres i en Elite Molded Case med TSA-låse.\r\n</p><p><b>\r\nSpecifikationer</b>\r\n</p><ul><li>Type: Jazz Bas\r\n</li><li>Krop: Elletræ\r\n</li><li>Hals: Ahorn\r\n</li><li>Halsprofil: Compound Modern ”C” til ”D”\r\n</li><li>Mensur: 34”\r\n</li><li>Gribebræt Ibenholt\r\n</li><li>Radius: 9.5”-14” Compound\r\n</li><li>Bånd: 21 Medium Jumbo\r\n</li><li>Sadel: Ben\r\n</li><li>Pickups: 2 stk. New 4th Generation Noiseless\r\n</li><li>Kontroller: Master Volume, Pan Pot, Treble Boost/Cut, Midrange Boost/Cut, Bass Boost/Cut, Active/Passive Mini Toggle\r\n</li><li>Øvrigt elektronik: 18v preamp med aktiv 3-bånds EQ\r\nBro: 5-Saddle HiMass Vintage\r\n</li><li>Stemmemekanik: Fender \"F\" Light-Weight Vintage-Paddle</li><li>\r\nStrenge: Fender USA NPS .45 - .125\r\n</li><li>Made in the USA</li></ul>','elite-jazz-bass-ocean.jpeg',1864900,2,2,'2019-03-05 23:11:53',1,0),
	(26,'581972','Thunderbird Bass 2019 Vintage Sunburst','El-bas med mahognikrop, gennemgående hals af mahogni/valnød, Rosewood gribebræt, og T-Bird pickupper. Inkl. Hard Shell Case.','<h2>El-bas med mahognikrop, gennemgående hals af mahogni/valnød, Rosewood gribebræt, og T-Bird pickupper. Inkl. Hard Shell Case.\r\n</h2><p>Thunderbird er i lighed med Gibson Firebird designet af den amerikanske bildesigner Ray Dietrich, og blev introduceret for første gang i 1963. Thunderbird har i 2019 gennemgående neck-thru halskonstruktion af mahogni og valnød, reversed headstock, Rounded-profil og gribebræt af Rosewood, i tillæg til Gibson T-Bird pickupper.\r\n</p><p><b>\r\nSpecifikationer</b>\r\n</p><ul><li>Kropsform: Thunderbird Bass\r\n</li><li>Krop: Mahogni\r\n</li><li>Bindinger: Ingen\r\n</li><li>Hals: 9-lag mahogni/valnød\r\n</li><li>Halsprofil: Rounded\r\n</li><li>Oversadel: Tektoid\r\n</li><li>Oversadelbredde: 1.50”\r\n</li><li>Gribebræt: Rosewood\r\n</li><li>Indlæg: Acrylic Dots\r\n</li><li>Skalalængde: 34”\r\n</li><li>Antal bånd: 20\r\n</li><li>Bro: 3-Point Adjustable\r\n</li><li>Knapper: Black Top Hats with Silver Inserts\r\n</li><li>Stemmeskruer: Grover Bass Keys\r\n</li><li>Hardware plating: Svart krom\r\n</li><li>Halspickup: Rhythm T-Bird\r\n</li><li>Bridge pickup: Lead T-Bird\r\n</li><li>Kontroller: 2 x volume, Master Tone\r\nKasse/bag: </li><li>Hard Shell Case (inkluderet)\r\n\r\nGibson USA</li></ul>','thunderbird-bass-2019.jpeg',1762900,7,1,'2019-03-05 23:28:34',1,0),
	(27,'582758','Stingray Special 4 H Jet Black','El-bas med krop i ask, Roasted ahorn hals med ibenholt gribebræt, Humbucker pickup med Neodymium magneter, aktiv elektronik med 3-bånds EQ.','<h2>El-bas med krop i ask, Roasted ahorn hals med ibenholt gribebræt, Humbucker pickup med Neodymium magneter, aktiv elektronik med 3-bånds EQ.\r\n</h2><p>Music Man Stingray 4 H er optimeret og moderniseret med en Select Roasted Maple hals og ny forbedret elektronik med mere output og headroom. Stingray Special 4 H leverer nu alt fra moderne punch til klassisk vintage lyd bedre end nogensinde før. Nydesignede letvægt stemmeskruer har skabt en mere afbalanceret hals, samtidig med at de giver ultra pålidelig stemmestabilitet. </p><p>Da Music Man med Leo Fender i spidsen i midten af 70\'erne først introducerede StingRay modellen, blev den øjeblikkeligt en favorit blandt bassister verden over. Det var den første bas i produktionen, der havde aktiv elektronik og den karakteristiske 3+1 stemmemekanik konfiguration. Siden er StingRay konstant blevet forbedret og perfektioneret.</p>','stingray-special-black.jpeg',1929500,3,11,'2019-03-05 23:34:18',1,0),
	(28,'542193','GS MINI-e BASS','Akustisk/elektrisk bas med massivt dæk af sitkagran, lamineret sider og bund af sapele, sapelehals med gribebræt af ibenholt og ES-B pickupsystem. Inkl. Hard Bag.','<p><b>Akustisk/elektrisk bas med massivt dæk af sitkagran, lamineret sider og bund af sapele, sapelehals med gribebræt af ibenholt og ES-B pickupsystem. Inkl. Hard Bag.\r\n</b></p><p>Lille 4-strenget basguitar i det populære og rejsevenlige GS Mini-format. GS Mini er inspireret af den større GS-model, men i nedskaleret version som ikke er gået ud over lyden. Du får masser af klang i et instrument som er let at håndtere og sjovt at spille på.\r\n\r\nTaylor er i dag et ligeså populært og velrenommeret firma som Martin og Gibson, når det kommer til akustiske guitarer. Men i modsætning til disse gamle giganter er Taylor Guitars et nyt foretagende, der blev stiftet i 1974. Når man tænker på musikeres nærmest religiøse forhold til deres instrumenter (i særdeleshed til akustiske guitarer), så har det været et ekstremt svært marked at kæmpe sig ind på, og det er kun lykkedes på grund af én ting: Taylor laver suveræne guitarer. \r\n\r\nDe har gjort op med den gammeldags filosofi om, at \"håndlavet altid er bedst\" og benytter udelukkende manuel arbejdskraft dér, hvor de mener, det er den bedste løsning. Til andre dele af produktionen bruger de ultra-præcise, laser-styrede maskiner der bl.a. er ansvarlige for de meget smukke perlemorsindlæg. </p><p>Taylor-lyden er sprød og nærværende, håndværket er fejlfrit, og halsene er smalle og moderne, hvilket gør Taylor-guitarer til nogle af de mest spillevenlige akustiske guitarer på markedet. Gør som de kendte - spil Taylor! </p><p><b>\r\n\r\nSpecifikationer</b>\r\n</p><ul><li>Kropsform: GS Mini\r\n</li><li>Dæk: Heltre sitkagran\r\n</li><li>Sider: Lamineret sapele\r\n</li><li>Bund: Lamineret sapele\r\n</li><li>Bracing: GS Mini w/ Relief Route\r\n</li><li>Skalalængde: 23-1/2\"\r\n</li><li>Hals: Sapele\r\n</li><li>Halsbredde: 1-11/16\"\r\n</li><li>Gribebræt: Ibenholt\r\n</li><li>Bånd: 20\r\n</li><li>Indlæg i gribebræt: 4mm Dot Italian Acrylic\r\n</li><li>Stemmeskruer: Die-Cast Chrome\r\n</li><li>Strenge: D’Addario EXP PBB190GS\r\n</li><li>Oversadel: NuBone\r\n</li><li>Sadel: Micarta\r\n</li><li>Elektronik: ES-B preamp/pickup\r\n</li><li>Inkl. GS Mini Hard Bag</li></ul>','gs-mini-e-bass.png',599900,0,6,'2019-03-06 00:15:31',1,0),
	(29,'556655','Bc 62-SW 5 med LR Baggs Anthem SL','Femstrenget akustisk/elektrisk jumbobas med cutaway, dæk af sitkagran, krop af valnød, gribebræt af ibenholt og L.R. Baggs-system.','<h2>Femstrenget akustisk/elektrisk jumbobas med cutaway, dæk af sitkagran, krop af valnød, gribebræt af ibenholt og L.R. Baggs-system.\r\n</h2><p>Furch Bc 62-SW 5 er en femstrenget akustisk/elektrisk bas, designet til at levere en helt superb sound. Dækket har et specielt designet lydhul, der forstærker responsen i de dybe frekvenser. Kombinationen af et dæk i sitkagran og sider og bund i sort valnød, giver en perfekt tonal balance. \r\n\r\nBassen leveres med et L.R. Baggs Anthem SL-system med både piezo- og kondensatormikrofon for en meget dynamisk og naturtro sound.\r\n\r\n</p><p><b>Specifikationer</b>\r\n</p><ul><li>Dæk: Solid sitkagran\r\n</li><li>Sider og bund: Solid sort valnød\r\n</li><li>Hals: Mahogni\r\n</li><li>Bredde ved saddel: 45 mm\r\n</li><li>Mensur/skala: 860 mm\r\n</li><li>Gribebræt: Ibelholt\r\n</li><li>Mekanik: Black Chrome\r\n</li><li>Pickup: L.R. Baggs Anthem SL med piezo- og kondensatormikrofon</li></ul>','bc-62-sw.jpeg',1496500,4,12,'2019-03-06 07:01:54',1,0),
	(30,'579594','CB-60SCE LR Natural','Akustisk/elektrisk bas med massivt grandæk, lamineret sider og bund af mahogni, cutaway concert-form og Fishman Classic Design pickupsystem.','<h2>Akustisk/elektrisk bas med massivt grandæk, lamineret sider og bund af mahogni, cutaway concert-form og Fishman Classic Design pickupsystem.\r\n</h2><p>CB-60SCE er en akustisk basguitar med cutaway og krop i Concert-størrelse, massivt grandæk, sider og bund af mahogni og Fenders Easy-To-Play halsprofil. Dette er en super ‘go-to’ bas i akustiske jam-sammenhænge, men har også et fleksibelt integreret pickupsystem fra Fishman som lader dig tilslutte forstærker/PA-system!\r\n\r\n</p><p><b>Specifikationer</b>\r\n</p><ul><li>Kropsform: Concert Cutaway\r\n</li><li>Dæk: Massivt gran\r\n</li><li>Sider og bund: Lamineret mahogni\r\n</li><li>Bracings: Skalloperet “X”\r\n</li><li>Hals: Mahogni\r\n</li><li>Halsprofil: Fender Easy-To-Play\r\n</li><li>Mensur/skala: 32” (813 mm)\r\n</li><li>Gribebræt: Laurel\r\n</li><li>Radius: 12” (305 mm)\r\n</li><li>Bånd: 22 Vintage Style\r\n</li><li>Oversadel: 43 mm, plast\r\n</li><li>Truss Rod: 2-vejs\r\nBro: Rosewood\r\n</li><li>Stemmeskruer: Støbt, krom\r\n</li><li>Elektronik: Fishman Classic Design pickup/preamp med volumekontrol</li></ul>','cb-60SCE-natural.jpeg',244900,5,2,'2019-03-06 07:05:05',1,0),
	(31,'565450','SJB5F CF Natural Satin','Akustisk/elektrisk jumbo bas med dæk af massiv gran, sider og bund af mahogni, mahognihals med gribebræt af Ovangkol og Fishman Isys+ pickup system.','<p><b>Akustisk/elektrisk jumbo bas med dæk af massiv gran, sider og bund af mahogni, mahognihals med gribebræt af Ovangkol og Fishman Isys+ pickup system.\r\n</b></p><p>Der er ikke mange, der ved det, men Cort er verdens største producent af guitarer og basser. Firmaet, der har fabrikker i Korea, Indonesien og Kina, laver ikke bare instrumenterne, der sælges under eget navn, men det er også dem, der producerer de billigere guitarer, basser, ja, sågar forstærkere for firmaer, som Fender, Ibanez, Lakland, G&amp;L, Washburn og mange flere. Sådan en position får man ikke, hvis man ikke leverer varen, og Cort har da også altid leveret ren kvalitet til meget små priser. Ser man på deres dyrere modeller, forbavses man over det høje niveau af håndværk, og celebre musikere, som Larry Coryell, Hiram Bullock og T.M. Stevens har kastet deres kærlighed på Cort. Synes du, det lyder fristende? Det kan være, du spiller på en Cort uden at vide det… \r\n\r\nCort akustiske basser er fremstillet af nøje udvalgte træsorter og udstyret med aktivt pickupsystem. Basserne leverer en stor tone ved akustisk brug og fungerer optimalt elektrisk med det indbyggede pickupsystem.\r\n</p><p><b>\r\nSpecifikationer</b>\r\n</p><ul><li>Konstruktion: Dovetail\r\n</li><li>Cutaway: Venetian Cutaway\r\n</li><li>Krop: Acoustic Bass Deep Body Depth (110x135mm)\r\n</li><li>Dæk: Massiv gran\r\n</li><li>Sider: Lamineret mahogni\r\n</li><li>Bund: Lamineret mahogni\r\n</li><li>Bindinger: Multi\r\n</li><li>Hals: Mahogni\r\n</li><li>Gribebræt: Ovangkol\r\n</li><li>Indlæg i gribebræt: Dots\r\n</li><li>Skalalængde: 34\"\r\n</li><li>Stol: Ovangkol\r\n</li><li>Elektronik: Fishman Isys Plus Preamp med Sonicore pickup\r\n</li><li>Strenge: D\'Addario YB-PBB 170 Strings\r\n</li><li>Bracing: Advanced Scalloped X-Bracing\r\n</li><li>Inkl. gigbag\r\n</li></ul>','SJB5F-CF-natural-satin.jpeg',353200,7,13,'2019-03-06 07:09:43',1,0),
	(32,'482055','NP-12 Piaggero Black','Begynderklaver i slankt design med 61 anslagsdynamiske tangenter. 64 toners polyfoni, 10 forskellige lyde og indbyggede højttalere.','<div>Med det slanke design og 61 anslagsfølsomme tangenter laver Yamaha et begynderklaver, der er både stilfuldt og funktionelt på samme tid. Der er lagt vægt på en simpel brugerflade, der kun rummer det mest nødvendige. Det udelukker dog ikke, at du finder 10 forskellige lyde og en række indstillingsmuligheder, der gør instrumentet meget alsidigt.<br></div><p>Tangentanslaget er gradvis vægtet, hvilket dækker over forskellen i tangentmodstanden ved anslag af høje og lave toner. </p><p><b> \r\n\r\nHighlights</b>\r\n</p><ul><li>61 anslagsfølsomme tangenter\r\n</li><li>64 toners polyfoni\r\n</li><li>10 valgbare lyde og rumklangseffekt\r\n</li><li>Metronom og tune/transpose funktion\r\n</li><li>Indbygget 2 x 6W højttalersystem (12cm x 6cm) x 2\r\n</li><li>Mulighed for batteridrift\r\n</li><li>MIDI ind- og udgang\r\n</li><li>USB TO HOST terminal\r\n</li><li>Hovedtelefonudgang\r\n</li><li>Auto-sluk funktion\r\n</li><li>Leveres inklusive strømforsyning</li><li>Dimensioner 1036 x 105 x 259 mm\r\n</li><li>Vægt 4.5 kg</li></ul>','np-12-piaggero-black.jpeg',139900,25,7,'2019-03-10 07:05:19',1,0),
	(33,'148995','SV1 73 Black','Stage Vintage Piano med 73 tangenters RH3 vægtede hammermekaniker.','<p>Korg Stagepiano\r\nStage Vintage Piano med 73 tangenters RH3 vægtede hammermekaniker.\r\n</p><p>Stage Vintage Piano SV-1, tilbyder en fantastisk opsætning af de mest anerkendte og anvendte elektriske og akustiske pianoer, clavinetter, orgler samt  strygerlyde og synths. Hver lyd er en detaljeret og autentisk genskabning med hele det dynamiske omfang og udtryk, som er synonymt med originalinstrumentet. SV-1 indeholder desuden præcis de effekter, forstærkere og højtalerkabinetter, som gav disse lyde deres unikke karakter - alt indpakket i et skønt vintage-design med et overskueligt og brugervenligt interface. Her findes alle de elpianoer, du behøver. </p><p>Den akustiske pianodel indeholder bl.a. både tyske og japanske flygelgiganter, et opretstående piano samt et japansk elektro-akustiskt piano, populært i slutningen af 70’erne indtil midten af 80’erne. Alle disse lyde er selvfølgelig samplet i flere dynamiske trin. Orgeldelen inkluderer flere varianter af et klassisk tonehjulsorgel, de mest kendte engelske og italienske combo-orgler og et unikt rørdrevet orgel. \r\n\r\nClavinet-delen indeholder flere forskellige toneopsætninger plus et andet instrument fra samme producent. </p><p>Du finder endda båndbaserede og analoge strygere, kor og et antal fede analoge syntlyde. Dette er bare en smule af, hvad SV-1 har at tilbyde. Korg har ikke sparet på noget for at tilbyde de bedste og mest autentiske lyde sammen med den bedste spilbarhed, som kan opdrives i dag. SV-1 Stage Vintage er udstyret med Korgs bedste vægtede hammermekanik (RH3) og findes med 73 eller 88 tangenter. Stativ og gigbag findes som tilvalg.&nbsp;</p>','SV1-73-black.jpeg',1009900,17,14,'2019-03-10 07:10:04',1,0),
	(34,'565728','Piano 4','Stage Piano med 88 Triple Sensor Virtual Hammer Action tangenter med vægtet dynamisk kontrol og adgang til over 1000 kvalitets samplede instrumenter. Kompatibelt med Nord Piano Library og Nord Sample Library.','<h2>Stage Piano med 88 Triple Sensor Virtual Hammer Action tangenter med vægtet dynamisk kontrol og adgang til over 1000 kvalitets samplede instrumenter. Kompatibelt med Nord Piano Library og Nord Sample Library.\r\n</h2><p>Nord Piano 4 indeholder fantastiske performance funktioner som Seamless Transitions, dedikerede klaverfiltre og Split Point Crossfades som giver et live-fokuseret instrument med enestående klaver følelse. Når man skifter lyd på Nord Piano 4 har den glidende overgange som gør at lydene skifter gradvist uden ophold. Man kan kombinere 2 lyd-afsnit i lag eller med split. Der findes 7 split-punkter med Crossfade-funktionalitet, der udglatter overgangene mellem de to splitpunkter. </p><p> \r\n\r\nNord Piano er et dedikeret Stage Piano med 88 vægtede tangenter med Triple Sensor Virtual Hammer Action Technology. Disse eksklusive Nord tangenter simulerer hammer bevægelser i et Grand Piano med enestående autenticitet og dynamisk respons. Keyboardets Triple Sensor teknik gør det muligt at analysere tangenternes bevægelser med utrolig høj præcision, hvilket gør det muligt at spille mere dynamisk med en forbløffende kontrol, uanset anslagsstyrke. </p>','piano4.jpeg',1825000,6,15,'2019-03-10 07:13:53',1,0),
	(35,'595579','FP-10 Black','Kompakt og letvægts stagepiano med 88 PHA-4 vægtede tangenter med Escapement og Ivory Feel, Bluetooth, SuperNATURAL piano lydprocessor, indbygget højttalersystem.','<h2>Kompakt og letvægts stagepiano med 88 PHA-4 vægtede tangenter med Escapement og Ivory Feel, Bluetooth, SuperNATURAL piano lydprocessor, indbygget højttalersystem.\r\n</h2><p>Når inspirationen er over dig, så tag plads ved et af Rolands berømte FP-serie pianoer; her basismodellen FP-10. Dette prisbillige digitalpiano er altid ”kampklar”, med en autentisk spillefornemmelse på det 88-tangenters PHA-4 Standard klaviatur med Escapement og Ivory Feel. Spil med de udtryksfulde SuperNATURAL klaverlyde via de indbyggede højttalere eller hovedtelefoner. Med sit transportable, pladsbesparende design, er FP-10 det ideelle instrument til brug i hjemmet, uanset om du øver teknikker i dit soveværelse eller giver koncerter i stuen. Bluetooth-forbindelse og smarte integrerede funktioner gør, at instrumentet tilbyder en anden funktionalitet end andre digitale modeller til denne pris.\r\n</p><p>\r\nHighlights\r\nOvertonerig og responsiv lyd fra Rolands berømte SuperNATURAL Piano lyde\r\n88-key hammer-action tangenter i et kompakt kabinet\r\nPHA-4 Standard klaviatur der giver en autentisk klaverfornemmelse med maksimale udtryksmuligheder\r\n15 lyde, 96 toners polyfoni\r\nHovedtelefonudgang og ”stille” klaviatur, der gør at du kan spille når som helst uden at forstyrre andre\r\nIndbyggede højttalere der gengiver dit spil med en udtryksfuld lyd\r\nIndbygget Bluetooth MIDI/USB MIDI interface så du kan tilslutte til Garageband, computere, DAW software\r\nRolands Piano Partner 2 app gør, at du nemt vælger lyd, starter metronomen m.m. fra din smartphone\r\nTwin Piano Mode er den ideelle løsning til klaverundervisning, så elev og lærer kan spille side om side i de samme oktaver\r\nDimensioner 1,284 x 258 x 149 mm\r\nVægt 12,3 kg\r\n</p>','FP-10-black.jpeg',399000,4,16,'2019-03-10 07:18:55',1,0),
	(36,'322018','MPK249','MIDI-controller og keyboard med 49 semi-vægtede anslagsfølsomme tangenter, aftertouch, 16 drumpads, 8 dreje- og 8 skyde-controllers.','<p><b>MIDI-controller og keyboard med 49 semi-vægtede anslagsfølsomme tangenter, aftertouch, 16 drumpads, 8 dreje- og 8 skyde-controllers.\r\n</b></p><p>MPK-serien byder på et slankt design, RGB baggrundsbelyste trigger pads, og 20-tegns LCD-skærm med overskuelig og stor parameter oversigt. MPK249 kan sende Qwerty-style kommandoer og man får en imponerende række af knapper, drejeknapper og tromme pads som gør det til en leg at arbejde med musik på computer. MPK leveres med en softwarepakke indeholdende bl.a. Ableton Live Lite og MPC Essentials - et samplebaseret groove produktion program, samt spectral morphing synth Twist fra SONiVOX.</p><p><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/14CKu-L_NEw\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe> </p>','MPK249.jpeg',279900,8,17,'2019-03-10 07:29:29',1,0),
	(37,'512892','LPK 25 Wireless','USB MIDI-minikeyboard med 25 anslagsdynamiske tangenter, trådløs Bluetooth MIDI for iOS og Mac OS X, arpeggiator og 4 hukommelsespladser.','<h2>USB MIDI-minikeyboard med 25 anslagsdynamiske tangenter, trådløs Bluetooth MIDI for iOS og Mac OS X, arpeggiator og 4 hukommelsespladser.\r\n</h2><p>LPK25 Wireless er et ultra kompakt trådløst (for iOS og Mac OS X) USB MIDI-keyboard designet for musikere, producenter og DJs som vil have sit musikværktøj med over alt. Med trådløs MIDI over Blueotooth og batteridrift kan du fortsætte arbejdet i bussen eller på stranden, noget som gør LPK-designet endnu mere flexibelt end tidligere. Keyboardspillere som ønsker at arbejde med software på bærbare computere får her et klaviatur som ikke er større end at det kan transporteres i tasken til den bærbare.</p><p> Det lille keyboard har 25 anslagsfølsomme mini-tangenter, oktav op/ned, sustain og tap-tempo. En indbygget arpeggiator gør det enkelt at skabe nye melodiske ideer, og fire hukommelsesbanker sikrer enkel adgang til gemte indstillinger for de enkelte funktioner. Kan køre trådløst af AA-batterier i op til 12 timer.</p>','LPK25-wireless.png',56900,11,17,'2019-03-10 07:34:06',1,0),
	(38,'585694','Fire','Dedikeret hardware-controller til FL Studio med 4 x 16 anslagsdynamiske RGB pads, 4 berøringsfølsomme knapper, transportkontroller. Inklusive FL Studio Fruity Fire Edition.','<p><b>Dedikeret hardware-controller til FL Studio med 4 x 16 anslagsdynamiske RGB pads, 4 berøringsfølsomme knapper, transportkontroller. Inklusive FL Studio Fruity Fire Edition.\r\n</b></p><p>FIRE er verdens første dedikerede controller til FL Studio. FIRE, som er produceret i tæt samarbejde med softwareproducenten Image-Line, er smart, ultra-bærbar og konstrueret med fokus på workflow og minutiøst kontrol over FL Studio\'s kernefunktioner. Controlleren gør det muligt at få mest muligt ud af FL Studios kritikerroste produktions egenskaber. </p>','akai-fire.jpeg',149900,2,17,'2019-03-10 07:36:51',1,0),
	(39,'525763','Seaboard BLOCK','MIDI-controller og keyboard med 5-dimensionel berøringsoverflade. 24 tangenter, trådløs over Bluetooth. Inkl. software NOISE, Ækvator Player, BLOCKS Dashboard og MaxMSP.','<h2>MIDI-controller og keyboard med 5-dimensionel berøringsoverflade. 24 tangenter, trådløs over Bluetooth. Inkl. software NOISE, Ækvator Player, BLOCKS Dashboard og MaxMSP.\r\n</h2><p>Seaboard BLOCK er et revolutionerende MIDI-keyboard, hvor tangentspillere kan få et helt nyt niveau af udtryksmuligheder, takket være keyboardets fem-dimensionale berøringsflade. Ved at spille på disse unikke \"tangentbølger\" former man lyden gennem intuitive berøringer, som ved at slå til tangenten, trykke den ned, lave vibrato med fingeren på samme måde som på en streng, løfte fingeren, glide fra venstre til højre eller op og ned. Roli Seaboard BLOCK kan nemt parres med andre Block produkter eller flere Seaboard Block takket være sine magnetiske DNA kontakter.</p><p><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/psVSGgZQNmg\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe><br></p>','seaboard-block.jpeg',209000,13,18,'2019-03-10 07:44:50',1,0),
	(40,'479621','microKEY2-49','MIDI-keyboard med 49 Natural Touch mini tangenter og USB bus-powered tilslutning. Inkl. software og rabatkoder fra Korg.','<h2>MIDI-keyboard med 49 Natural Touch mini tangenter og USB bus-powered tilslutning. Inkl. software og rabatkoder fra Korg.\r\n</h2><p>Du behøver bare et enkelt USB-kabel mellem keyboard og Mac/Win, iPad og iPhone, og du er klar til at spille på softwareinstrumenter som KORG Gadget, KORG Module, GarageBand, eller ethvert andet MIDI-kompatibelt musikprogram. microKEY2 er et perfekt valg til den bærbare til indspilning og kontrol af dit musik software.\r\n\r\nMed keyboardet medfølger en softwarepakke i form af en software licens kupon og instruktion om download. </p><p>Apps for iPad/iPhone: Korg Gadget Le, Korg Module Le for iPad og Korg Module Le for iPhone. Software for Mac/Windows: Korg M1 Le, Lounge Lizard Session, Ultra Analog Session, Applied Acoustics Systems Strum Session, Reason Limited og UVI Digital Synsations. </p><p>\r\n\r\nDer medfølger også en Korg Kontrol Editor, som er en dedikeret software editor for Mac og Windows hvormed man kan specialopsætte sit keyboard til egne præferencer inklusive finjustering af velocity kurver.\r\n</p>','microKEY49.jpeg',79500,32,14,'2019-03-10 07:50:10',1,0),
	(41,'457790','Mother-32','Semi-modulær synth i desktop udførsel med 32-punkts patchbay, voltage-controlled 32-step sequencer, sort aluminiums kabinet med traditionelle træ-sidestykker.','<h2>Semi-modulær synth i desktop udførsel med 32-punkts patchbay, voltage-controlled 32-step sequencer, sort aluminiums kabinet med traditionelle træ-sidestykker.\r\n</h2><p>Mother-32 er en 100 % analog semi-modulær synth i desktop udførsel. Et semi-modulært design betyder at man ikke behøver at starte med at patche kabler op for at få lyd, men kan starte med at nyde stor fed analog lyd med det samme. Når behovet opstår, kan man begynde at benytte det omfattende 32-punkts patchbay med de 5 medfølgende patchkabler, hvilket låser op for virkelig udtryksfulde, unikke og komplekse syntese kapaciteter. </p><p>Patchbay giver også adgang til et væld af funktioner, herunder CV udgangsstik, MIDI til CV konvertering, ekstern lydindgang, en anden voltage-controlled mixer, sync, og sammenkobling af flere enheder. Mother-32 er håndlavet på Moogs fabrik i Asheville, USA og er omhyggeligt udformet i sort laserætset aluminiums kabinet med traditionelle træ-sidestykker.</p>','moog-mother.jpeg',449900,3,19,'2019-03-10 07:53:38',1,0),
	(42,'440143','Yamaha VA5S14','Viola i 14\" størrelse med grandæk, bund, sider og hals i ahorn, ibenholt gribebræt og Wittner \"Ultra\"-strengeholder med 4 finstemmere. Inkl. bue, etui og harpiks.','<p></p><h2>Viola i 14\" størrelse med grandæk, bund, sider og hals i ahorn, ibenholt gribebræt og Wittner \"Ultra\"-strengeholder med 4 finstemmere. Inkl. bue, etui og harpiks.</h2>\r\n<p>Denne viola fremstilles i hånden efter de traditionelle metoder inden for topklasse violiner. Både størrelse, design og pris er blevet tilpasset for unge studerende, så de også får chancen og muligheden for at udvikle og lære at spille et autentisk kvalitets instrument.</p>\r\n<p>Instrumenterne behandles med en olielak, der bevarer lydkvaliteten. Da lakken har en meget stor indflydelse på lyden, har Yamaha lagt meget tid og kræfter på at udvikle den oliemaling der skaber den bedste tone. For bedste effekt håndmales instrumenterne, hvilket giver violinen et smukt og skinnende udseende, og samtidigt forbedrer instrumentets respons og artikulation. Denne pakke indeholder alt hvad du behøver for at komme i gang; violin, etui, bue og harpiks. </p><b>\r\n\r\nHighlights</b>\r\n<p></p><ul><li>Type: Stradivarious\r\n</li><li>14\" størrelse\r\n</li><li>Grandæk\r\n</li><li>Hals, bund og sider af ahorn\r\n</li><li>Gribebræt af ibenholt\r\n</li><li>Stol: Wittner \"Ultra\" med 4 finstemmere\r\n</li><li>Inkl. bue, etui og harpiks\r\n</li></ul>','yamaha-VA5S14.jpeg',349900,14,7,'2019-03-11 09:37:06',1,0),
	(43,'487998','YEV105 Electric Violin Black','Elektrisk violin med krop af gran/mahogni/ahorn, sideramme i valnød, ahorn hals med Rosewood gribebræt, ahornbro med indbygget piezo pickup.','<div class=\"row-fluid product-short-description\" style=\"width: 625px; color: rgb(51, 51, 51); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><h3 class=\"js-editable-product-desc js-product-desc-result\" editable-productid=\"557444\" style=\"margin: 0px; font-family: \" open=\"\" sans\",=\"\" arial,=\"\" helvetica,=\"\" sans-serif;=\"\" line-height:=\"\" 28px;=\"\" font-size:=\"\" 21px;\"=\"\">Elektrisk violin med krop af gran/mahogni/ahorn, sideramme i valnød, ahorn hals med Rosewood gribebræt, ahornbro med indbygget piezo pickup.</h3></div><div class=\"row-fluid product-description editable-product-longdescription\" editable-productid=\"557444\" style=\"width: 625px; color: rgb(51, 51, 51); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" helvetica,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" margin-top:=\"\" 22px=\"\" !important;\"=\"\">YEV105 er en 5-strenget elektrisk violin, der kombinerer nyskabende skønhed med solide live-performance-funktioner og potentiale. Möbius strip like design giver kontinuitet mellem for og bagside, og den tredimensionelle form appellerer til publikum, når der spilles live. En nøje udvalgt kombination af ahorn med mahogni og gran i en 5-lags konstruktion resulterer i fremragende respons og en naturlig overordnet lyd som giver kunstnere mulighed for frit at frembringe deres musikalske udtryk.</div><div class=\"row-fluid product-description editable-product-longdescription\" editable-productid=\"557444\" style=\"width: 625px; margin-top: 22px !important;\"><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/2NQFEurrzV8\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe><br></div>','YEV105.jpeg',649900,9,7,'2019-03-11 18:52:07',1,0),
	(44,'321395','TR-8 (Aira)','Performance rhythm machine med magien fra TR-808 og TR-909, men med nye lyde og moderne funktioner.','<p>Performance rhythm machine med magien fra TR-808 og TR-909, men med nye lyde og moderne funktioner.\r\n</p><p>TR-8 er en performance trommemaskine, der sammensmelter den legendariske lyd og vibe fra TR-808 og TR-909 med features og funktioner der passer til tiden. Genre-definerende lyde, klassiske effekter og hidtil uset live pattern-manipulation. Robust, intuitiv performance kontrol. Dét er TR...Genudviklet. </p><p>\r\n\r\nPræcis som originalen: Fuldstændig reproduktion af de originale TR-808 og TR-909 rhythm maskiner baseret på de specifikationerne af det originale design og detaljerede kredsløbsanalyser af de forskellige elektroniske dele, inklusiv Rolands egne unikke enheder. Nyudviklet Analog Circuit Behavior (ACB) teknologi gør det muligt at lave part-by-part analyser og troværdigt genskabe tonalitet og adfærd inklusiv de små, lækre variationer i lyden der kan høres, når man arbejder med kontrolknapperne på de enkelte instrumenter. Fokus ned til mindste detalje – som at genskabe den originale TR’s unikke variationer i lyd og tone når flere instrumenter spilles i accentuerede steps.\r\n</p><p><b>\r\nHighlights</b>\r\n</p><ul><li>Byg egne drømmekits baseret på forskellige instrumenter fra TR-808 og TR-909\r\n</li><li>16 fantastiske kits lavet ud fra 11 instrumenttyper\r\n</li><li>Kontrollér intensiteten af Accent-funktionen med en dedikeret drejeknap\r\n</li><li>Per-step Gate Reverb og Delay-effekter med dedikerede real-time drejeknapper</li><li>\r\nMix lydkilder, der er tilsluttet External Input\r\n</li><li>Indbygget Side Chain-funktion leverer rytmisk ducking-effekt på de eksterne Inputs med per-step kontrol\r\n</li><li>To assignable analoge inputs og samtidig et komplet parallelt output via USB for total mixingfleksibilitet\r\n</li><li>Dimensioner 400 x 260 x 65 mm\r\n</li><li>Vægt 1.9 kg</li></ul><p>TR-808 og TR-909 blev sluppet løs i en intetanende verden i 1980\'erne og leverede måske de mest indflydelsesrige trommelyde i moderne musik. De har ikke bare figureret på tusindvis af dancetracks henover tre årtier, de har også bidraget til at definere lyden af hele musikalske genrer. Fra rap og house til techno og trance har disse to trommemaskiner sat deres umiskendelige præg på musikken som både kultur og kunstart.\r\n\r\n</p><p>Med TR-8 har Roland analyseret som besatte, og troværdigt genskabt hver eneste detalje i det analoge kredsløb på disse legendariske trommemaskiner. 808\'erens boom og snap. 909\'erens dunk. Det robotagtige klik fra et 808 kantslag eller en klassisk 909 lilletrommehvirvel. Det er her alt sammen. Roland er dog ikke tilfredse med blot at lave kopier, så man har forbedret disse klassiske instrumenter med egenskaber, der favner langt bredere end de originale enheder.\r\n</p><p>\r\nTune og Decay drejeknapper er nu til stede på hvert instrument og bas- og lilletrommemodulet har dedikeret \"Attack\" og \"Comp\" drejeknapper, hvilket giver muligheden for større lydvariation - fra nuanceret ambient perkussion til pumpende dance grooves. Per-step-effekter og den musikalskvanedannende \"Scatter\" løfter det hele ind i helt uudforsket musikalsk territorium. Med den autentiske lyd og karakter fra de originale enheder og med helt nye lydmanipulerende muligheder inspireret af en hær af brugere, blæser TR-8 nyt liv i de lyde vi alle kender og elsker.\r\n</p><p>\r\nTR-8 er et instrument der er omhyggeligt designet helt fra bunden til at blive spillet på. Hver kontrol har et solidt, genkendeligt feel og hver trommeinstrument har robuste “spilbare\" faders. Adskillige lysende drejeknapper og RGB-belyste knapper giver real-time performance-feedback og et cool udtryk på scenen. Det er intuitivt at lave patterns ved hjælp af den videreudviklede version af TR-REC metoden, der først så dagens lys i TR-808’eren og sidenhen er blevet standarden for elektronisk rhythm programmering. TR-REC adfærd er, baseret på detaljeret analyse af den originale TR-808, troværdigt modelleret i TR-8. Men TR-8 går et langt skridt videre end originalen og gør det muligt, helt uden besvær, at skifte mellem programmering og performancemodes og introducerer samtidig masser af groovy rytmevariationer – fra nuancerede lilletrommehvirvler til totalt glitch-agtig nedsmeltning af musikken. </p><p>\r\n\r\nScatter er en unik performancefunktion der giver detaljeret real-time kontrol over variationer i sine pattern og alle indkommende eksterne input-signaler. Scatter kan lave reverse, glitch, gate, truncate, stutter og levere alle former for rytmiske variationer - fra det nuancerede til det ekstreme - og det hele i perfekt sync. Vælg mellem 10 forskellige typer af Scatter og juster intensiteten eller “Scatter Depth\" med det store drejehjul. Skift problemfrit mellem Scatter-patterns og tænd og sluk for Scatter hurtigt for de fede variationer lige når man vil have dem.\r\n</p><p>\r\nTR-8 kan tilsluttes computer via USB stik og sende og modtage Audio-MIDI-data. TR-8 kan også modtage MIDI clock-information til at sync´e med eksterne enheder, inklusiv andre enheder i AIRA-serien.</p>','roland-tr8.jpeg',309900,8,16,'2019-03-12 07:52:22',1,0),
	(45,'554145','Prologue-8 Analog synth','Polyfonisk analog synthesizer udstyret med digital multi engine og DSP-baserede effekter. 8 toners polyfoni, 49 anslagsdynamiske tangenter fremstillet i Japan.','<h2>Polyfonisk analog synthesizer udstyret med digital multi engine og DSP-baserede effekter. 8 toners polyfoni, 49 anslagsdynamiske tangenter fremstillet i Japan.\r\n</h2><p>prologue er en fuldt programmerbar, fuldt udstyret, professionel synthesizer. Det er en polyfonisk analog synthesizer udstyret med tangenter i fuld størrelse, fremstillet i Japan. Med kraftige analoge kredsløb, der stammer direkte fra de tidligere modeller af serien, sammen med en nyudviklet digital multiengine og smukke DSP-baserede effekter, udvider prologue udbuddet af forskellige lyde og muligheder for brugertilpasning.</p><p><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/Iw8MoNndmX8\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe></p><p>Synthesizeren fås i to modeller, der dækker musikeres behov ikke kun for scene brug, men også studie, hjemme eller touring brug: prologue-16 med 16-toners polyfoni og 61 tangenter og prologue-8 med 8-toners polyfoni og 49 tangenter. Disse instrumenter er i stand til at levere lyde, der overgår eksisterende analoge synthesizers.<br></p>\r\n<p>KORGs analoge synthesizerudvikling gennem de seneste år, kulminerer med prologue, som er designet ved hjælp af 11.000 diskrete elektroniske komponenter. Selv om prologue er et flagskibsinstrument, bevarer den stadig den indbydende fornemmelse og tilgængelighed fra sine forgængere. Den har en ren analog signalvej, fremragende lydkvalitet, fantastisk tilstedeværelse og den samme intuitive brugerflade kendt fra minilogue og monolog, hvilket giver dig intuitiv adgang til en stor verden af ​​analog syntese.</p><p><b>Highlights:</b></p><ul class=\"speclist\" style=\"padding: 0px; margin: 5px 0px 5px 25px; list-style: square; color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: 14px;\"><li style=\"line-height: 20px;\">16/8-stemmig analogt synthesizer kredsløb</li></ul><ul class=\"speclist\" style=\"padding: 0px; margin: 5px 0px 5px 25px; list-style: square; color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: 14px;\"><li style=\"line-height: 20px;\">Multi-engine udstyret med tre typer: noise, VPM, og user</li></ul><ul class=\"speclist\" style=\"padding: 0px; margin: 5px 0px 5px 25px; list-style: square; color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: 14px;\"><li style=\"line-height: 20px;\">Digitale effekter i høj kvalitet</li></ul><ul class=\"speclist\" style=\"padding: 0px; margin: 5px 0px 5px 25px; list-style: square; color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: 14px;\"><li style=\"line-height: 20px;\">Åben API (Application Programming Interface) til user-oprettede oscillatorer og effekter</li></ul><ul class=\"speclist\" style=\"padding: 0px; margin: 5px 0px 5px 25px; list-style: square; color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: 14px;\"><li style=\"line-height: 20px;\">L.F. COMP. (Low Frequency Compressor) analog effekt (kun prologue-16)</li></ul><ul class=\"speclist\" style=\"padding: 0px; margin: 5px 0px 5px 25px; list-style: square; color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: 14px;\"><li style=\"line-height: 20px;\">Bi-timbre support</li></ul><ul class=\"speclist\" style=\"padding: 0px; margin: 5px 0px 5px 25px; list-style: square; color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: 14px;\"><li style=\"line-height: 20px;\">Voice modes der giver voices mulighed for at blive fleksibelt rekombineret</li></ul><ul class=\"speclist\" style=\"padding: 0px; margin: 5px 0px 5px 25px; list-style: square; color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: 14px;\"><li style=\"line-height: 20px;\">Arpeggiator udstyret med en række forskellige typer og interval indstillinger</li></ul><ul class=\"speclist\" style=\"padding: 0px; margin: 5px 0px 5px 25px; list-style: square; color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: 14px;\"><li style=\"line-height: 20px;\">Program Sort giver hurtig adgang til 500 programmer</li></ul><ul class=\"speclist\" style=\"padding: 0px; margin: 5px 0px 5px 25px; list-style: square; color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: 14px;\"><li style=\"line-height: 20px;\">Japan fremstillet kvalitets touch tastatur</li></ul><ul class=\"speclist\" style=\"padding: 0px; margin: 5px 0px 5px 25px; list-style: square; color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: 14px;\"><li style=\"line-height: 20px;\">Oscilloskop funktion der viser waveforms visuelt</li></ul><ul class=\"speclist\" style=\"padding: 0px; margin: 5px 0px 5px 25px; list-style: square; color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: 14px;\"><li style=\"line-height: 20px;\">Hård og stilfuld krop lavet af aluminium og træ</li></ul><ul class=\"speclist\" style=\"padding: 0px; margin: 5px 0px 5px 25px; list-style: square; color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: 14px;\"><li style=\"line-height: 20px;\">Synkroniser med andre groove maskiner</li></ul><ul class=\"speclist\" style=\"padding: 0px; margin: 5px 0px 5px 25px; list-style: square; color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: 14px;\"><li style=\"line-height: 20px;\">Dimensioner 709 x 348 x 118 mm</li></ul><ul class=\"speclist\" style=\"padding: 0px; margin: 5px 0px 5px 25px; list-style: square; color: rgb(51, 51, 51); font-family: \"Open Sans\", Arial, Helvetica, sans-serif; font-size: 14px;\"><li style=\"line-height: 20px;\">Vægt 7.5 kg</li></ul>','prologue-analog-synth.jpeg',1085000,2,14,'2019-03-13 07:33:31',1,0);

/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table productgroup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `productgroup`;

CREATE TABLE `productgroup` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Overgruppe',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Titel',
  `description` text NOT NULL COMMENT 'Beskrivelse',
  `sortnumber` int(11) NOT NULL DEFAULT '0' COMMENT 'Sortering',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Oprettet',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Aktiv',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `productgroup` WRITE;
/*!40000 ALTER TABLE `productgroup` DISABLE KEYS */;

INSERT INTO `productgroup` (`id`, `parent_id`, `title`, `description`, `sortnumber`, `created`, `active`, `deleted`)
VALUES
	(1,0,'Guitarer','Vi har et bredt udvalg af guitarer.',1,'2019-03-04 05:08:20',1,0),
	(2,1,'Elguitarer','',1,'2019-03-04 05:09:06',1,0),
	(3,1,'Westernguitarer','En westernguitar er en akustisk guitar med stålstrenge og en lidt større krop end en klassisk guitar. Westernguitarer fås i mange forskellige versioner, men uanset om du er begynder eller øvet, så har vi en westernguitar til dig. Der findes mange forskellige typer af westernguitarer men primært så adskiller de sig ved om de har indbygget mikrofon, kvaliteten og lyden af det træ de er lavet af og kropstypen. Søger man en god western-guitar skal man først og fremmest tage stilling til om den skal have mikrofon indbygget derudover er det også vigtigt at vurdere klangen af western-guitaren, de bedste western-guitarer har altid et dæk af massivt træ men der findes også gode western-guitarer med finer dæk til fornuftige priser. Langt den mest mest udbredte western-guitar type er Dreadnought som egner sig til stort set alle typer af musik og derfor også er den de fleste starter med.',2,'2019-03-04 05:09:30',1,0),
	(4,1,'Klassisk og spansk','',3,'2019-03-04 05:10:41',1,0),
	(5,0,'Basser','Vi har et bredt udvalg af basser.',2,'2019-03-04 05:11:14',1,0),
	(6,5,'Elbasser','',1,'2019-03-04 05:12:04',1,0),
	(7,5,'Akustiske basser','',2,'2019-03-04 05:12:28',1,0),
	(8,0,'Andre strengeinstrumenter','Vi har et bredt udvalg af andre strengeinstrumenter.',3,'2019-03-04 05:12:59',1,0),
	(9,0,'Keyboards','Vi har et bredt udvalg af keyboards.',4,'2019-03-04 05:15:05',1,0),
	(10,9,'Digitalklaverer','',1,'2019-03-04 05:16:04',1,0),
	(11,9,'USB & MIDI-keyboards','',2,'2019-03-04 05:16:24',1,0),
	(12,9,'Synthesizere','',3,'2019-03-04 05:17:09',1,0),
	(13,9,'Groovebokse og samplere','',4,'2019-03-04 05:17:42',1,0),
	(14,0,'Trommer','Vi har et bredt udvalg af trommer.',5,'2019-03-04 05:19:04',1,0),
	(15,14,'Trommesæt','',1,'2019-03-04 05:19:39',1,0),
	(16,14,'Digitale trommesæt','',2,'2019-03-04 05:19:55',1,0),
	(17,14,'Trommestikker','',3,'2019-03-04 05:20:22',1,0),
	(18,0,'Percussion','Vi har et bredt udvalg af percussion instrumenter.\n',6,'2019-03-04 05:20:53',1,0),
	(19,18,'Cajon','',1,'2019-03-04 05:21:14',1,0),
	(20,18,'Bongo','',2,'2019-03-04 05:21:29',1,0),
	(21,18,'Conga','',3,'2019-03-04 05:21:44',1,0),
	(22,18,'Djembe','',4,'2019-03-04 05:22:22',1,0),
	(23,0,'Stryg & Blæs','Vi har et bredt udvalg af stryge og blæseinstrumenter.\n',7,'2019-03-04 05:23:01',1,0),
	(24,8,'Banjo','',1,'2019-03-04 05:25:11',1,0),
	(25,8,'Mandolin','',2,'2019-03-04 05:25:22',1,0),
	(26,8,'Ukulele','',3,'2019-03-04 05:25:38',1,0),
	(27,23,'Strygere','Vi har et bredt udvalg af strygere.',1,'2019-03-11 09:32:02',1,0);

/*!40000 ALTER TABLE `productgroup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table productgrouprel
# ------------------------------------------------------------

DROP TABLE IF EXISTS `productgrouprel`;

CREATE TABLE `productgrouprel` (
  `product_id` int(11) unsigned NOT NULL,
  `productgroup_id` int(11) unsigned NOT NULL,
  UNIQUE KEY `product_id` (`product_id`,`productgroup_id`),
  KEY `productgroup_id` (`productgroup_id`),
  CONSTRAINT `productgrouprel_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `productgrouprel_ibfk_2` FOREIGN KEY (`productgroup_id`) REFERENCES `productgroup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `productgrouprel` WRITE;
/*!40000 ALTER TABLE `productgrouprel` DISABLE KEYS */;

INSERT INTO `productgrouprel` (`product_id`, `productgroup_id`)
VALUES
	(1,2),
	(2,2),
	(3,2),
	(4,2),
	(5,2),
	(6,2),
	(7,2),
	(8,2),
	(9,2),
	(10,2),
	(16,2),
	(11,3),
	(12,3),
	(13,3),
	(14,3),
	(15,3),
	(16,3),
	(17,3),
	(23,6),
	(24,6),
	(25,6),
	(26,6),
	(27,6),
	(28,7),
	(29,7),
	(30,7),
	(31,7),
	(32,10),
	(33,10),
	(34,10),
	(35,10),
	(36,11),
	(37,11),
	(38,11),
	(39,11),
	(40,11),
	(41,12),
	(44,13),
	(18,24),
	(19,24),
	(20,25),
	(21,26),
	(22,26),
	(42,27),
	(43,27);

/*!40000 ALTER TABLE `productgrouprel` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table productimage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `productimage`;

CREATE TABLE `productimage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `productimage_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `productimage` WRITE;
/*!40000 ALTER TABLE `productimage` DISABLE KEYS */;

INSERT INTO `productimage` (`id`, `product_id`, `image`)
VALUES
	(1,16,'322e-12-fret-1.png'),
	(2,15,'414ce-r-1.png'),
	(3,38,'akai-fire-1.jpeg'),
	(4,38,'akai-fire-2.jpeg'),
	(5,38,'akai-fire-3.jpeg'),
	(6,38,'akai-fire-4.jpeg'),
	(7,38,'akai-fire-5.jpeg'),
	(8,23,'american-original-70s-jazz-bass-natural-1.jpeg'),
	(9,23,'american-original-70s-jazz-bass-natural-2.jpeg'),
	(10,5,'american-performer-telecaster-mn-vintage-white-1.jpeg'),
	(11,5,'american-performer-telecaster-mn-vintage-white-2.jpeg'),
	(12,5,'american-performer-telecaster-mn-vintage-white-3.jpeg'),
	(13,5,'american-performer-telecaster-mn-vintage-white-4.jpeg'),
	(14,5,'american-performer-telecaster-mn-vintage-white-5.jpeg'),
	(15,30,'cb-60SCE-natural-1.jpeg'),
	(16,30,'cb-60SCE-natural-2.jpeg'),
	(17,30,'cb-60SCE-natural-3.jpeg'),
	(18,30,'cb-60SCE-natural-4.jpeg'),
	(19,25,'elite-jazz-bass-ocean-1.jpeg'),
	(20,25,'elite-jazz-bass-ocean-2.jpeg'),
	(21,25,'elite-jazz-bass-ocean-3.jpeg'),
	(22,6,'eric-johnson-signature-stratocaster-thinline-2-color-sunburst-1.jpeg'),
	(23,6,'eric-johnson-signature-stratocaster-thinline-2-color-sunburst-2.jpeg'),
	(24,6,'eric-johnson-signature-stratocaster-thinline-2-color-sunburst-3.jpeg'),
	(25,6,'eric-johnson-signature-stratocaster-thinline-2-color-sunburst-4.jpeg'),
	(26,2,'es-335-satin-2018-walnut-1.jpeg'),
	(27,2,'es-335-satin-2018-walnut-2.jpeg'),
	(28,35,'FP-10-black-1.jpeg'),
	(29,35,'FP-10-black-2.jpeg'),
	(30,35,'FP-10-black-3.jpeg'),
	(31,35,'FP-10-black-4.jpeg'),
	(32,35,'FP-10-black-5.jpeg'),
	(33,28,'gs-mini-e-bass-1.png'),
	(34,14,'j45-walnut-burst-1.jpeg'),
	(35,14,'j45-walnut-burst-2.jpeg'),
	(36,14,'j45-walnut-burst-3.jpeg'),
	(37,24,'jazz-bass-pf-black-1.jpeg'),
	(38,24,'jazz-bass-pf-black-2.jpeg'),
	(39,1,'les-paul-deluxe-player-plus-satin-vintage-sunburst-1.jpeg'),
	(40,1,'les-paul-deluxe-player-plus-satin-vintage-sunburst-2.jpeg'),
	(41,1,'les-paul-deluxe-player-plus-satin-vintage-sunburst-3.jpeg'),
	(42,4,'les-paul-standard-2018-left-hand-blood-orange-burst-1.jpeg'),
	(43,4,'les-paul-standard-2018-left-hand-blood-orange-burst-2.jpeg'),
	(44,4,'les-paul-standard-2018-left-hand-blood-orange-burst-3.jpeg'),
	(45,4,'les-paul-standard-2018-left-hand-blood-orange-burst-4.jpeg'),
	(46,17,'ll16-brown-sunburst-1.jpeg'),
	(47,37,'LPK25-wireless-1.png'),
	(48,37,'LPK25-wireless-2.png'),
	(49,37,'LPK25-wireless-3.png'),
	(50,37,'LPK25-wireless-4.png'),
	(51,19,'mb-100-banjo-natural-1.jpeg'),
	(52,19,'mb-100-banjo-natural-2.jpeg'),
	(53,20,'mm50E-vintage-natural-1.jpeg'),
	(54,20,'mm50E-vintage-natural-2.jpeg'),
	(55,20,'mm50E-vintage-natural-3.jpeg'),
	(56,20,'mm50E-vintage-natural-4.jpeg'),
	(57,41,'moog-mother-1.jpeg'),
	(58,41,'moog-mother-2.jpeg'),
	(59,41,'moog-mother-3.jpeg'),
	(60,36,'MPK249-1.jpeg'),
	(61,36,'MPK249-2.jpeg'),
	(62,36,'MPK249-3.jpeg'),
	(63,32,'np-12-piaggero-black-1.jpeg'),
	(66,34,'piano4-1.jpeg'),
	(67,34,'piano4-2.jpeg'),
	(68,34,'piano4-3.jpeg'),
	(69,39,'seaboard-block-1.jpeg'),
	(70,39,'seaboard-block-2.jpeg'),
	(71,39,'seaboard-block-3.jpeg'),
	(72,39,'seaboard-block-4.jpeg'),
	(73,8,'sheraton-II-pro-cf-wine-red-1.jpeg'),
	(74,8,'sheraton-II-pro-cf-wine-red-2.jpeg'),
	(75,8,'sheraton-II-pro-cf-wine-red-3.jpeg'),
	(76,31,'SJB5F-CF-natural-satin-1.jpeg'),
	(77,31,'SJB5F-CF-natural-satin-2.jpeg'),
	(78,31,'SJB5F-CF-natural-satin-3.jpeg'),
	(79,7,'slash-firebird-premium-outfit-1.jpeg'),
	(80,7,'slash-firebird-premium-outfit-2.jpeg'),
	(81,7,'slash-firebird-premium-outfit-3.jpeg'),
	(82,27,'stingray-special-black-1.jpeg'),
	(83,27,'stingray-special-black-2.jpeg'),
	(84,26,'thunderbird-bass-2019-1.jpeg'),
	(85,26,'thunderbird-bass-2019-2.jpeg'),
	(86,26,'thunderbird-bass-2019-3.jpeg'),
	(87,45,'prologue-analog-synth-1.jpeg');

/*!40000 ALTER TABLE `productimage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table topic
# ------------------------------------------------------------

DROP TABLE IF EXISTS `topic`;

CREATE TABLE `topic` (
  `iTopicID` bigint(20) NOT NULL AUTO_INCREMENT,
  `iTopicGroupID` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Emnegruppe',
  `vcTopicName` varchar(255) NOT NULL DEFAULT '' COMMENT 'Navn',
  `txDescription` text COMMENT 'Beskrivelse',
  `iDeleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iTopicID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;

INSERT INTO `topic` (`iTopicID`, `iTopicGroupID`, `vcTopicName`, `txDescription`, `iDeleted`)
VALUES
	(1,1,'Testemne','Et emne til at teste med',0);

/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table topicgroup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `topicgroup`;

CREATE TABLE `topicgroup` (
  `iTopicGroupID` bigint(20) NOT NULL AUTO_INCREMENT,
  `vcTitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Navn',
  `iDeleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iTopicGroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `topicgroup` WRITE;
/*!40000 ALTER TABLE `topicgroup` DISABLE KEYS */;

INSERT INTO `topicgroup` (`iTopicGroupID`, `vcTitle`, `iDeleted`)
VALUES
	(1,'Test',0);

/*!40000 ALTER TABLE `topicgroup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table topicrel
# ------------------------------------------------------------

DROP TABLE IF EXISTS `topicrel`;

CREATE TABLE `topicrel` (
  `iRelID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `iTopicID` bigint(20) NOT NULL DEFAULT '0',
  `iElementID` bigint(20) NOT NULL DEFAULT '0',
  `iType` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iRelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `iUserID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `vcImage` varchar(255) DEFAULT NULL COMMENT 'Profilbillede',
  `vcUserName` varchar(255) NOT NULL DEFAULT '' COMMENT 'Brugernavn',
  `vcPassword` varchar(100) NOT NULL DEFAULT '' COMMENT 'Adgangskode',
  `vcFirstName` varchar(255) NOT NULL DEFAULT '' COMMENT 'Fornavn',
  `vcLastName` varchar(255) NOT NULL DEFAULT '' COMMENT 'Efternavn',
  `vcAddress` varchar(255) NOT NULL DEFAULT '' COMMENT 'Adresse',
  `iZipCode` mediumint(10) NOT NULL COMMENT 'Postnummer',
  `vcCity` varchar(255) NOT NULL DEFAULT '' COMMENT 'By',
  `vcCountry` varchar(255) NOT NULL DEFAULT '' COMMENT 'Land',
  `vcEmail` varchar(255) NOT NULL DEFAULT '' COMMENT 'Email',
  `vcPhone1` varchar(255) DEFAULT NULL COMMENT 'Tlf 1',
  `vcPhone2` varchar(255) DEFAULT NULL COMMENT 'Tlf 2',
  `vcPhone3` varchar(255) DEFAULT NULL COMMENT 'Tlf 3',
  `iOrgID` bigint(20) DEFAULT '0' COMMENT 'Organisation',
  `daCreated` bigint(20) NOT NULL DEFAULT '0',
  `iSuspended` tinyint(1) DEFAULT '0' COMMENT 'Suspenderet',
  `iDeleted` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iUserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`iUserID`, `vcImage`, `vcUserName`, `vcPassword`, `vcFirstName`, `vcLastName`, `vcAddress`, `iZipCode`, `vcCity`, `vcCountry`, `vcEmail`, `vcPhone1`, `vcPhone2`, `vcPhone3`, `iOrgID`, `daCreated`, `iSuspended`, `iDeleted`)
VALUES
	(1,NULL,'admin','$2y$10$raFVhKOMNeySlOTBWfj5qeWLbGvKpaRCn90RgogjW7wFTk4W9apxq','Admin','Admin','Testvej 12',9520,'Skørping','Danmark','admin@elmando.dk',NULL,NULL,NULL,1,0,0,0);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table usergroup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usergroup`;

CREATE TABLE `usergroup` (
  `iGroupID` bigint(20) NOT NULL AUTO_INCREMENT,
  `vcGroupName` varchar(255) NOT NULL DEFAULT '' COMMENT 'Gruppenavn',
  `txDescription` text COMMENT 'Beskrivelse',
  `vcRoleName` varchar(20) DEFAULT '' COMMENT 'Rollenavn',
  `daCreated` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Oprettet',
  `iDeleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iGroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `usergroup` WRITE;
/*!40000 ALTER TABLE `usergroup` DISABLE KEYS */;

INSERT INTO `usergroup` (`iGroupID`, `vcGroupName`, `txDescription`, `vcRoleName`, `daCreated`, `iDeleted`)
VALUES
	(1,'Admin','Test','admin',0,0),
	(2,'Newsletter','Test','newsletter',1549459168,0);

/*!40000 ALTER TABLE `usergroup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table usergrouprel
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usergrouprel`;

CREATE TABLE `usergrouprel` (
  `iRelID` bigint(20) NOT NULL AUTO_INCREMENT,
  `iUserID` bigint(20) NOT NULL DEFAULT '0',
  `iGroupID` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iRelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `usergrouprel` WRITE;
/*!40000 ALTER TABLE `usergrouprel` DISABLE KEYS */;

INSERT INTO `usergrouprel` (`iRelID`, `iUserID`, `iGroupID`)
VALUES
	(4,1,1);

/*!40000 ALTER TABLE `usergrouprel` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table usersession
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usersession`;

CREATE TABLE `usersession` (
  `vcSessionID` varchar(32) NOT NULL DEFAULT '',
  `iUserID` bigint(20) NOT NULL DEFAULT '0',
  `iIpAddress` varchar(24) NOT NULL DEFAULT '',
  `iIsLoggedIn` tinyint(1) NOT NULL DEFAULT '0',
  `daLoginCreated` bigint(20) NOT NULL DEFAULT '0',
  `daLastAction` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `usersession` WRITE;
/*!40000 ALTER TABLE `usersession` DISABLE KEYS */;

INSERT INTO `usersession` (`vcSessionID`, `iUserID`, `iIpAddress`, `iIsLoggedIn`, `daLoginCreated`, `daLastAction`)
VALUES
	('h36i0jj02nmblrsl8k2cscja9d',1,'127.0.0.1',0,1549440755,1549447086),
	('qusgnsmbqrfp6balbof2rv4ugt',1,'127.0.0.1',0,1549455362,1549459447),
	('9k3kqemaru1b3s20fnpn9bc44e',1,'127.0.0.1',0,1549487355,1549487355),
	('i3115iv3jv9nehprlch1pn2nv7',1,'127.0.0.1',0,1549548251,1549549282),
	('5977n2b12eipqremnpeblaebqk',1,'127.0.0.1',0,1549579789,1549579793),
	('3frua9od4l0m6dm4rqbhu0kvoa',1,'127.0.0.1',0,1549614682,1549620216),
	('c05iq3iumem1s9u4q4nifm0cvi',1,'127.0.0.1',0,1549626256,1549628894),
	('9f6c6ajjghn77u63hgqi8l6f5f',1,'127.0.0.1',0,1549877656,1549877686),
	('onn7n9q2mll4enjld6et8bks3b',1,'127.0.0.1',0,1549891556,1549891823),
	('8fsos8pr5blml4k4ui6cchtd4j',1,'127.0.0.1',0,1549954820,1549955354),
	('c3aeqn9j9n0vhvmvjn2of9424i',1,'127.0.0.1',0,1549964791,1549964872),
	('98d4uofrevahermjrq0n3olnuf',1,'127.0.0.1',0,1549976061,1549976076),
	('jdln55scp858mql4g5ncoacq9f',1,'127.0.0.1',0,1550046091,1550046389),
	('pq2bin7lo8vus2b36v0vfou2sa',1,'127.0.0.1',0,1550057791,1550057791),
	('ailocat4k8impigbr84uoe7rpt',1,'127.0.0.1',0,1550061686,1550062899),
	('lcusfgd0hbcpagqmep6gf8dm06',1,'127.0.0.1',1,1550145886,1550145888),
	('ebhlbtgn1m3kff9f72uglkv1qc',1,'127.0.0.1',1,1551256354,1551256354),
	('phnavhmeg1fckcansn6ndn6bip',1,'127.0.0.1',1,1552275964,1552275977),
	('rs3qgs3o7885ks65j5ck406e51',1,'10.35.0.1',0,1552278580,1552281324),
	('0tbripk0v61q9ioq80tta3ct52',1,'10.35.0.17',0,1552285792,1552297572),
	('bquurcu8njsil0gje77mt4v5m5',1,'87.52.215.148',0,1552302633,1552304950),
	('civ269518rhdmh7d8loa4mo4t4',1,'87.52.215.148',0,1552325050,1552327105),
	('q3nkppg8vukh9073s3507uieq7',1,'87.52.215.148',0,1552373115,1552373838),
	('bhcf3c023ckbc1h9m6pdhml6i4',1,'87.52.215.148',0,1552458673,1552459323),
	('4913uo9ac3h9jlm4d8m9sm2gh2',1,'10.35.0.12',1,1552481144,1552481429);

/*!40000 ALTER TABLE `usersession` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
