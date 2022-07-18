-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 18 jul 2022 om 21:07
-- Serverversie: 10.4.14-MariaDB
-- PHP-versie: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flix-media`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `articles`
--

CREATE TABLE `articles` (
  `articleName` text NOT NULL,
  `articleId` int(10) NOT NULL,
  `articlePicture` varchar(1000) NOT NULL,
  `articleText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(70, 1301843639, 733139395, 'Hoi!');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `nieuws`
--

CREATE TABLE `nieuws` (
  `nieuwsId` int(5) NOT NULL,
  `nieuwsTitle` varchar(1000) NOT NULL,
  `nieuwsDiscription` varchar(1000) NOT NULL,
  `nieuwsImage` varchar(1000) NOT NULL,
  `NieuwsCatogory` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `nieuws`
--

INSERT INTO `nieuws` (`nieuwsId`, `nieuwsTitle`, `nieuwsDiscription`, `nieuwsImage`, `NieuwsCatogory`) VALUES
(1, 'JURASSIC WORLD: DOMINION - Nog meer dino\'s!', 'Jurassic World: Dominion speelt zich vier jaar na de verwoesting van Isla Nublar af. Dinosaurussen leven – en jagen – nu overal ter wereld. Het kwetsbare evenwicht tussen dinosaurussen en mensen zal de toekomst opnieuw vormgeven.\r\n\r\nVoor eens en altijd wordt duidelijk of de mens bovenaan de voedselketen kan blijven in een wereld die hij moet delen met de meest angstaanjagende wezens die ooit hebben geleefd.', 'jurassicworld.jpg', 'films'),
(2, 'FALL GUYS - Vanaf 21 juni gratis voor iedereen!', 'Mediatonic en Devolver Digital brengen battleroyale-partygame Fall Guys: Ultimate Knockout vanaf 21 juni als free-to-play game uit. Tegelijkertijd wordt de game uitgebracht voor de Nintendo Switch, Epic Games Store, PlayStation 5, Xbox One en Xbox Series X en S.\r\n\r\nAlle huidige en aankomende versies van Fall Guys ondersteunen vanaf diezelfde datum crossplay en crossprogression. Dat wil zeggen dat spelers met één account op alle beschikbare platformen kunnen spelen zonder voortgang te verliezen en gelijktijdig kunnen spelen samen met gamers op alle platformen.\r\n\r\nWel komt de Steam-versie van Fall Guys te vervallen. Spelers die het spel hebben aangeschaft behouden gewoon toegang tot de game, maar vanaf 21 juni is het spel niet meer verkrijgbaar via Steam. In de aankondiging vermeldt Mediatonic dat \'crossplay volledig ondersteund wordt bij gebruik van een Epic Games Store-account\', maar zegt ook nadrukkelijk dat de Steam-versie crossplay ondersteunt. Gebruikers moeten al langer via Steam ', 'fallguys.jpg', 'games'),
(3, 'QUEEN - \"Een geheim gebleven nummer komt eraan\"', 'Queen gaat dit najaar een nieuw nummer uitbrengen waarin zanger Freddie Mercury te horen is. Het nummer is jarenlang op de plank blijven liggen, totdat bandleden Roger Taylor en Brian May het onlangs weer tegenkwamen. Ze vertelden dit weekend op BBC Radio 2 over de vondst.\r\n\r\nDe drummer en gitarist van de Britse band kwamen het nummer bij toeval tegen toen ze hun archief doorspitten. De track stamt uit de periode dat het album The Miracle in 1989 werd opgenomen.\r\n\r\n\"We hebben een pareltje van Freddie gevonden dat we eigenlijk een beetje waren vergeten\", aldus Taylor. \"Maar het is prachtig, een ware vondst.\"\r\n\r\nVolgens May was de parel van Mercury, die in 1991 overleed aan de gevolgen van aids, \"gewoon in het zicht verstopt. We hebben er meerdere keren naar gekeken, maar dachten dan: nee, dat kunnen we niet uitbrengen.\"', 'queen.webp', 'muziek'),
(4, 'DOCTOR STRANGE IN THE MULTIVERSE OF MADNESS - Nu in de bioscoop', 'Doctor Strange in the Multiverse of Madness is een Amerikaanse superheldenfilm uit 2022, gebaseerd op het gelijknamige personage en het vervolg op de film Doctor Strange uit 2016. De film is geproduceerd door Marvel Studios en is de 28ste film uit de Marvel Cinematic Universe (MCU). Sam Raimi neemt de regierol op en het script is geschreven door Jade Bartlett en Michael Waldron. De hoofdrollen worden vertolkt door Benedict Cumberbatch als Doctor Stephen Strange, Elizabeth Olsen, Chiwetel Ejifor, Benedict Wong, Xochitl Gomez, Michael Stuhlbarg en Rachel McAdams.', 'doctorstrange.jpg', 'films'),
(5, 'FORTNITE - Het nieuwe seizoen is begonnen!', 'Fortnite Chapter 3 Season 3: Vibin\' is er eindelijk en brengt met de Battle Pass Darth Vader en Indiana Jones naar de game, net als wolven en zwijnen om op te rijden, de terugkeer van Ballers en veel meer.\r\n\r\nVibin\' volgt op het Chapter 3 Season 2 Collision event en heeft het Fortnite-eiland omgetoverd tot een groot feestje. Bij dit feestje horen een aantal veranderingen op de map, met onder andere een nieuwe locatie, Reality Falls.\r\n\r\nIn dit nieuwe gebied staat de Reality Tree en is gevuld met stuiterende paddenstoelen, paarse bomen, watervallen, grotten met loot en nog veel meer. De Reality Tree verspreid ook Reality Pods en wanneer spelers deze zaadjes planten, groeit er een Reality Sapling. Deze sapling blijft dan match na match groeien en zal steeds betere loot geven tot je zelfs Mythic loot kunt krijgen.', 'fortnite.jpg', 'games'),
(6, 'JOHNNY DEPP - Nieuw album met Jeff Beck', 'Johnny Depp brengt in juli een album uit met gitarist Jeff Beck. De acteur trad in de afgelopen week al enkele keren op met de muzikant. Beck maakte het nieuws volgens Deadline donderdagavond bekend tijdens een show in het Verenigd Koninkrijk.\r\n\r\nVerdere details over de plaat gaven de acteur en de gitarist niet. Eerder brachten Depp en Beck al een cover van John Lennons nummer Isolation uit. De Pirates of the Caribbean-acteur trad zondag en maandag ook op met de gitarist.\r\n\r\nDe 56-jarige Depp was woensdag niet aanwezig toen een rechtbankjury in de Verenigde Staten haar oordeel bekendmaakte in de smaadzaak tegen zijn ex-vrouw Amber Heard. Depp kreeg gelijk in die zaak en Heard moet hem een schadevergoeding van ruim 10 miljoen dollar (9,3 miljoen euro) betalen. De actrice had een tegeneis ingediend en krijgt 2 miljoen dollar van haar voormalig echtgenoot.', 'johny.jpg', 'muziek'),
(7, 'MORBIUS - Verbazingwekkend slecht ', 'Morbius is een Amerikaanse superheldenfilm uit 2022, gebaseerd op het gelijknamige personage uit de Marvel Comics. De film wordt geproduceerd door Columbia Pictures in samenwerking met Marvel en wordt gedistribueerd door Sony Pictures Releasing. Morbius wordt de derde film die zich in het Sony\'s Spider-Man Universe afspeelt. De film werd geregisseerd door Daniel Espinosa en volgt een script van Matt Sazama & Burk Sharpless en Art Marcum & Matt Holloway, en vertoont Jared Leto als Michael Morbius met medespelers als Matt Smith, Adria Arjona, Jared Harris, Al Madrigal en Tyrese Gibson. In de film verandert Morbius in een soort vampier nadat hij probeert zichzelf te genezen van een zeldzame bloedaandoening.', 'morbius.jpg', 'films'),
(8, 'SPIDER-MAN: REMASTERED - De Spider-man game komt naar pc', 'Sony heeft pc-ports aangekondigd van de twee Spider-Man-games die het bedrijf sinds 2018 voor PlayStation-consoles uitbracht. De ports worden door Nixxes gemaakt en verschijnen allebei dit jaar. De eerste game moet op 12 augustus uitkomen, later volgt Spider-Man: Miles Morales.\r\n\r\nDe pc-versies krijgen ondersteuning voor muis-en-toetsenbord en meer grafische instellingen, zoals render- en raytracing-instellingen. Meer functies en details zegt Sony later te onthullen. De precieze releasedatum van Spider-Man: Miles Morales moet Sony ook nog geven, nu meldt het bedrijf alleen de herfst van 2022.\r\n\r\nDe twee Spider-Man-games werden oorspronkelijk door Insomniac Games gemaakt. Het eerste spel verscheen in 2018 voor de PlayStation 4, twee jaar later verscheen een remaster met grafische verbeteringen voor de PlayStation 5. Deze remaster komt naar pc en bevat ook de verhaaluitbreiding The City That Never Sleeps.', 'spiderman.webp', 'games'),
(9, 'MARIAH CAREY - Aangeklaagd voor het nummer \"All I want for christmas\"', 'Mariah Carey wordt aangeklaagd voor plagiaat vanwege haar kersthit All I Want for Christmas Is You. Zanger Andy Stone beweert dat hij vijf jaar eerder een gelijknamig lied heeft uitgebracht, meldt TMZ.\r\n\r\nStone nam zijn lied in 1989 op onder de artiestennaam Vince Vance & The Valiants. Het nummer stond in de jaren negentig meermaals op de Billboard-lijst Hot Country Songs.\r\n\r\nCarey bracht haar nummer in 1994 uit, bereikte in 26 landen de eerste plek op de hitlijst en verdient naar verluidt elk jaar nog heel veel geld met haar kerstnummer.\r\n\r\nStone beweert nu dat Carey de titel All I Want for Christmas Is You nooit had mogen gebruiken. Over het liedje zelf heeft Stone geen klacht ingediend. De twee nummers klinken qua geluid en melodie heel verschillend.', 'maria.jpg', 'muziek'),
(13, '\"Fearless II\" is nu beschikbaar', 'Josh A’s “Fearless II” is na twee jaar aan speculatie nu eindelijk uit.\r\nHet album bezit 17 nummers waarvan 11 nieuwe nummers & 2 skits.\r\nJosh heeft op zijn podcast al eerder over het idee van dit Album gesproken,\r\nHij vertelde dat hij een verhaal gebaseerd album wilde maken waar hij zijn oude stijlen bezocht, Fearless II is het album waar dat uitgewerkt is.\r\n\r\nHet nummer “Vultures” werd al in 2019 voor het eerst gezien op zijn instagram story, het nummer is wel drastisch veranderd als we over de instrumental praten van het lied.\r\nJosh zei dat het nummer eigenlijk al in 2020 af was maar dat hij het project per ongeluk had verwijderd en dat hij het nummer opnieuw most maken.\r\n\r\nHet album is uit op all grote muziek streaming services & geanimeerd op YouTube te zien:\r\nSpotify: https://open.spotify.com/album/7ErzbBwEZ95P06KAChq2KP\r\nApple Music: https://music.apple.com/us/album/fearless-II\r\nYouTube: https://youtu.be/nvBWZHGMWgU \r\n', 'JAFII.jpg', 'muziek'),
(14, 'Flower, binnenkort uitgelicht', 'HELYX heeft 20 Juni aangekondigd dat hij bezig is met een nieuw project genaamt “Flower”.\r\nDe geplande release datum is 25/06/2022 om 17:00.\r\nHet is bekend gemaakt dat hij met de artiest “Olive” heeft samengewerkt om dit project te vormen zoals het er nu uit gaat zien.  \r\nDe teaser voor het project kwam gisteren dus uit, voorheen zijn teasers altijd een deel of alternatieve versie van het originele geweest dus is het te verwachten dat dat deze keer ook weer is.\r\n\r\nHELYX: https://twitter.com/H7LYX/\r\nOlive: https://twitter.com/seebunoo', 'FlowerVisDistort.png', 'muziek'),
(15, 'OMORI Console Release!', 'OMORI, het spel gemaakt door OMOCAT kwam in 2020 uit op Steam en werd direct erg goed ontvangen.\r\nTwee jaar later en het spel is nu ook uit voor Playstation, Xbox & Nintendo Switch met nieuwe exclusieve content!\r\n\r\nTot heden heeft OMORI de beoordeling “overweldigend positief” in zijn bezit,\r\nen al vier dagen na de console release heeft het spel gemiddeld 4 sterren ontvangen.\r\n\r\nOver OMORI:\r\n“Verken een vreemde wereld vol kleurrijke vrienden en vijanden. Navigeer door het levendige en het alledaagse om een vergeten verleden te ontdekken. Als de tijd daar is, zal het pad dat je hebt gekozen je lot bepalen... en misschien ook het lot van anderen.” -Nintendo Eshop\r\n\r\nOMORI is voor 16 jaar en ouder en bevat psychologische horror elementen.\r\n', 'OMORI.jpg', 'games'),
(16, 'Elvis, De film nu in de bioscoop!', 'Tom Hanks schittert vanaf deze week op het witte doek in Elvis (2022), een biopic over het leven van Elvis Presley. Hanks kruipt in de huid van zijn manager Tom Parker, die eigenlijk Dries van Kuijk heette, een man uit Breda die illegaal de VS inreisde in 1929.\r\n\r\nDe biopic draait voornamelijk om de relatie van Elvis Presley (Austin Butler) met zijn manager, kolonel Tom Parker (Tom Hanks). De twee maakten 20 jaar met elkaar mee, van Presley\'s doorbraak tot aan zijn sterrendom. Ook centraal staat Priscilla Presley (Olivia DeJonge), een van de belangrijkste en invloedrijkste mensen in het leven van de zanger.\r\nElvis\' weduwe Priscilla Presley heeft de film al gezien en laat weten onder de indruk te zijn: \"Een van de meest artistieke, creatieve, gestileerde en gevoelige films tot nu toe, over een belangrijk deel van Elvis\' leven.\" De biopic zou oorspronkelijk vorig jaar al uitkomen, maar werd toen wegens de pandemie.', 'elvis.jpg', 'films'),
(17, 'Een nieuwe minecraft update, vanaf 7 juni!', 'Het populaire sandbox-spel Minecraft krijgt 7 juni een grote update. De update, genaamd The Wild, bevat onder meer twee nieuwe biomen en nieuwe vijanden, volgens een bericht op de officiële Minecraft-site.\r\n\r\nDe twee nieuwe biomen zijn de deep dark en de mangrove swamp. De deep dark ligt diep onder de grond. Wat opvallend is aan deze bioom is de complete stilte. De speler kan in deze ondergrondse gangen twee nieuwe vijanden tegenkomen: de shrieker en de warden.\r\n\r\nHet andere bioom in de update is de mangrove swamp. In dit mangrovebos is een nieuw soort hout te vinden en het bevat een nieuw soort blok, namelijk het modderblok. Deze kan de speler ook zelf maken, door een aarde-blok en water te combineren in het crafting-menu. Verder voegt de update kikkers en kikkervisjes toe en kunnen spelers in roeibootjes varen met een schatkist aan boord.\r\n\r\nDe update is gratis en verschijnt voor alle versies van Minecraft. Het spel is verkrijgbaar voor Xbox, PlayStation , Switch en pc.', 'minecraft.jpg', 'games'),
(18, 'Het hoogtepunt van dit jaar: Minions: The Rise of Gru', 'Lang voordat hij een superschurk wordt, is Gru een 12-jarig jongetje in een buitenwijk in 1970 die vanuit zijn kelder plannen smeedt om de wereld te veroveren. Als de Minions op Gru’s pad komen bundelen de onwaarschijnlijke vrienden hun krachten. Samen bouwen ze hun eerste schurkenhol, ontwerpen ze hun eerste wapens en bereiden ze hun eerste missies voor. Als de beruchte groep superschurken de Vicious 6 hun leider lozen - de legendarische vechtsporter Wild Knuckles - gaat Gru, hun grootste fan, solliciteren om lid te worden. De Vicious 6 is helaas niet onder de indruk en hebben het op hem gemunt wanneer Gru hen te slim af. Wanneer Gru op de vlucht slaat, proberen de Minions kungfu te leren om hem te redden. Vanaf 1 juli in de bioscoop.', 'minions.jpg', 'films');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_text` varchar(255) NOT NULL,
  `post_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `posts`
--

INSERT INTO `posts` (`post_id`, `post_text`, `post_date`) VALUES
(86, 'test\r\n', '2022-06-27'),
(87, 'test\r\n', '2022-06-27'),
(88, 'grwet', '2022-06-28'),
(89, 'Joost\r\n', '2022-06-30'),
(90, 'Joost\r\n', '2022-06-30');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `uname`, `email`, `password`, `img`, `status`) VALUES
(41, 733139395, 'Dylan', 'Dylan@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1656402421profielfoto.jpg', 'Online'),
(42, 1301843639, 'Kaas', 'Thijs@gmail.com', '1', '1656402448profielfoto7.png', 'Online'),
(43, 790904005, 'Kevin', 'Kevin@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1656402476profielfoto4.png', 'Online'),
(44, 995405764, 'Joost', 'joost@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1656576665joost.jpg', 'Offline');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`articleId`);

--
-- Indexen voor tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexen voor tabel `nieuws`
--
ALTER TABLE `nieuws`
  ADD PRIMARY KEY (`nieuwsId`);

--
-- Indexen voor tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `articleId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT voor een tabel `nieuws`
--
ALTER TABLE `nieuws`
  MODIFY `nieuwsId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT voor een tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
