-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05-Jan-2018 às 04:34
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manga`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `id_carrinho` int(11) NOT NULL,
  `fk_id_livros` int(11) NOT NULL,
  `fk_id_compra` int(11) NOT NULL,
  `quantidade_livro_carrinho` int(11) DEFAULT NULL,
  `preco_livro` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hebrew;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_categoria` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nome_categoria`) VALUES
(1, 'Comedy'),
(2, 'Drama'),
(3, 'Fantasy'),
(4, 'Martial Arts'),
(6, 'Romance'),
(7, 'Slice of Life'),
(8, 'Sports'),
(9, 'Action'),
(10, 'Adventure'),
(21, 'Historical'),
(23, 'Mistery'),
(24, 'Futuristic');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(100) DEFAULT NULL,
  `apelido_cliente` varchar(100) DEFAULT NULL,
  `dob_cliente` date DEFAULT NULL,
  `morada_cliente` varchar(150) DEFAULT NULL,
  `cp1_cliente` int(11) DEFAULT NULL,
  `cp2_cliente` int(11) DEFAULT NULL,
  `email_cliente` varchar(100) DEFAULT NULL,
  `password_cliente` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nome_cliente`, `apelido_cliente`, `dob_cliente`, `morada_cliente`, `cp1_cliente`, `cp2_cliente`, `email_cliente`, `password_cliente`) VALUES
(3, 'Hideo', 'Kojima', '1963-08-24', 'Lisbon ', 1000, 190, 'kojima@mail.com', '8f0c7cb61ff113f553b01d302349363d'),
(5, 'Hideki', 'Kamiya', '1970-12-19', 'Lisbon', 1070, 100, 'kamiya@mail.com', '405fe4391be6c286341a2c4e1ac3429e'),
(6, 'Testuya', 'Nomura', '1970-10-08', 'Lisbon', 1400, 110, 'nomura@mail.com', '633de4b0c14ca52ea2432a3c8a5c4c31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes_classificam_livros`
--

CREATE TABLE `clientes_classificam_livros` (
  `id_cliente_classifica_livro` int(11) NOT NULL,
  `fk_id_cliente` int(11) NOT NULL,
  `fk_id_livro` int(11) NOT NULL,
  `valor_classificacao` decimal(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clientes_classificam_livros`
--

INSERT INTO `clientes_classificam_livros` (`id_cliente_classifica_livro`, `fk_id_cliente`, `fk_id_livro`, `valor_classificacao`) VALUES
(1, 3, 3, '9.1'),
(2, 3, 4, '7.3'),
(3, 3, 6, '8.7'),
(4, 3, 7, '8.8'),
(5, 3, 10, '9.5'),
(6, 3, 11, '8.7'),
(7, 3, 12, '8.9'),
(8, 3, 14, '9.1'),
(9, 3, 13, '8.9'),
(10, 3, 15, '9.3'),
(11, 3, 16, '8.2'),
(12, 3, 17, '9.3'),
(13, 3, 18, '8.8'),
(14, 3, 28, '7.4'),
(15, 3, 5, '7.9'),
(16, 3, 23, '8.1'),
(17, 3, 27, '8.2'),
(23, 3, 20, '8.5'),
(24, 3, 22, '8.7'),
(25, 3, 21, '9.1'),
(26, 3, 26, '8.9'),
(27, 3, 25, '9.0'),
(28, 3, 19, '8.4'),
(29, 3, 24, '8.5'),
(30, 3, 29, '7.3'),
(31, 3, 30, '7.4'),
(32, 3, 31, '8.8'),
(33, 3, 32, '7.4'),
(34, 3, 33, '9.4'),
(35, 3, 34, '9.2'),
(36, 3, 39, '8.5'),
(37, 3, 36, '8.4'),
(38, 3, 37, '9.2'),
(39, 3, 35, '8.6'),
(40, 3, 38, '8.1'),
(41, 3, 44, '8.5'),
(42, 3, 43, '8.7'),
(43, 3, 42, '9.0'),
(44, 3, 41, '7.5'),
(45, 3, 40, '8.3'),
(46, 3, 49, '7.4'),
(47, 3, 48, '8.4'),
(48, 3, 47, '8.7'),
(49, 3, 46, '8.8'),
(50, 3, 45, '7.6'),
(65, 3, 55, '8.4'),
(66, 3, 54, '8.7'),
(67, 3, 53, '8.6'),
(68, 3, 52, '8.8'),
(69, 3, 51, '8.9'),
(70, 3, 50, '8.4'),
(71, 3, 57, '7.8'),
(72, 3, 58, '8.6'),
(73, 3, 56, '7.8'),
(74, 3, 59, '9.3'),
(75, 3, 60, '8.8'),
(76, 3, 61, '9.2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compras`
--

CREATE TABLE `compras` (
  `id_compra` int(11) NOT NULL,
  `fk_id_cliente` int(11) NOT NULL,
  `data_compra` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `compras`
--

INSERT INTO `compras` (`id_compra`, `fk_id_cliente`, `data_compra`) VALUES
(6, 3, '2017-12-22 17:11:55'),
(7, 5, '2017-12-22 17:14:02'),
(8, 6, '2017-12-22 17:14:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editoras`
--

CREATE TABLE `editoras` (
  `id_editora` int(11) NOT NULL,
  `nome_editora` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `editoras`
--

INSERT INTO `editoras` (`id_editora`, `nome_editora`) VALUES
(1, 'Jump Comics'),
(2, 'Viz Media'),
(3, 'Shojo Beat Manga'),
(4, 'Young Animal Comics'),
(6, 'Young Magazine'),
(7, 'Tokyo Pop'),
(8, 'Del Rey'),
(9, 'Enterbrain'),
(10, 'Shogakukan'),
(11, 'Beam Comix'),
(12, 'Kodansha'),
(13, 'Shonen Gahosha'),
(14, 'Shueisha'),
(15, 'Yen Press');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `id_livro` int(11) NOT NULL,
  `fk_id_editora` int(11) NOT NULL,
  `titulo_livro` varchar(100) DEFAULT NULL,
  `isbn_livro` varchar(13) DEFAULT NULL,
  `edicao_livro` int(11) DEFAULT NULL,
  `preco_livro` decimal(6,2) DEFAULT NULL,
  `sinopse_livro` text,
  `stock_livro` int(11) DEFAULT NULL,
  `capa_livro` varchar(45) DEFAULT NULL,
  `volume_livro` int(11) DEFAULT NULL,
  `novidade_livro` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`id_livro`, `fk_id_editora`, `titulo_livro`, `isbn_livro`, `edicao_livro`, `preco_livro`, `sinopse_livro`, `stock_livro`, `capa_livro`, `volume_livro`, `novidade_livro`) VALUES
(3, 12, 'AKIRA', '9789721234785', 4, '18.80', 'On December 6, 1982, an apparent nuclear explosion destroys Tokyo and starts World War III. By 2019, a new city called Neo-Tokyo has been built on an artificial island in Tokyo Bay. Although Neo-Tokyo is set to host the XXXII Olympic Games, the city is gripped by anti-government terrorism and gang violence. While riding in the ruins of old Tokyo, Tetsuo Shima, a member of the bōsōzoku gang led by Shōtarō Kaneda, is injured when his bike explodes after Takashi — a child Esper with wizened features — blocks his path. This incident awakens psychic powers in Tetsuo, attracting the attention of a secret government project directed by JSDF Colonel Shikishima. These increasing powers unhinge Tetsuo\'s mind, exacerbating his inferiority complex about Kaneda and leading him to assume leadership of the rival Clown gang.', 9, 'akira.jpg', 6, '2017-11-10 22:15:09'),
(4, 12, 'Alive: The Final Evolution', '9789896789154', 3, '14.90', 'The series follows Taisuke Kanou, a teenage student in Japan who lives a normal life with his sister Yoko Kanou and his friend Hirose. The story begins when an alien being flies towards Earth after sensing life emanating from there. It is learned that the being, Akuro, is composed of souls who were granted immortality but preferred to die but could not do so without a body. These beings separate from each other and enter the bodies of humans in order to pursue death. As a result, a large number of people begin to commit suicide worldwide and the incident became known as Nightmare Week. The humans who resist Akuro\'s influence gain powers from their possession and become known as \"Comrades.\"', 10, 'alive.jpg', 21, '2017-11-10 22:15:09'),
(5, 10, 'Kids on the Slope', '9789724879487', 2, '14.90', 'The beginning of summer, 1966; because of his father\'s job situation, freshman high school student Kaoru Nishimi moves by himself from Yokosuka to Sasebo in Kyushu to live with relatives. Until then, Kaoru was an honor roll student who tended to keep to himself, but meeting notorious \"bad boy\" Sentaro Kawabuchi starts to change him. Through his devil-may-care classmate, Kaoru learns how much fun it is to play jazz and finds the first person he can call a real friend.', 10, 'apollon.jpg', 10, '2017-11-10 22:15:09'),
(6, 1, 'Bakuman', '9784567894585', 3, '16.60', 'When Moritaka Mashiro, a junior high student, forgets his notebook in class, he finds his classmate, Akito Takagi, who notes Mashiro\'s drawings. Takagi asks him to become a manga artist to his stories. Mashiro declines, citing his late manga artist uncle, who died from overworking. Takagi incites Mashiro to meet with Miho Azuki, Mashiro\'s crush, and tells her the two plan to become manga artists. In response, Azuki reveals her plans to be a voice actress. Mashiro proposes to her that they should both marry when Azuki becomes a voice actress for the anime adaptation of their manga. She accepts, but under the condition that they not meet face-to-face again until then. The two then start creating their manga, under the pen name Muto Ashirogi, in hopes of getting serialized in Weekly Shōnen Jump.', 7, 'bakuman.jpg', 20, '2017-11-10 22:15:09'),
(7, 14, 'Beelzebub', '9784567894525', 3, '14.50', 'The story follows Tatsumi Oga. He is a first year student at a school for juvenile delinquents called Ishiyama High. The story starts with Oga telling his best friend, Takayuki Furuichi, the strange story of how he found a baby. One day while doing \'laundry\' by the river, he saw a man floating downstream. Oga pulled him to shore but the man split in half, revealing a baby boy inside. This baby turned out to be the son of the great demon king, and Oga has been chosen as the one to raise him, along with the baby\'s maid, Hilda. The manga follows Oga\'s life as he tries to raise the child while enrolled at Ishiyama High.', 7, 'beelzebub.jpg', 28, '2017-11-10 22:15:09'),
(10, 4, 'Berserk', '9789721234874', 15, '14.85', 'Guts (ガッツ Gattsu) is a wandering mercenary whose entire world from birth is warfare and bloodshed. Born from a hanged corpse, the adoptive mother who rescued him dies from the plague when Guts is only three years old, and from then on Guts learns to fight in the mercenary band led by his adoptive father Gambino. Gambino is cruel to Guts even as he teaches the boy warfare, selling access to Guts to a rapist among the mercenaries and later attempting to murder Guts in a drunken rage. Guts flees after killing his adoptive father in self-defense.', 0, 'berserk.jpg', 39, '2017-11-10 22:15:09'),
(11, 1, 'Bleach', '9789726985487', 8, '18.80', 'Ichigo Kurosaki is a teenager from Karakura Town who can see ghosts, a talent which lets him meet supernatural trespasser Rukia Kuchiki. Rukia is one of the Soul Reapers (死神 Shinigami), soldiers trusted with ushering the souls of the dead from the World of the Living to the Soul Society (尸魂界 (ソウル·ソサエティ), lit. \"Dead Spirit World\")—the afterlife realm from which she originates—and with fighting Hollows, monstrous lost souls who can harm both ghosts and humans. When she is severely wounded defending Ichigo from a Hollow she is pursuing, Rukia transfers her Spirit Pressure (霊圧 Reiatsu) to Ichigo so that he may fight in her stead while she recovers her strength. Rukia is thereby trapped in an ordinary human body, and must advise Ichigo as he balances the demands of his substitute Soul Reaper duties and attending high school. For aid in hunting the Hollows, the pair ally with a trio of other spiritually empowered teenagers: Ichigo\'s high school classmate Orihime Inoue, best friend Yasutora \"Chad\" Sado and the Quincy—humans who can fight Hollows—Uryū Ishida.', 10, 'bleach.jpg', 74, '2017-11-10 22:15:09'),
(12, 14, 'City Hunter', '9789772487421', 20, '14.50', 'The series follows the exploits of Ryo Saeba, a \"sweeper\" who is always found chasing beautiful girls and a private detective who works to rid Tokyo of crime, along with his associate or partner, Hideyuki Makimura. Their \"City Hunter\" business is an underground jack-of-all-trades operation, contacted by writing the letters \"XYZ\" on a blackboard at Shinjuku Station. One day, Hideyuki is murdered, and Ryô must take care of Hideyuki\'s sister, Kaori, a tomboy who becomes his new partner in the process. However, Kaori is very susceptible and jealous, often hitting Ryô with a giant hammer when he does something perverted. The story also follows the behind-the-scenes romance between Ryo and Kaori and the way they cooperate throughout each mission.', 9, 'cityhunter.jpg', 35, '2017-11-10 22:15:09'),
(13, 1, 'Dragon Ball', '9789724587945', 20, '15.00', 'Son Goku, a monkey-tailed boy, and Bulma, a teenage girl, travel to find the seven Dragon Balls, which summon the dragon Shenlong to grant the user one wish. Their journey leads to the desert bandit Yamcha (who later becomes an ally), Chi-Chi (who Goku unknowingly agrees to marry), and Pilaf (an impish man who seeks the Dragon Balls to fulfill his desire to rule the world). Goku undergoes rigorous training regimes under the martial arts master Kame-Sen\'nin to fight in the Tenkaichi Budōkai, lit. \"Strongest Under the Heavens Martial Arts Tournament\"). He becomes friends with a monk named Kuririn, his training partner and, initially, rival. After the tournament, Goku searches for the Dragon Ball his grandfather left him and almost single-handedly defeats the Red Ribbon Army and their hired assassin Taopaipai. Then Goku reunites with his friends to defeat the fortune teller Baba Uranai\'s fighters and use her to find the last Dragon Ball in order to revive a friend killed by Taopaipai.', 10, 'dbz.jpg', 42, '2017-11-10 22:15:09'),
(14, 1, 'Death Note', '9789897546128', 7, '16.90', 'Light Yagami is a genius high school student who discovers the \"Death Note\", a notebook that kills anyone whose name is written in it, as long as the writer has seen that person\'s face. After experimenting with the notebook, Light meets the Shinigami Ryuk, the notebook\'s original owner, who dropped the notebook to the human world out of boredom. Light tells Ryuk of his plan to rule as a god over a new world free from criminals, where only people he deems morally fit to live remain. Light becomes known to the public as Kira (キラ), which is derived from the Japanese pronunciation of the word \"killer\". Ryuk, invisible except to those that possess the Death Note, follows Light around and takes enjoyment from Light\'s meticulous actions as Kira.', 10, 'deathnote.jpg', 12, '2017-11-10 22:15:09'),
(15, 14, 'Eyeshield 21', '9789724879468', 5, '16.60', 'In Tokyo, a weak, unassertive boy named Sena Kobayakawa enters the high school of his choice—Deimon Private Senior High School. Sena\'s only remarkable physical abilities are his running speed and agility, which are noted by the school\'s American football team captain Yoichi Hiruma. Hiruma forces Sena to join the Deimon Devil Bats football team as its running back. To protect his identity from other teams who want to recruit him, Sena is forced to publicly assume the role of team secretary and enter the field under the pseudonym of \"Eyeshield 21\" wearing a helmet with an eyeshield to hide his features. The makeshift team initially takes part in the spring football tournament hoping to win through the strength of their new \"secret weapon\". However, the extremely weak team is eliminated early by the Ojo White Knights, one of the best football teams in Japan.', 10, 'eyeshield.jpg', 37, '2017-11-10 22:15:09'),
(16, 2, 'Fist of the North Star', '9789725469781', 18, '18.50', 'Kenshiro, successor to the ancient assassination art of \"Hokuto Shinken\", wanders into a village in search of water when he is caught in a trap and imprisoned by the local defense force. In prison, he befriends a young orphaned girl named Rin who nursed him back to health. When the village is attacked by a biker gang and Rin is taken hostage by their leader, Ken breaks free from his cell and rescues Rin, defeating the gang leader with his deadly martial art technique. Kenshiro leaves the village and continues his journey, now accompanied by a young thief named Bat. He becomes involved against the King organization after witnessing the many atrocities they have committed. As he infiltrates the gang\'s stronghold in the city of Southern Cross, he finds out that the leader of King is his old nemesis, the Nanto Seiken master Shin, the man who engraved the seven scars on Kenshiro\'s chest and kidnapped his fiancée Yuria. Kenshiro emerges victorious in his rematch with Shin, only to find out from Shin that Yuria killed herself in despair. Shin, not wanting to die by Kenshiro\'s hand, kills himself in the same manner.', 10, 'fist.jpg', 27, '2017-11-10 22:15:09'),
(17, 2, 'Fullmetal Alchemist', '9789897541258', 8, '17.70', 'Fullmetal Alchemist takes place in an alternate history, in the fictional country of Amestris (アメストリス Amesutorisu). In the world, alchemy is one of the most-practiced sciences; Alchemists who work for the government are known as State Alchemists (国家錬金術師 Kokka Renkinjutsushi) and are automatically given the rank of Major in the military. Alchemists have the ability, with the help of patterns called Transmutation Circles, to create almost anything they desire. However, when they do so, they must provide something of equal value in accordance with the Law of Equivalent Exchange', 10, 'fma.jpg', 27, '2017-11-10 22:15:09'),
(18, 12, 'Great Teacher Onizuka', '9789897548154', 5, '15.50', 'Eikichi Onizuka is a 22-year-old ex-gang member and a virgin. While peeping up girls\' skirts at a local shopping mall, Onizuka meets a girl who agrees to go out on a date with him. Onizuka\'s attempt to sleep with her fails when her current \"boyfriend\", her teacher, shows up at the love hotel they are in and asks her to return to him. The teacher is old and unattractive, but has sufficient influence over her that she leaps from a second-story window and lands in his arms.', 10, 'gto.jpg', 25, '2017-11-10 22:15:09'),
(19, 2, 'Haikyu!!', '9789724874985', 2, '17.90', 'Junior high school student Shōyō Hinata gains a sudden love of volleyball after seeing a national championship match on TV. Although short in height, he becomes determined to follow in the footsteps of the championship\'s star player, nicknamed the \"Little Giant\", after seeing his plays. He creates a volleyball club and begins practicing by himself. Eventually 3 other members join the team by his last year of middle school, pushing Hinata to persuade his two friends who are in different clubs to join just for the tournament.', 10, 'haikyu.jpg', 28, '2017-11-10 22:15:09'),
(20, 14, 'JoJo\'s Bizarre Adventure - Part 1: Phantom Blood', '9789727456878', 20, '14.90', 'JoJo\'s Bizarre Adventure volumes 1 to 5. In the 1880s in Great Britain, the young Jonathan Joestar meets his new adopted brother Dio Brando, who only wants to usurp Jonathan as heir to the Joestar family. However, his attempts are thwarted and he resorts to using an ancient Stone Mask which transforms him into a vampire. Jonathan, with Italian Hamon master Will A. Zeppeli and former street thug Robert E.O. Speedwagon at his side, must now find a way to stop Dio using his newly found affinity for the Ripple martial arts now that Dio\'s sights are set on nothing less than world domination.', 10, 'jojo1.jpg', 5, '2017-11-10 22:15:09'),
(21, 14, 'JoJo\'s Bizarre Adventure - Part 2: Battle Tendency', '9789727456877', 17, '14.90', 'JoJo\'s Bizarre Adventure volumes 5 to 12. In New York City in 1938, Joseph Joestar, grandson of Jonathan, who has a natural affinity for the Hamon technique, becomes entangled in his grandfather\'s destiny when the Pillar Men, supernatural beings of impossible power, awaken after failed experiments by Nazi German special forces. Joseph ultimately teams up with Caesar Zeppeli, Will\'s grandson, and Caesar\'s teacher Lisa Lisa, a woman mysteriously tied to Joseph, to stop the Pillar Men from obtaining a mystical artifact in Lisa Lisa\'s possession that will grant them complete immortality and bring about the end of the world at their hands, so long as Joseph can master the Hamon technique to beat the Pillar Men in a rematch for the antidotes to poisons they implanted in his body.', 10, 'jojo2.jpg', 7, '2017-11-10 22:15:09'),
(22, 14, 'JoJo\'s Bizarre Adventure - Part 3: Stardust Crusaders', '9789727456876', 22, '14.90', 'JoJo\'s Bizarre Adventure volumes 12 to 28. In 1989, Jotaro Kujo, a Japanese high school student, places himself in jail because he believes he is possessed by an evil spirit. His mother Holly calls on her father Joseph Joestar to talk sense into Jotaro, and with the help of his ally the Egyptian fortune teller Mohammed Avdol, reveals that Jotaro has in fact developed a supernatural ability known as a Stand that has run through the family due to the revival of their ancestor\'s foe Dio. After thwarting an assassination attempt by transfer student Noriaki Kakyoin who is under Dio\'s thrall, Jotaro and Joseph discover that Holly is dying from her own Stand. Jotaro resolves to hunt down Dio, and Joseph leads him, Avdol, and Kakyoin to Egypt, using their Stands to battle more Stand-wielding assassins along the way, gaining allies in the French swordsman Jean Pierre Polnareff who wishes to avenge the death of his sister, and the stray dog Iggy, before 50 days elapse and Holly dies.', 10, 'jojo3.jpg', 16, '2017-11-10 22:15:09'),
(23, 14, 'JoJo\'s Bizarre Adventure - Part 4 Diamond Is Unbreakable ', '9789727456875', 18, '14.90', 'JoJo\'s Bizarre Adventure volumes 29 to 47. In the fictional Japanese town of Morioh in 1999, Jotaro arrives to reveal to Josuke Higashikata (the kanji 助 in his name is read in the on\'yomi form as jo) that he is the illegitimate son of Joseph Joestar and to warn him that Morioh is beginning to be filled with Stand users due to a mystical Bow and Arrow that bestows Stands on those struck by the arrowheads. After Josuke takes revenge on a Stand user who killed his grandfather, he agrees to help Jotaro hunt down the holder of the Bow and Arrow, gaining allies in Josuke\'s friend Koichi Hirose, who is hit by the arrow, Okuyasu Nijimura, whose brother was using the Arrow until it was stolen from him, the famous manga artist Rohan Kishibe, and even his estranged father Joseph Joestar. Along the way, the group deals with the various new Stand users throughout Morioh, including several of Josuke, Koichi, and Okuyasu\'s classmates, until the death of one of their friends leads to the discovery that one of the new Stand users is the serial killer, Yoshikage Kira.', 10, 'jojo4.jpg', 18, '2017-11-10 22:15:09'),
(24, 14, 'JoJo\'s Bizarre Adventure - Part 5 Vento Aureo ', '9789727456874', 15, '14.90', 'Le Bizzarre Avventure di GioGio volumes 47 to 63. In 2001, Koichi Hirose is sent by Jotaro to Naples to investigate Giorno Giovanna, whom Jotaro has discovered is Dio\'s son fathered before his defeat in Cairo 12 years earlier, to see if the boy has a Stand and if he is evil. Koichi ultimately discovers the boy\'s Stand and his pure goals for reforming the mafia from the inside out, and Jotaro lets him live his life. Giorno ultimately joins a squad of Passione, a Stand-using mafia, led by Bruno Bucciarati, who leads Giorno, Leone Abbacchio, Guido Mista, Narancia Ghirga, and Pannacotta Fugo on a mission to Capri to retrieve his former superior\'s riches, being attacked by rival mafioso along the way, and then are tasked by Passione\'s boss to escort his daughter Trish Una throughout Italy and protect her from others in the gang who wish to use her to find out his identity.', 10, 'jojo5.jpg', 17, '2017-11-10 22:15:09'),
(25, 14, 'JoJo\'s Bizarre Adventure - Part 6 Stone Ocean', '9789727456873', 16, '14.90', 'Stone Ocean volumes 1 to 17 (JoJo volumes 64 to 80). In 2011 near Port St. Lucie, Florida, Jolyne Cujoh is arrested and sent to the Green Dolphin St. Prison for murder. Her estranged father Jotaro visits her and reveals that she has been set up in order for one of Dio\'s disciples to kill her within the prison. After revealing that a gift he gave her has awoken her latent Stand powers to protect her, he is attacked, and his Stand is stolen from him by the prison chaplain Enrico Pucci, Dio\'s disciple. Jolyne works with fellow inmate Ermes Costello, who has also had a Stand awoken in her, to retrieve her father\'s Stand, gaining allies in the boy Emporio Alniño, other inmates Narciso Anasui and Weather Report, and the sentient Stand-using plankton Foo Fighters to save her father and stop Pucci before he can use his Stand to recreate the universe in Dio\'s image.', 10, 'jojo6.jpg', 17, '2017-11-10 22:15:09'),
(26, 14, 'JoJo\'s Bizarre Adventure - Part 7 Steel Ball Run ', '9789727456872', 17, '14.90', 'Steel Ball Run volumes 1 to 24 (JoJo volumes 81 to 104). In an alternate timeline in 1890, Gyro Zeppeli travels to the United States to take part in a cross-country horse race known as the Steel Ball Run. His skill in a mystical martial art known as Spin, which he controls with steel balls, garners the interest of former jockey turned paraplegic Johnny Joestar, particularly after a Spin-infused ball briefly restores Johnny\'s ability to walk. Johnny travels with Gyro on the race to learn the art of Spin from him in hopes he can be cured, but they soon discover that the race is a ploy set up by Funny Valentine, the President of the United States, to search the country for the scattered parts of a holy corpse that imbue their holders with a Stand, so the President can use the entire corpse to his own patriotic ends, even if it means the disruption of other dimensions with his Stand\'s ability. Gyro and Johnny work together, along with fellow racers Mountain Tim and Hot Pants and race organizer Stephen Steel and his wife Lucy, to stop the President from his plans, as they threaten the very world, all while dealing with Valentine\'s hired assassins in the race, including the charismatic racer Diego Brando.', 10, 'jojo7.jpg', 24, '2017-11-10 22:15:09'),
(27, 14, 'JoJo\'s Bizarre Adventure - Part 8 JoJolion ', '9789727456871', 9, '14.90', 'JoJolion is currently being published, beginning with the 105th overall volume of JoJo. In 2012, in the same universe as Steel Ball Run, the town of Morioh has been devastated by the 2011 Tōhoku earthquake and tsunami, which has caused mysterious faults colloquially known as the \"Wall Eyes\" to appear in town. Local college student Yasuho Hirose is near one of the Wall Eyes when she discovers a young man buried in the rubble, and a strange bite mark on him. She nicknames him \"Josuke\", as he cannot remember his own name, and after following a lead that he may be \"Yoshikage Kira\", an attack by a Stand user leads them to find the real Yoshikage Kira\'s corpse. Josuke is put in the care of the Higashikata family, whose patriarch Norisuke IV seems to know more about Josuke than he initially lets on, but Josuke himself discovers that the Higashikata family and Yoshikage Kira\'s family are linked due to Johnny Joestar\'s marriage to Rina Higashikata in the late 19th century. Josuke and Yasuho ultimately discover that Josuke is in fact Yoshikage Kira, mysteriously fused with another person, and Yoshikage Kira possessed the knowledge to cure a curse that has plagued the Higashikata family for centuries. Norisuke IV wants that knowledge back to save his grandchild from the same fate he and his family has suffered, but a mysterious race of rock men and Norisuke IV\'s own son Jobin seem to be conspiring against them to both prevent Josuke from regaining his memories and from lifting the curse on the Higashikata family.', 10, 'jojo8.jpg', 16, '2017-11-10 22:15:09'),
(28, 3, 'Honey & Clover', '9789724567874', 5, '17.50', 'Yūta Takemoto, Takumi Mayama and Shinobu Morita are three young men who live in the same apartment complex and are students at an art college in Tokyo.\r\n\r\nOne day, they are introduced to Hagumi Hanamoto, the daughter of a cousin of Shūji Hanamoto, an art professor, who has come to live with Hanamoto and has become a first year art student at the art school that everyone attends. Yuta and Shinobu both fall in love with Hagu, but Yuta hides his feelings and tries to be a friend to Hagu while Shinobu expresses his love in ways that seem only to scare Hagu, such as calling her \"Mousey\" and constantly photographing her. Hagu herself, though initially timid and afraid of company, gradually warms up to the three.', 10, 'honey.jpg', 10, '2017-11-10 22:17:47'),
(29, 6, 'Kaiji', '9789724568794', 5, '17.80', 'After graduating from high school in 1996 in Japan, Itō Kaiji moves to Tokyo to get a job, but he fails to find steady employment because the country is mired in its first recession since World War II. Depressed, he festers in his apartment, biding his time with cheap pranks, gambling, liquor and cigarettes. Kaiji is always thinking about money and his perpetual poverty frequently brings him to tears.', 10, 'kaiji.jpg', 63, '2017-11-13 21:31:40'),
(30, 14, 'Innocent', '9789724784687', 5, '18.90', 'In the 18th century, seeking \"freedom and equality,\" the event that became the starting point of modern French society, the French Revolution, began. There was one more protagonist that lived within the darkness, Charles-Henri Sanson. He was the fourth generation family head of the Sanson Family, and executioner of Paris.', 10, 'innocent.jpg', 9, '2017-11-13 21:56:51'),
(31, 2, 'Ruroni Kenshin', '9789724879845', 20, '16.50', 'In the early Meiji era, after participating in the Bakumatsu war as the assassin \"Hitokiri Battōsai\", Himura Kenshin wanders the countryside of Japan offering protection and aid to those in need as atonement for the murders he once committed. When arriving in Tokyo in the 11th year of Meiji (1878), he meets a young woman named Kamiya Kaoru, who is in the middle of a fight with a murderer - who claims to be the Hitokiri Battōsai - tarnishing the name of the swordsmanship school that she teaches. Kenshin decides to help her and defeats the fake Battōsai. After discovering that Kenshin is the real infamous assassin, Kaoru offers him a place to stay at her dojo noting that he is peace-loving and not cold-hearted, as his reputation implies. Kenshin accepts and begins to establish lifelong relationships with many people such as Sagara Sanosuke, a former Sekihō Army member; Myōjin Yahiko, an orphan from a samurai family who is also living with Kaoru as her student; and a doctor named Takani Megumi, caught in the opium trade. However, he also deals with his fair share of enemies, new and old, including the former leader of the Oniwabanshū, Shinomori Aoshi and a rival from the Bakumatsu turned police officer, Saitō Hajime.', 10, 'kenshin.jpg', 28, '2017-11-13 22:28:11'),
(32, 14, 'Kingdom', '9789721456589', 10, '17.90', 'Born in the Warring States period of ancient China, Xin and Piao are war-orphans in the kingdom of Qin who dream of becoming \"Great Generals of the Heavens\" to rise from their lowly stations in life. One day, however, Piao is taken to the palace by a minister to be used for an unknown purpose, leaving Xin alone as a household slave in a peasant village. A few months later, Piao returns to the village on the verge of death, urging Xin to travel to another village. There he meets a boy who looks nearly identical to Piao, Ying Zheng, the current King of Qin. Xin learns that Piao served as a body double for Ying Zheng, and was mortally wounded in a power struggle for the throne. Though initially furious at Ying Zheng for causing Piao\'s death, Xin decides to seize the opportunity and aid Ying Zheng in defeating his brother and reclaiming the Qin throne. Successful in this endeavor, Xin officially starts his life as a Qin commander on the battlefields of Warring States China with the goal of becoming the \"Greatest General in the World\", and to help King Zheng of Qin achieve his dream of total unification, ending the incessant warfare once and for all.', 10, 'kingdom.jpg', 48, '2017-11-13 22:28:11'),
(33, 2, 'Slam Dunk', '9789584654123', 20, '14.50', 'Hanamichi Sakuragi is a delinquent and the leader of a gang. Sakuragi is very unpopular with girls, having been rejected an astonishing fifty times. In his first year at Shohoku High School, he meets Haruko Akagi, the girl of his dreams, and is overjoyed when she is not repulsed or scared of him like all the other girls he has asked out.\r\n\r\nHaruko, recognizing Sakuragi\'s athleticism, introduces him to the Shohoku basketball team. Sakuragi is reluctant to join the team at first, as he has no prior experience in sports and thinks that basketball is a game for losers (in addition to the fact that the fiftieth girl rejected him in favor of a basketball player). Sakuragi, despite his extreme immaturity and fiery temper, proves to be a natural athlete and joins the team, mainly in the hopes of impressing and getting closer to Haruko. Later on, Sakuragi realizes that he has come to actually love the sport, despite having previously played primarily because of his crush on Haruko. Kaede Rukawa — Sakuragi\'s bitter rival (both in basketball and because Haruko has a massive crush, albeit one-sided, on Rukawa), the star rookie and a \"girl magnet\" — joins the team at the same time. Not long after, Hisashi Mitsui, a skilled three-point shooter and ex-junior high school MVP, and Ryota Miyagi, a short but fast point guard, both rejoin the team and together these four struggle to fulfill team captain Takenori Akagi\'s dream of winning the national championship. Together, these misfits gain publicity and the once little-known Shohoku basketball team becomes an all-star contender in Japan.', 3, 'slamdunk.jpg', 31, '2017-12-22 17:06:27'),
(34, 13, 'Sun Ken Rock', '978978546879', 15, '17.89', 'The story revolves around Ken (the main protagonist), a man from an upper-class family that was orphaned young due to his family\'s involvement with the Yakuza; he became a highschool delinquent known for fighting. The only thing that motivates him to take action is through his romantic affections for a classmate, Yumi. After learning she decided to move to Korea to become a police officer, Ken left his life in Japan behind and tried to follow in Yumin\'s footsteps; due to unforeseen circumstances, he incidentally becomes the head of a local gang and tries to hide it from Yumin. As the leader, the gang is renamed the Sun-Ken Rock Group. At the first, the gang only consisted of few members and didn\'t even have a base. As the story progresses The Sun-Ken Rock gang becomes bigger as they recruited new members and take over other gangs\' territories and investments. The Sun-Ken Rock Group acquires an MMORPG company, a large casino, one of the biggest television media companies in Korea, as well as garnering political favors (making them the most powerful gang in Korea). However, throughout all of this, Ken has done his best to evade revealing himself to Yumin as a gang leader as she despises gangs. Ironically, Yumin was groomed to become an advanced plant in Korea to help her Yakuza group lay the foundations to expand their hold into South Korea; due to Yumin\'s refusal to join the \"family business,\" their plans were stalled as various members either tried to take her back to Japan or try to get her back into Yakuza control. In between Ken\'s rise, he and Yumin got closer and Yumin started to have feelings for Ken. However, things were always complicated by the interference of either Ken\'s gang activities and/or Yumin\'s Yakuza connections. The series, despite being very adult-oriented, espouses many shonen-esque values, such as the importance of friendship and the concept of being a \"true man\". The turning point in the story was when she was kidnapped by her own group and Ken was exposed as a gang leader in his attempts to rescue her from his greatest rival, Kim Ban Phong (a Vietnamese-Korean that has a vicious score to settle with Ken). The manga has three spin-offs \"Dango Knight \", \"Sun Ken Rock Gaiden - Yumin\" and \"I Want Feed Yumin\".', 5, 'sunkenrock.jpg', 25, '2017-12-22 17:06:27'),
(35, 7, 'Lupin III', '9789787897153', 40, '16.50', 'Arsène Lupin III, the grandson of the fictional gentleman thief, Arsène Lupin, is considered the world\'s greatest thief, known for announcing his intentions to steal valuable objects by sending a calling card to the owners of his desired items. His right-hand man and closest ally is Daisuke Jigen, an expert marksman who can accurately shoot a target in 0.3 seconds. Although Lupin and Jigen frequently work as a two-man team, they are often joined by Goemon Ishikawa XIII, a master swordsman whose sword can cut anything, or Fujiko Mine, a femme fatale and Lupin\'s love interest. Although Fujiko usually works together with the others, she occasionally exploits Lupin\'s interest in her to steal the treasure for herself. Lupin and his gang are constantly chased by Inspector Koichi Zenigata of Interpol, who has made it his life\'s work to arrest them, pursuing Lupin across the globe.', 10, 'lupin.jpg', 14, '2018-01-03 19:58:48'),
(36, 10, 'Magi', '9789787897154', 5, '18.50', 'After being secluded for his entire life, a boy called Aladdin travels the world with his \"friend\" Ugo, the Djinn contained within Aladin\'s flute, until he meets Alibaba Saluja, a young man aiming to one day explore the nearby dungeon Amon and claim its treasures. Aladdin and Alibaba eventually become friends, and conquer Amon together, despite facing the opposition of the ruthless Jamil and his slave warriors: Morgiana and Goltas. After a desperate fight, the two protagonist fend off Jamil and assist Morgiana in breaking the mental chains that bind her to her former master. Alibaba claims the dungeon while the Djinn Amon appears in front of Aladdin to briefly explain that he is a Magi and that Alibaba is his king\'s candidate. However, they are interrupted by an outside force trying to close the dungeon off. Alibaba, Aladdin, and Morgiana escape the dungeon while Goltas resolves to die to atone for his sins along with broken former master, but not before cutting Morgiana\'s shackles. For some reason, Aladdin ends up teleported to a distant land, far away from the others, where he learns what a Magi and that he is one. Having no news of his friend, Alibaba uses the treasure he obtained in Amon to free all slaves in the city, including Morgiana and returns to Balbadd, his homeland.', 10, 'magi.jpg', 37, '2018-01-03 19:58:48'),
(37, 10, 'Monster', '9789754567894', 25, '18.90', 'Dr. Kenzō Tenma is a young Japanese brain surgeon, working at Eisler Memorial Hospital in Düsseldorf. Tenma is dissatisfied with the political bias of the hospital in treating patients, and seizes the chance to change things after a massacre brings fraternal twins Johan and Anna Liebert into the hospital. Johan has a gunshot wound to his head, and Anna mutters about killing; Tenma operates on Johan instead of the mayor, who arrived later. Johan is saved, but Mayor Roedecker dies; Tenma loses his social standing. Director Heinemann and the other doctors in Tenma\'s way are mysteriously murdered, and both children disappear from the hospital. The police suspect Tenma, but they have no evidence and can only question him.', 10, 'monster.jpg', 18, '2018-01-03 19:58:48'),
(38, 8, 'Mushishi', '9789787456415', 10, '15.60', 'Mushishi is set in an imaginary time between the Edo and Meiji periods, featuring some 19th-century technology but with Japan still as a \"closed country\".[3] The story features ubiquitous creatures called Mushi (蟲) that often display what appear as supernatural powers. It is implied that there are many more lifeforms more primitive than \"normal\" living things such as animals, plants, fungi and bacteria, and Mushi is the most primitive of all. Due to their ethereal nature most humans are incapable of perceiving Mushi and are oblivious to their existence, but there are a few who possess the ability to see and interact with Mushi. One such person is Ginko (ギンコ), the main character of the series voiced by Yuto Nakano in the original version and by Travis Willingham in the English dub.[4][5] He employs himself as a Mushi Master (蟲師 mushi-shi), traveling from place to place to research Mushi and aid people suffering from problems caused by them.', 10, 'mushishi.jpg', 10, '2018-01-03 20:02:19'),
(39, 2, 'My Hero Academia', '9789724567897', 15, '16.90', 'On an Earth-like world where people with superpowers known as \"Quirks\" (個性 Kosei) are the norm, Izuku Midoriya is a regular middle school student who has dreams of one day becoming a Hero despite being bullied by his classmates for not having a Quirk. After being the only one to try and save his childhood bully Katsuki from a Villain, the world\'s greatest Hero All Might bestows upon him his own quirk \"One For All\". The story follows Izuku\'s entrance into U.A. High School (雄英高校 Yūei Kōkō), a school that cultivates the next generation of Super Heroes.', 10, 'myhero.jpg', 16, '2018-01-03 20:02:19'),
(40, 2, 'Naruto', '9789584654121', 25, '16.80', 'A powerful fox known as the Nine-Tails attacks Konoha, the hidden leaf village in the Land of Fire, one of the Five Great Shinobi Countries in the Ninja World. In response, the leader of Konoha, the Fourth Hokage, seals the fox inside the body of his newborn son, Naruto Uzumaki, making Naruto a host of the beast;[d] this costs Naruto\'s father his life, and the Third Hokage returns from retirement to become leader of Konoha again. Naruto is often ridiculed by the Konoha villagers for being the host of the Nine-Tails. Because of a decree made by the Third Hokage forbidding anyone to mention these events, Naruto knows nothing about the Nine-Tails until 12 years later, when Mizuki, a renegade ninja, reveals the truth to Naruto. Naruto then defeats Mizuki in combat, earning the respect of his teacher Iruka Umino.', 10, 'naruto.jpg', 72, '2018-01-03 20:19:49'),
(41, 2, 'Nana', '9789724567894', 12, '15.85', 'Nana Komatsu has a habit of falling in love at first sight all the time, and depending on other people to help her. When her friends, and then her boyfriend, leave for Tokyo, she decides to join them a year later after having saved enough money at the age of twenty.\r\n\r\nNana Osaki, the other Nana, is the punk-styled lead vocalist of a band called Black Stones (BLAST for short). She had lived with her boyfriend, bassist Ren Honjo since she was 16, but when Ren is offered a chance to debut in Tokyo as a replacement member of a popular band called Trapnest, Nana chooses to continue on with BLAST and to cultivate her own career instead of following Ren, as she has too much ambition to be relegated to a rockstar\'s girlfriend. She eventually leaves for Tokyo at the age of twenty to start her musical career.', 10, 'nana.jpg', 21, '2018-01-03 20:19:49'),
(42, 10, 'Ping Pong', '9789756487152', 12, '14.90', 'Despite having drastically different personalities, high school boys Peco and Smile have been friends since childhood. Now, they’re both talented members of table tennis club of Katase High School. Peco gets decisively defeated by a Chinese student and thus becomes so devastated that he quits practicing. Meanwhile, Smile\'s personality always prevents him from winning against Peco. Coach Jō, however, discovers Smile\'s potential and tries to motivate him to overcome his psychological obstacle.', 10, 'pingpong.jpg', 5, '2018-01-03 20:19:49'),
(43, 1, 'One Piece', '9787894561248', 40, '18.50', 'The series focuses on Monkey D. Luffy, a young man who, inspired by his childhood idol and powerful pirate \"Red Haired\" Shanks, sets off on a journey from the East Blue Sea to find the famed treasure One Piece and proclaim himself the King of the Pirates. In an effort to organize his own crew, the Straw Hat Pirates (麦わら海賊団篇 Mugiwara Kaizoku-dan), Luffy rescues and befriends a swordsman named Roronoa Zoro, and they head off in search of the One Piece. They are joined in their journey by Nami, a navigator and thief; Usopp, a sniper and a liar; and Vinsmoke Sanji, a womanizing chef who is also a prince from a family of Royal Assasins. They acquire a ship named the Going Merry and engage in confrontations with notorious pirates of the East Blue. As Luffy and his crew set out on their adventures, others join the crew later in the series, including the doctor and anthropomorphized reindeer Tony Tony Chopper, an archaeologist and former assassin Nico Robin, a cyborg shipwright Franky, and skeletal musician Brook, and they also acquire a new ship named Thousand Sunny.', 10, 'onepiece.jpg', 87, '2018-01-03 20:19:49'),
(44, 14, 'One Outs', '9787845612348', 9, '15.90', 'The Saitama Lycaons is the weakest team in the Japanese league. Hiromichi Kojima, the Lycaons\' star batter, forms a training camp in Okinawa to try for his last attempt at a championship after 21 years. When the minor league pitcher training with Kojima becomes injured, him and Kojima\'s trainer goes to look for a replacement, but run into trouble by participating in the \"One Outs\" game, where a pitcher and batter duel 1-on-1 with money on the line. The next day, Kojima arrives to avenge his teammates and meets Tōa Tokuchi, who appears to have no special pitching skills, but defeats Kojima easily and causes him to enter seclusion to re-evaluate himself as a professional player. Later, Tokuchi accepts a rematch after Kojima raised the stakes, proclaiming he will retire immediately if he loses, but he will \"take\" Tokuchi\'s right arm to make sure he will never gamble on baseball again if Tokuchi loses. This time, Tokuchi experiences his very first loss and offers Kojima his right arm to have it broken. Instead, Kojima tells him he never intended to break it, and asks Tokuchi to join the Lycaons and use his unique pitching ability to take the Lycaons to the championship. Soon, Tokuchi meets Saikawa, the greedy owner of the Lycaons who only cares about the team making a profit. Saikawa is reluctant to give Tokuchi any sort of significant salary due to his inexperience as a professional, but Tokuchi offers an unusual proposal. He proposes the \'One Outs contract\', a performance-based pay where he gets 5,000,000 yen for every out he pitches, but loses ¥50,000,000 for every run he gives up.', 10, 'oneouts.jpg', 20, '2018-01-03 20:19:49'),
(45, 15, 'Prison School', '9789721234871', 5, '18.90', 'Hachimitsu Academy, one of the strictest girls academies in Tokyo, has decided to admit boys into their system. Kiyoshi Fujino is one of these new boys, but he discovers to his shock that he and his four friends—Takehito \"Gakuto\" Morokuzu, Shingo Wakamoto, Jouji \"Joe\" Nezu, and Reiji \"Andre\" Andou—are the only male students among 1,000 girls. The draconian laws that are still in place make the school even worse, which punishes even the most minor infractions with a stay in the school\'s prison. The five boys all commit to voyeurism in the school\'s bathing area with the perverted philosophy of \"all for one, one for all.\" Their capture and \"arrest\" by the Underground Student Council causes the five boys to receive an ultimatum: either stay a month in the school\'s Prison Block or be expelled. The boys are incarcerated in the Prison Block together and Kiyoshi is overwhelmed by the discovery that all the other boys are masochists that revel in the punishments handed to them by their attractive but vicious supervisors.', 10, 'prisonschool.jpg', 27, '2018-01-03 21:34:46'),
(46, 11, 'Ran and the Gray World', '9789724567898', 10, '18.50', 'Meet the Urumas, a slightly dysfunctional family of four sorcerers. Mom, being the most powerful sorceress around, works away from home keeping the world safe. Dad picks up the slack and takes care of the family. Except when he\'s out, which is when the older brother Jin finds himself in the unenviable position of keeping tabs on his sister Ran. And Ran, the youngest, is a willful girl with too much power and too little wisdom. Let\'s take a look at Ran\'s everyday misadventures, shall we?', 10, 'ran.jpg', 7, '2018-01-03 21:34:46'),
(47, 14, 'Rookies', '9787456123487', 15, '17.50', 'Koichi Kawato is the new Japanese teacher at the ill-famed Futakotamagawa high school, whose baseball club is composed of thugs and bullies who have been suspended for a year from all school competitions, for causing a brawl during an official match. The newly appointed teacher finds that the club members left are only interested in women, smoking and doing nothing good until, under Kawato\'s guidance, they recognize that baseball is what they truly love doing. Kawato also teaches them that they should follow their dreams, and for them, being able to reach the national high school tournament finals in Koshien (Hyogo prefecture) is what they have always wished for. However, reaching Koshien is far from easy as many obstacles await them.', 10, 'rookies.jpg', 24, '2018-01-03 21:34:46'),
(48, 12, 'Sailor Moon', '9787454123544', 50, '15.89', 'In Minato, Tokyo, a middle-school student named Usagi Tsukino befriends Luna, a talking black cat who gives her a magical brooch enabling her to become Sailor Moon: a soldier destined to save Earth from the forces of evil. Luna and Usagi assemble a team of fellow Sailor Soldiers to find their princess and the Silver Crystal. They encounter the studious Ami Mizuno, who awakens as Sailor Mercury; Rei Hino, a local shrine maiden who awakens as Sailor Mars; Makoto Kino, a tall transfer student who awakens as Sailor Jupiter; and Minako Aino, a young aspiring idol who awakens as Sailor Venus, accompanied by her talking feline companion Artemis. Additionally, they encounter Mamoru Chiba, a high-school student who assists them on occasion as Tuxedo Mask.', 10, 'sailormoon.jpg', 18, '2018-01-03 21:34:46'),
(49, 12, 'Sayonara, Zetsubou-Sensei', '978789456147', 8, '17.50', 'Sayonara, Zetsubou-Sensei revolves around a very pessimistic high school teacher named Nozomu Itoshiki who, at the very beginning of the series, tries to hang himself on a sakura tree. He is saved by an extremely optimistic student known only as Kafuka Fuura (though in her effort to save his life, she almost kills him). She explains to him that it is simply unimaginable that he would hang himself on such a nice day, especially in front of such beautiful trees. She decides to nickname Nozomu \"Pink Supervisor\" (桃色係長 Momoiro Kakarichō), and offers to pay him fifty yen to call him by that nickname. After having enough of the strange Kafuka, Nozomu bolts to the school and starts his homeroom class, but the attempt to escape was in vain as he finds that she is one of his students. Not only that, but Kafuka is just the tip of the iceberg, due to each and every student in his class representing a new personality quirk or bizarre obsession, posing challenges that he must overcome in spite of himself.', 10, 'sayonara.jpg', 30, '2018-01-03 21:34:46'),
(50, 2, 'Saint Seiya', '9789724567871', 25, '14.90', 'The story focuses on an orphan named Seiya who was forced to go to the Sanctuary in Greece to obtain the Bronze Cloth of the Pegasus constellation, a protective armor worn by the Greek goddess Athena\'s 88 warriors known as Saints. Upon awakening his Cosmos, the power of the Saints which is an inner spiritual essence originated in the Big Bang, Seiya quickly becomes the Pegasus Saint and returns to Japan to find his older sister.\r\n\r\nBecause his sister disappeared the same day Seiya went to the Sanctuary, Saori Kido, the granddaughter of Mitsumasa Kido (the person who sent all the orphans to train) makes a deal with him to go to fight in a tournament called the Galaxian Wars. In this tournament, all the orphans who survived and became Bronze Saints must fight to win the most powerful Cloth: The Sagittarius Gold Cloth. If Seiya goes to compete there and wins, Saori would start a search to find Seiya\'s sister. The tournament is interrupted by the revengeful Phoenix Bronze Saint, Ikki, who wishes to eliminate track from the people who forced him undergo his training. He steals parts from the Sagittarius Cloth and eventually fights against the remaining Bronze Saints: Seiya, Shun (Ikki\'s brother), Shiryū, and Hyōga, to complete it.', 10, 'seiya.jpg', 28, '2018-01-03 22:04:42'),
(51, 2, 'Shokugeki no Soma', '9789724567893', 7, '17.50', 'Food Wars: Shokugeki no Soma tells the story of a boy named Sōma Yukihira, whose dream is to become a full-time chef in his father\'s neighborhood restaurant and surpass his father\'s culinary skills. But just as Sōma graduates from middle school, his father, Jōichirō Yukihira, gets a new job that requires him to travel around the world and closes his shop. However, Sōma\'s fighting spirit is rekindled by a challenge from Jōichirō which is to survive in an elite culinary school, called \"Totsuki Teahouse Culinary Academy\" where only less than 1% of the students manage to graduate. After securing himself a spot at the Academy, Sōma is placed in a dormitory called Polar Star where he meets several of the key characters in the series. The episodes focus mainly on Sōma\'s interaction with the many talented students at the Academy and a variety of adventures that allow him to grow further towards his cooking goal.', 10, 'shokugeki.jpg', 27, '2018-01-03 22:04:42'),
(52, 15, 'Soul Eater', '9787975461345', 8, '12.50', 'Soul Eater is set at Death Weapon Meister Academy (死神武器職人専門学校 Shinigami Buki Shokunin Senmon Gakkō)—\"DWMA\" (死武専 Shibusen) for short—located in the fictional Death City[1] in Nevada, United States.[2] The school is run by Shinigami, also known as Death, as a training facility for humans with the ability to transform into weapons, as well as the wielders of those weapons, called meisters (職人 shokunin).[1] Attending this school are meister Maka Albarn and her scythe partner Soul Eater; assassin Black Star and his partner Tsubaki Nakatsukasa, who can turn into weapons such as a kusarigama, shuriken, and ninjatō; and Shinigami\'s son Death the Kid and his pistol partners Liz and Patty Thompson. The goal of the school\'s meister students is to have their weapons defeat and absorb the souls of 99 evil humans and one witch, which will dramatically increase the power of the weapon and turn them into \"death scythes\", weapons capable of being used by Shinigami.', 10, 'soul.jpg', 25, '2018-01-03 22:04:42');
INSERT INTO `livros` (`id_livro`, `fk_id_editora`, `titulo_livro`, `isbn_livro`, `edicao_livro`, `preco_livro`, `sinopse_livro`, `stock_livro`, `capa_livro`, `volume_livro`, `novidade_livro`) VALUES
(53, 2, 'Terra Formars', '9789724564784', 7, '18.50', 'In an attempt to colonize Mars, 21st century scientists are tasked with terraforming the planet. Their goal is to seed the planet with a modified algae to absorb sunlight and purify the atmosphere, and cockroaches, whose corpses spread the algae across the planet as they feed.\r\n\r\nFive hundred years later, the first manned ship to Mars lands and its six crew members are attacked by giant mutated humanoid cockroaches with incredible physical strength, later labeled \"Terraformars\"; the crew is wiped out after sending a warning back to Earth. Two years later, BUGS II, a multinational expedition of genetically modified humans, is sent to collect 10 samples of both sexes of roaches, and exterminate the mutated bugs to take control of the red planet. Only two survivors manage to return to Earth, one swearing to return and avenge their fallen companions. As a third expedition is assembled questions are raised about the true origin of the Terraformars and their connection with an unknown disease afflicting mankind, the Alien Engine Virus, or A.E. Virus. To fight the Terraformars\' strength and agility, members of the second and third expedition undergo genetic modification to inherit the characteristics of other organisms, only possible after having a special organ implanted with a 36% chance of surviving the surgery itself.', 10, 'terraformars.jpg', 20, '2018-01-03 22:04:42'),
(54, 12, 'Shingeki no Kyojin', '9789785461245', 6, '18.50', 'Over 100 years before the beginning of the story on an alternate world, giant humanoid creatures called Titans (巨人 Kyojin) suddenly appeared and nearly wiped out humanity, devouring them without remorse or reason and only targeting them; they completely ignore other wild life. What remains of humanity now resides within three enormous curtain walls: the outermost is Wall Maria (ウォール・マリア Wōru Maria); the middle wall is Wall Rose (ウォール・ローゼ Wōru Rōze, sometimes pronounced like rosé) and the innermost is Wall Sheena (ウォール・シーナ Wōru Shīna, alt. \"Wall Sina\"). Inside these walls, humanity has lived in uneasy peace for one hundred years, many people growing up without ever having seen a Titan. This all changes when one day, a giant 60-meter (200 ft)-tall Colossus Titan mysteriously appears after a strike of lightning and breaches the outer wall (which is 50 meters tall) of the Shiganshina district, a town at Wall Maria, allowing the smaller Titans to invade the district. An Armored Titan smashes clean through the gate in Wall Maria, forcing humankind to abandon the land between Wall Maria and Wall Rose, evacuating the remaining population into the inner districts. The sudden influx of population causes turmoil and famine.', 10, 'titan.jpg', 24, '2018-01-03 22:04:42'),
(55, 1, 'Toriko', '9789724564784', 15, '17.90', 'Toriko is a Gourmet Hunter searching for the most precious foods in the world so he can create his full-course meal. A man with inhuman ability, he utilizes his incredible strength and knowledge of the animal kingdom to capture ferocious, evasive, and rare beasts to further his menu. He is accompanied by the weak and timid chef Komatsu, who, inspired by Toriko\'s ambition, travels with him to improve his culinary skills and to find rare ingredients. Toriko and his friends often fight against the Gourmet Corps (美食會 Bishoku-kai), who seek to take control of the world\'s entire food supply and are looking for the highly sought-after ingredient GOD (GOD（ゴッド） Goddo), which the legendary Gourmet Hunter Acacia used to end the war that took place five-hundred years before the series began.', 10, 'toriko.jpg', 43, '2018-01-03 22:04:42'),
(56, 10, 'Yakitate!! Ja-pan', '9789787456417', 7, '14.50', 'The story focuses on Kazuma Azuma, a boy on his quest to create \"Ja-pan\", a national bread for Japan itself. He initially heads to Tokyo to expand his horizons at the bread-making chain Pantasia; the story continues with Azuma\'s exploits with his other coworkers.\r\n\r\nThe title of this series itself is a play on words; Yakitate translates to \"freshly baked\", but Ja-pan has a double meaning. Besides referring to the country of Japan, pan is the Japanese word for \"bread\" (stemming from Portuguese pão[3]). Ja-pan is a pun for this series. This mimics the style of the names of other varieties of bread in Japanese, such as \"furansupan\" (French Bread), \"doitsupan\" (German rye-based bread), \"itariapan\" (Italian bread), etc. The characters cook the bread using sheer anger and the power of their burning passion. This mimics the legendary Kanjitake (河内 恭) cooking style of Hokkaido\r\n\r\nBesides the desire to create his Ja-pan, Azuma also possesses the legendary Solar Hands (太陽の手 taiyō no te). These hands are warmer than normal human hand temperature, and allow the dough to ferment faster. This gives him some advantage at the beginning of the series, but his innovation is his greater talent.\r\n\r\nAlthough the story has baking as its main theme, the parts that raise the most interest are the outrageous puns in the story. Especially notable are the \"reaction\" based puns made by the judges, who go to great lengths to prove a single point about the bread that they had tasted. The series in general also pokes fun at the shōnen genre\'s tendency to be melodramatic over mundane tasks.', 10, 'yakitate.jpg', 26, '2018-01-03 22:16:58'),
(57, 15, 'Yotsuba&!', '9789724567894', 5, '16.90', 'Yotsuba&! is centered on Yotsuba Koiwai, a five-year-old[8] adopted girl who is energetic, cheerful, curious, odd, and quirky—so odd and quirky that even her own father calls her strange. She is also initially ignorant about many things a child her age would be expected to know, among them doorbells, escalators, air conditioners, and even playground swings.[9] This naïveté is the premise of humorous stories where she learns about, and frequently misunderstands, everyday things.[10]\r\n\r\nAt the start of the series, Yotsuba and her adoptive father, Yousuke Koiwai, relocate to a new city with the help of Koiwai\'s best friend, an impressively tall man nicknamed Jumbo. Yotsuba makes a strong impression on the three daughters of the neighboring Ayase family, Asagi, Fuuka, and Ena. Most of her daily activities and misadventures often originate from interactions with these characters.\r\n\r\nThe series has no continuing plot—the focus of the stories is Yotsuba\'s daily voyage of discovery. Many chapters take place on successive days (for details, see List of Yotsuba&! chapters), so that the series follows, almost literally, the characters\' daily lives.[11] The tone can be summarized by the motto, used on chapter title pages and advertising, \"Today is always the most enjoyable day\" (いつでも今日が、いちばん楽しい日 Itsudemo kyō ga, ichiban tanoshii hi), or in the original translation, \"Enjoy Everything\".', 10, 'yotsuba.jpg', 13, '2018-01-03 22:16:58'),
(58, 2, 'Yu Yu Hakusho', '9789652369854', 50, '15.90', 'Yu Yu Hakusho follows Yusuke Urameshi, a 14-year-old street-brawling delinquent who, in an uncharacteristic act of altruism, is hit by a car and killed in an attempt to save a young boy by pushing him out of the way.[3][4][5] His ghost is greeted by Botan, a woman who introduces herself as the pilot of the River Styx, who ferries souls to the \"Underworld\" or Spirit World (霊界 Reikai) where they may be judged for the afterlife. Botan informs Yusuke that his act had caught even the Underworld by surprise and that there was not yet a place made for him in either heaven or hell. Thus Koenma, son of the Underworld\'s ruler King Enma, offers Yusuke a chance to return to his body through a series of tests.[3][4][5] Yusuke succeeds with the help of his friends Keiko Yukimura and Kazuma Kuwabara. After returning to life, Koenma grants Yusuke the title of \"Underworld Detective\" (霊界探偵 Reikai Tantei, lit. \"Spirit World Detective\"), charging him with investigating supernatural activity within the Human World (人間界 Ningen Kai). Soon Yusuke is off on his first case, retrieving three treasures stolen from the Underworld by a gang of demons: Hiei, Kurama and Goki.[4] Yusuke collects the three treasures with the aid of his new technique, the \"Rei Gun\", a shot of aura or Reiki (霊気 Reiki, \"Spirit Energy\") fired mentally from his index finger.[3][5] He then travels to the mountains in search of the aged, female martial arts master Genkai. Together with his rival Kuwabara, Yusuke fights through a tournament organized by Genkai to find her successor. Yusuke uses the competition as a cover to search for Rando, a demon who steals the techniques of martial arts masters and kills them.[4] Yusuke defeats Rando in the final round of the tournament and trains with Genkai for several months, gaining more mastery over his aura.[3] Yusuke is then sent to Maze Castle in the Demon Plane (魔界 Makai, lit. \"Demon World\"), a third world occupied solely by demons, where Kuwabara and the newly reformed Kurama and Hiei assist him in defeating the Four Beasts, a quartet of demons attempting to blackmail Koenma into removing the barrier keeping them out of the human world.', 10, 'yuyu.jpg', 19, '2018-01-03 22:16:58'),
(59, 12, 'Vagabond', '9789584654121', 40, '17.50', 'Growing up in the late 16th century Sengoku era Japan, Shinmen Takezō is shunned by the local villagers as a devil child due to his wild and violent nature. Running away from home with a fellow boy at age 17, Takezo joins the Toyotomi army to fight the Tokugawa clan at the Battle of Sekigahara. However, the Tokugawa win a crushing victory, leading to nearly three hundred years of Shogunate rule. Takezo and his friend manage to survive the battle and afterwards swear to do great things with their lives. However, after their paths separate, Takezo becomes a wanted criminal and must change his name and his nature in order to escape an ignoble death.', 10, 'vagabond.jpg', 37, '2018-01-03 22:26:50'),
(60, 10, 'Goodnight Punpun', '9789724567898', 10, '18.40', 'Goodnight Punpun follows the life and experiences of Onodera Punpun, a young boy living in Japan, as well as a few of his friends. The manga follows Punpun as he grows up, splitting the book into around 4 stages of his life: Elementary school, Middle school, High school, and his early 20s.', 10, 'punpun.jpg', 13, '2018-01-03 22:26:50'),
(61, 9, 'Otoyomegatari', '9784512654797', 8, '18.50', 'Set in Turkic Central Asia in a rural town near the Caspian Sea during the late 19th century, the story revolves around a young woman, Amir, who arrives from a distant village across the mountains to marry Karluk, a young man eight years younger than her. The series then follow their relationship as it develops while other storylines are introduced, each one about young woman and their daily lives with their respective fiancés and husbands, during the 19th century in Central Asia.', 10, 'otoyo.jpg', 9, '2018-01-03 22:26:50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros_tem_categorias`
--

CREATE TABLE `livros_tem_categorias` (
  `id_livro_tem_categoria` int(11) NOT NULL,
  `fk_id_categoria` int(11) NOT NULL,
  `fk_id_livro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `livros_tem_categorias`
--

INSERT INTO `livros_tem_categorias` (`id_livro_tem_categoria`, `fk_id_categoria`, `fk_id_livro`) VALUES
(1, 9, 3),
(2, 24, 3),
(3, 4, 4),
(4, 9, 4),
(5, 7, 6),
(6, 9, 7),
(7, 3, 7),
(8, 2, 5),
(9, 7, 5),
(10, 3, 10),
(11, 8, 15),
(12, 4, 11),
(13, 3, 11),
(14, 4, 16),
(15, 9, 12),
(16, 10, 13),
(17, 4, 13),
(18, 23, 14),
(19, 8, 19),
(20, 7, 18),
(21, 9, 20),
(22, 3, 20),
(23, 9, 21),
(24, 3, 21),
(25, 9, 22),
(26, 3, 22),
(27, 9, 23),
(28, 3, 23),
(29, 9, 24),
(30, 3, 24),
(31, 9, 25),
(32, 3, 25),
(33, 9, 26),
(34, 3, 26),
(35, 9, 27),
(36, 3, 27),
(37, 2, 29),
(38, 8, 29),
(39, 21, 30),
(40, 4, 31),
(41, 21, 31),
(42, 21, 32),
(43, 9, 32),
(44, 8, 33),
(45, 4, 34),
(46, 9, 39),
(47, 21, 37),
(48, 23, 37),
(49, 1, 35),
(50, 9, 35),
(51, 3, 38),
(52, 3, 36),
(53, 9, 36),
(54, 7, 28),
(55, 6, 28),
(56, 8, 44),
(57, 9, 43),
(58, 10, 43),
(59, 8, 42),
(60, 6, 41),
(61, 2, 41),
(62, 9, 40),
(63, 4, 40),
(64, 7, 49),
(65, 1, 49),
(66, 6, 48),
(67, 3, 48),
(68, 8, 47),
(69, 3, 46),
(70, 6, 46),
(71, 10, 45),
(72, 9, 55),
(73, 4, 55),
(74, 23, 54),
(75, 10, 54),
(76, 24, 53),
(77, 9, 53),
(78, 10, 52),
(79, 3, 52),
(80, 7, 51),
(81, 4, 50),
(82, 10, 50),
(83, 1, 45),
(84, 7, 57),
(85, 7, 56),
(86, 4, 58),
(87, 9, 58),
(88, 4, 59),
(89, 7, 60),
(90, 21, 61),
(91, 2, 60),
(92, 3, 17),
(93, 10, 17);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mangakas`
--

CREATE TABLE `mangakas` (
  `id_mangaka` int(11) NOT NULL,
  `nome_mangaka` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mangakas`
--

INSERT INTO `mangakas` (`id_mangaka`, `nome_mangaka`) VALUES
(1, 'Katsuhiro Otomo'),
(3, 'Tadashi Kawashima'),
(4, 'Yuki Kodama'),
(5, 'Tsugumi Ohba'),
(6, 'Ryuhei Tamura'),
(7, 'Takeshi Obata'),
(8, 'Kentaro Miura'),
(9, 'Tite Kubo'),
(10, 'Tsukasa Hojo'),
(11, 'Akira Toriyama'),
(12, 'Riichiro Inagaki'),
(13, 'Yusuke Murata'),
(14, 'Buronson'),
(15, 'Hiromu Arakawa'),
(16, 'Haruichi Furudate'),
(17, 'Tohru Fujisawa'),
(18, 'Hirohiko Araki'),
(19, 'Nobuyuki Fukumoto'),
(20, 'Shinichi Sakamoto'),
(21, 'Nobuhiro Watsuki'),
(22, 'Yasuhisa Hara'),
(23, 'Boichi'),
(24, 'Takehiko Inoue'),
(25, 'Monkey Punch'),
(26, 'Shinobu Ohtaka'),
(27, 'Naoki Urasawa'),
(28, 'Yuki Urushibara'),
(29, 'Kōhei Horikoshi'),
(30, 'Shinobu Kaitani'),
(31, 'Eiichiro Oda'),
(32, 'Taiyō Matsumoto'),
(33, 'Ai Yazawa'),
(34, 'Masashi Kishimoto'),
(35, 'Masanori Morita'),
(36, 'Naoko Takeuchi'),
(37, 'Kōji Kumeta'),
(38, 'Akira Hiramoto'),
(39, 'Aki Irie'),
(40, 'Hajime Isayama'),
(41, 'Mitsutoshi Shimabukuro'),
(42, 'Yū Sasuga'),
(43, 'Kenichi Tachibana'),
(44, 'Masami Kurumada'),
(45, 'Yūto Tsukuda'),
(46, 'Shun Saeki'),
(47, 'Atsushi Ōkubo'),
(48, 'Takashi Hashiguchi'),
(49, 'Kiyohiko Azuma'),
(50, 'Yoshihiro Togashi'),
(51, 'Kaoru Mori'),
(52, 'Inio Asano'),
(54, 'Chica Umino');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mangakas_escrevem_livros`
--

CREATE TABLE `mangakas_escrevem_livros` (
  `id_mangaka_escreve_livro` int(11) NOT NULL,
  `fk_id_livro` int(11) NOT NULL,
  `fk_id_mangaka` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mangakas_escrevem_livros`
--

INSERT INTO `mangakas_escrevem_livros` (`id_mangaka_escreve_livro`, `fk_id_livro`, `fk_id_mangaka`) VALUES
(1, 3, 1),
(2, 4, 3),
(3, 6, 7),
(4, 6, 5),
(5, 7, 3),
(6, 5, 4),
(7, 11, 9),
(8, 10, 8),
(16, 13, 11),
(17, 16, 14),
(18, 12, 10),
(19, 14, 7),
(20, 14, 5),
(21, 15, 13),
(22, 15, 12),
(23, 17, 15),
(24, 19, 16),
(25, 18, 17),
(26, 20, 18),
(27, 21, 18),
(28, 22, 18),
(29, 23, 18),
(30, 24, 18),
(31, 25, 18),
(32, 26, 18),
(33, 27, 18),
(34, 29, 19),
(35, 30, 20),
(36, 31, 21),
(37, 32, 22),
(38, 7, 6),
(39, 33, 24),
(40, 34, 24),
(41, 39, 29),
(42, 38, 28),
(43, 37, 27),
(44, 35, 25),
(45, 36, 26),
(46, 44, 30),
(47, 43, 31),
(48, 42, 32),
(49, 41, 33),
(50, 40, 34),
(51, 47, 35),
(52, 48, 36),
(53, 49, 37),
(54, 45, 38),
(55, 46, 39),
(56, 54, 40),
(57, 55, 41),
(58, 53, 42),
(59, 53, 43),
(60, 50, 44),
(61, 51, 45),
(62, 51, 46),
(63, 52, 47),
(64, 58, 50),
(65, 57, 49),
(66, 56, 48),
(67, 61, 51),
(68, 59, 24),
(69, 60, 52),
(70, 28, 54);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wishlist`
--

CREATE TABLE `wishlist` (
  `id_wishlist` int(11) NOT NULL,
  `fk_id_livro` int(11) NOT NULL,
  `fk_id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wishlist`
--

INSERT INTO `wishlist` (`id_wishlist`, `fk_id_livro`, `fk_id_cliente`) VALUES
(10, 33, 3),
(13, 10, 3),
(14, 7, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`id_carrinho`),
  ADD KEY `fk_carrinho_livros1_idx` (`fk_id_livros`),
  ADD KEY `fk_carrinho_compras1_idx` (`fk_id_compra`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indexes for table `clientes_classificam_livros`
--
ALTER TABLE `clientes_classificam_livros`
  ADD PRIMARY KEY (`id_cliente_classifica_livro`),
  ADD KEY `fk_clientes_has_livros_livros1_idx` (`fk_id_livro`),
  ADD KEY `fk_clientes_has_livros_clientes1_idx` (`fk_id_cliente`);

--
-- Indexes for table `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `fk_compras_clientes1_idx` (`fk_id_cliente`);

--
-- Indexes for table `editoras`
--
ALTER TABLE `editoras`
  ADD PRIMARY KEY (`id_editora`);

--
-- Indexes for table `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id_livro`),
  ADD KEY `fk_livros_editoras1_idx` (`fk_id_editora`);

--
-- Indexes for table `livros_tem_categorias`
--
ALTER TABLE `livros_tem_categorias`
  ADD PRIMARY KEY (`id_livro_tem_categoria`),
  ADD KEY `fk_categorias_has_livros_livros1_idx` (`fk_id_livro`),
  ADD KEY `fk_categorias_has_livros_categorias1_idx` (`fk_id_categoria`);

--
-- Indexes for table `mangakas`
--
ALTER TABLE `mangakas`
  ADD PRIMARY KEY (`id_mangaka`);

--
-- Indexes for table `mangakas_escrevem_livros`
--
ALTER TABLE `mangakas_escrevem_livros`
  ADD PRIMARY KEY (`id_mangaka_escreve_livro`),
  ADD KEY `fk_livros_has_autores_autores1_idx` (`fk_id_mangaka`),
  ADD KEY `fk_livros_has_autores_livros_idx` (`fk_id_livro`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id_wishlist`),
  ADD KEY `fk_livros_has_clientes_clientes1_idx` (`fk_id_cliente`),
  ADD KEY `fk_livros_has_clientes_livros1_idx` (`fk_id_livro`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carrinho`
--
ALTER TABLE `carrinho`
  MODIFY `id_carrinho` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `clientes_classificam_livros`
--
ALTER TABLE `clientes_classificam_livros`
  MODIFY `id_cliente_classifica_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `compras`
--
ALTER TABLE `compras`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `editoras`
--
ALTER TABLE `editoras`
  MODIFY `id_editora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `livros`
--
ALTER TABLE `livros`
  MODIFY `id_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `livros_tem_categorias`
--
ALTER TABLE `livros_tem_categorias`
  MODIFY `id_livro_tem_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `mangakas`
--
ALTER TABLE `mangakas`
  MODIFY `id_mangaka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `mangakas_escrevem_livros`
--
ALTER TABLE `mangakas_escrevem_livros`
  MODIFY `id_mangaka_escreve_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id_wishlist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD CONSTRAINT `fk_carrinho_compras1` FOREIGN KEY (`fk_id_compra`) REFERENCES `compras` (`id_compra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_carrinho_livros1` FOREIGN KEY (`fk_id_livros`) REFERENCES `livros` (`id_livro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `clientes_classificam_livros`
--
ALTER TABLE `clientes_classificam_livros`
  ADD CONSTRAINT `fk_clientes_has_livros_clientes1` FOREIGN KEY (`fk_id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_clientes_has_livros_livros1` FOREIGN KEY (`fk_id_livro`) REFERENCES `livros` (`id_livro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `fk_compras_clientes1` FOREIGN KEY (`fk_id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `livros`
--
ALTER TABLE `livros`
  ADD CONSTRAINT `fk_livros_editoras1` FOREIGN KEY (`fk_id_editora`) REFERENCES `editoras` (`id_editora`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `livros_tem_categorias`
--
ALTER TABLE `livros_tem_categorias`
  ADD CONSTRAINT `fk_categorias_has_livros_categorias1` FOREIGN KEY (`fk_id_categoria`) REFERENCES `categorias` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_categorias_has_livros_livros1` FOREIGN KEY (`fk_id_livro`) REFERENCES `livros` (`id_livro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `mangakas_escrevem_livros`
--
ALTER TABLE `mangakas_escrevem_livros`
  ADD CONSTRAINT `fk_livros_has_autores_autores1` FOREIGN KEY (`fk_id_mangaka`) REFERENCES `mangakas` (`id_mangaka`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_livros_has_autores_livros` FOREIGN KEY (`fk_id_livro`) REFERENCES `livros` (`id_livro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `fk_livros_has_clientes_clientes1` FOREIGN KEY (`fk_id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_livros_has_clientes_livros1` FOREIGN KEY (`fk_id_livro`) REFERENCES `livros` (`id_livro`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
