-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mer. 02 mai 2018 à 12:53
-- Version du serveur :  5.6.38
-- Version de PHP :  7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `projet2`
--

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

CREATE TABLE `answer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(55) NOT NULL,
  `isTrue` tinyint(1) NOT NULL,
  `idQuestion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `answer`
--

INSERT INTO `answer` (`id`, `name`, `isTrue`, `idQuestion`) VALUES
(41, 'Auguste', 0, 11),
(42, 'Jules César', 1, 11),
(43, 'Néron', 0, 11),
(44, 'Aurélien', 0, 11),
(45, 'Sting', 0, 12),
(46, 'Céline Dion', 0, 12),
(47, 'Faudel', 0, 12),
(48, 'Bob Marley', 1, 12),
(49, 'Brésil', 0, 13),
(50, 'Espagne', 0, 13),
(51, 'Allemagne', 1, 13),
(52, 'Belgique', 0, 13),
(53, 'Dyonisos', 0, 14),
(54, 'Zeus', 0, 14),
(55, 'Arès', 1, 14),
(56, 'Athena', 1, 14),
(57, 'Maratre', 1, 15),
(58, 'Chenapan', 0, 15),
(59, 'Jocrisse', 0, 15),
(60, 'Godiche', 0, 15),
(61, 'Hérisson', 0, 16),
(62, 'Gazelle', 0, 16),
(63, 'Guépard', 1, 16),
(64, 'Raton-Laveur', 0, 16),
(65, 'Luc Besson', 0, 17),
(66, 'Quentin Tarrantino', 0, 17),
(67, 'Pablo Escobar', 0, 17),
(68, 'Pedro Almodovar', 1, 17),
(69, 'Adriana Karembeu', 0, 18),
(70, 'Brigitte Macron', 0, 18),
(71, 'Pamela Anderson', 0, 18),
(72, 'Angela Merkel', 1, 18),
(73, 'Loire', 1, 19),
(74, 'Garonne', 0, 19),
(75, 'Seine', 0, 19),
(76, 'Rhône', 0, 19),
(77, '1789', 1, 20),
(78, '1689', 0, 20),
(79, '1889', 0, 20),
(80, '1989', 0, 20),
(81, '120m', 1, 21),
(82, '110m', 0, 21),
(83, '100m', 0, 21),
(84, '90m', 0, 21),
(85, 'L\'Aiguillon', 0, 22),
(86, 'La Ville d\'Hiver', 0, 22),
(87, 'Le Moulleau', 1, 22),
(88, 'Péreire', 0, 22),
(89, 'Au Palais des Congrès', 0, 23),
(90, 'Au Pyla', 0, 23),
(91, 'A Péreire', 0, 23),
(92, 'Au Moulleau', 1, 23),
(93, 'Ils réchauffent l\'eau de leurs bassins de décontaminati', 0, 24),
(94, 'Ils l\'enlèvent manuellement', 0, 24),
(95, 'Les huîtres sont triploïdes', 1, 24),
(96, 'Les huîtres arcachonnaises n\'ont jamais été laiteuses', 0, 24),
(97, 'Le Bal des séniors', 0, 25),
(98, 'Le Bal des pompiers', 0, 25),
(99, 'Les Patequas', 0, 25),
(100, 'Les Tchanquestas', 1, 25),
(101, 'Mira', 1, 26),
(102, 'Hoegarden', 0, 26),
(103, 'Kronembourg', 0, 26),
(104, 'Budweiser', 0, 26),
(105, 'Une statut d\'Arcachonus Ier', 0, 27),
(106, 'Une pinnasse ornée de coquilles d\'huîtres', 0, 27),
(107, 'Un canon napoléonien', 1, 27),
(108, 'Une huître coulée en bronze', 0, 27),
(109, 'Du pétrole', 1, 28),
(110, 'Du papier', 0, 28),
(111, 'De l\'aluminium', 0, 28),
(112, 'Du bois', 0, 28),
(113, 'Un hameçon à daurade', 0, 29),
(114, 'Un appât de sa conception', 0, 29),
(115, 'Un leurre à seiche', 1, 29),
(116, 'Une mitraillette', 0, 29),
(117, 'Un souvenir en forme de Dune du Pyla', 0, 30),
(118, 'Une ancienne miss arcachonnaise', 0, 30),
(119, 'Un bateau qui fait la traversée entre Arcachon et Le Ca', 0, 30),
(120, 'Une pâtisserie locale', 1, 30),
(121, 'Le lycée de la mer', 1, 31),
(122, 'Grand Air', 0, 31),
(123, 'Henri Dheurle', 0, 31),
(124, 'Saint Elme', 0, 31),
(125, 'Une plate', 0, 32),
(126, 'Un yacht', 0, 32),
(127, 'Une pinnasse', 1, 32),
(128, 'Un jetski', 0, 32),
(129, 'Le palais des congrès', 0, 33),
(130, 'La mairie', 0, 33),
(131, 'Le casino', 1, 33),
(132, 'Un parking', 0, 33),
(133, 'Faire du jetski', 0, 34),
(134, 'Surfer', 0, 34),
(135, 'Marcher', 0, 34),
(136, 'Kite Surfer', 1, 34),
(137, 'Un bateau d\'ostréiculteur', 1, 35),
(138, 'Un coquillage', 0, 35),
(139, 'Une sole', 0, 35),
(140, 'Une pâtisserie locale', 0, 35),
(141, 'Un système de lettres alphabétiques', 0, 36),
(142, 'Plus le chiffre est petit, plus', 1, 36),
(143, 'Un système de couleurs', 0, 36),
(144, 'Une gravure sur la coquille', 0, 36),
(145, 'Bleu Blanc Vert', 0, 37),
(146, 'Rouge Jaune Bleu', 0, 37),
(147, 'Noir blanc Rouge', 0, 37),
(148, 'Bleu Blanc Jaune', 1, 37),
(149, 'Les Cabanes Tchanquées', 1, 38),
(150, 'Les Cabanes sur pilotis', 0, 38),
(151, 'Les Guapetas', 0, 38),
(152, 'Les Pinassates', 0, 38),
(153, 'Arcachon', 0, 39),
(154, 'Le Teich', 0, 39),
(155, 'La Hume', 1, 39),
(156, 'Cazaux', 0, 39),
(157, 'Grand Air', 0, 40),
(158, 'Saint Elme', 1, 40),
(159, 'Les Miquelots', 0, 40),
(160, 'Jean Hameau', 0, 40),
(241, 'Un canard', 1, 66),
(242, 'Une vache', 0, 66),
(243, 'Une souris', 0, 66),
(244, 'Un chat', 0, 66),
(245, '2', 0, 67),
(246, '3', 0, 67),
(247, '5', 0, 67),
(248, '7', 1, 67),
(249, 'Une sirène', 1, 68),
(250, 'Une licorne', 0, 68),
(251, 'Une sorcière', 0, 68),
(252, 'Une magicienne', 0, 68),
(253, 'Rara Fafa et Lala', 0, 69),
(254, 'Riri Fifi et Loulou', 1, 69),
(255, 'Ruru, Fufu et Lulu', 0, 69),
(256, 'Roro, Fofo et Lolo', 0, 69),
(257, 'Edredon', 0, 70),
(258, 'Grobonbon', 0, 70),
(259, 'Polochon', 1, 70),
(260, 'Dedondon', 0, 70),
(261, 'Une mandarine', 0, 71),
(262, 'Un fruit du dragon', 0, 71),
(263, 'Une banane', 0, 71),
(264, 'Une pomme', 1, 71),
(265, 'Moustique', 0, 72),
(266, 'Abeille', 0, 72),
(267, 'Maya', 0, 72),
(268, 'Mouche', 1, 72),
(269, 'Pat Rébulaire', 0, 73),
(270, 'Pat Riculaire', 0, 73),
(271, 'Pat Hibulaire', 1, 73),
(272, 'Pat Aculaire', 0, 73),
(273, 'Une princesse', 0, 74),
(274, 'La fille de l\'inventeur du village', 1, 74),
(275, 'Une bibliothéquaire', 0, 74),
(276, 'Une esthéticienne', 0, 74),
(277, 'Une gazelle', 0, 75),
(278, 'Un babouin', 0, 75),
(279, 'Une girafe', 0, 75),
(280, 'Un lion', 1, 75),
(281, 'Un chevalier', 0, 76),
(282, 'Une éponge', 0, 76),
(283, 'Un éléphant', 0, 76),
(284, 'Un jedi', 1, 76),
(285, 'Un pilote hors la loi', 1, 77),
(286, 'Un chasseur de prime', 0, 77),
(287, 'Un storm trooper', 0, 77),
(288, 'Un méchant jedi', 0, 77),
(289, 'Une princesse', 1, 78),
(290, 'Une domestique', 0, 78),
(291, 'Une petite planète', 0, 78),
(292, 'Une ewok', 0, 78),
(293, 'Le méchant de Star Wars', 1, 79),
(294, 'Un nom de cookie', 0, 79),
(295, 'Une coquille d\'huître', 0, 79),
(296, 'Un méchant JS', 0, 79),
(297, 'Hyperpropulsion', 1, 80),
(298, 'En ramant plus vite', 0, 80),
(299, 'En utilisant la loi de Newton N°3 alinéa 4 verset 6', 0, 80),
(300, 'On ne peut pas aller plus vite que vite dans l\'espace', 0, 80),
(301, 'Mouai', 0, 81),
(302, 'Bof', 1, 81),
(303, 'Ca dépend', 0, 81),
(304, 'Pas du tout', 0, 81),
(305, 'Ah .... Ah .... Ah ...', 0, 82),
(306, 'Quel humour, j\'applaudis des deux moignons', 1, 82),
(307, 'Sérieux?', 0, 82),
(308, 'Whaaaaaaat?', 0, 82),
(309, '???', 0, 83),
(310, '????', 0, 83),
(311, '.....', 0, 83),
(312, 'C\'est .... euh .... Whaaaaaat?', 1, 83),
(313, '1, CR7 is the best', 0, 84),
(314, '1 puissance Messi', 1, 84),
(315, 'En fait, c\'est quoi ton délire??', 0, 84),
(316, 'Whaaaaat?', 0, 84),
(317, '9 Carlos 1/2', 1, 85),
(318, 'Après ou avant l\'hiver?', 0, 85),
(319, 'C\'est qui Carlos?', 0, 85),
(320, 'Big Bisou love RIP Carlos', 0, 85);

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `questionName` varchar(255) NOT NULL,
  `idQuizz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `questionName`, `idQuizz`) VALUES
(11, 'Qui a dit le sort en est jeté?', 4),
(12, 'A qui doit-on la chanson I shot the sheriff?', 4),
(13, 'Quelle équipe a remporté la coupe du monde en 2014', 4),
(14, 'Qui était le dieu de la guerre dans la mythologie grecque?', 4),
(15, 'Par quelle mot désigne-t-on une belle mère cruelle?', 4),
(16, 'Parmis les animaux suivant, lequel est le plus rapide?', 4),
(17, 'Quel cinéaste a réalisé Parle avec elle et Volver?', 4),
(18, 'Qui est la chancelière allemande actuelle?', 4),
(19, 'Quel est le plus long fleuve de France?', 4),
(20, 'En quelle année a eu lieu la Révolution française?', 4),
(21, 'A quelle altitude culmine la dune du Pyla?', 2),
(22, 'Comment s\'appelle le quartier le plus à l\'Ouest d\'Arcachon?', 2),
(23, 'Avant de se trouver au Pyla, où était La Suite?', 2),
(24, 'Quelle parade ont trouvé les ostréiculteurs avoir des huîtres sans laitance toute l\'année?', 2),
(25, 'Quel événement annuel a été remplacé par les Soirées Blanches à Pereire?', 2),
(26, 'Quelle Brasserie brasse une bière (infame) dans la zone industrielle de La Teste?', 2),
(27, 'La jetée du Moulleau fait le bonheur des enfants en raison d\'un monument particulier. Lequel?', 2),
(28, 'La ville de Cazaux est en France l\'une des principales productrice d\'une matière première utilisée par chacun quotidiennement. Laquelle?', 2),
(29, 'Chez Michelle, au Petit Port d\'Arcachon, les 10 turlutes sont à 10 euros. Mais de quoi s\'agit-il?', 2),
(30, 'Qu\'appelle-t-on une dunette sur le Bassin?', 2),
(31, 'Quel est le nom du lycée professionnel de Gujan-Mestras?', 3),
(32, 'Comment s\'appelle le bateau traditionnel du Bassin?', 3),
(33, 'Quel bâtiment se trouvait sur le Parc Mauresque avant qu\'il ne brûle dans les années 50?', 3),
(34, 'Sur le Banc d\'Arguin, il est interdit de:', 3),
(35, 'Qu\'appelle-t-on une plate sur le Bassin d\'Arcachon?', 3),
(36, 'Quel système permet de calibrer les huîtres?', 3),
(37, 'Quels sont les couleurs du drapeau arcachonnais?', 3),
(38, 'Comment appelle-t-on les deux cabanes sur pilotis situées au milieu du Bassin d\'Arcachon?', 3),
(39, 'Quelle station est desservie par le train entre Gujan-Mestras et La Teste de Buch?', 3),
(40, 'Comment s\'appelle le lycée privé d\'Arcachon, anciennement école de marins?', 3),
(66, 'Quel animal est Donald?', 17),
(67, 'Combien sont les nains dans Blanche Neige?', 17),
(68, 'Qui est Arielle?', 17),
(69, 'Comment s\'appellent les neveux de Donald?', 17),
(70, 'Comment s\'appelle le poisson ami de Arielle?', 17),
(71, 'Quel fruit empoisonne Blanche Neige?', 17),
(72, 'Comment s\'appelle le fidèle matelot du Capitaine Crochet?', 17),
(73, 'Qui est l\'ennemi juré de Mickey Mouse?', 17),
(74, 'Qui est Belle?', 17),
(75, 'Qui est Moufassa?', 17),
(76, 'Qui est Luke Skywalker?', 18),
(77, 'Qui est Han Solo?', 18),
(78, 'Qui est Leïa?', 18),
(79, 'Qui est Dark Vador?', 18),
(80, 'Comment se déplace-t-on super vite dans l\'espace?', 18),
(81, 'Les Ewoks c\'est trop mignon', 18),
(82, 'Si on enlève Baca à Chewbaca, et qu\'on le multiplie par 2, ça fait chouchou. Drôle?', 18),
(83, 'Comment dit-on \"Je suis ton père\" en xorgien?', 18),
(84, 'Combien faut-il de Ronaldo pour percer un trou dans l\'étoile noire avec un ballon taille officielle?', 18),
(85, 'A deux Carlos près, combien pèse Jabba?', 18);

-- --------------------------------------------------------

--
-- Structure de la table `quizz`
--

CREATE TABLE `quizz` (
  `id` int(11) NOT NULL,
  `quizzName` varchar(55) NOT NULL,
  `theme` varchar(25) DEFAULT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `quizz`
--

INSERT INTO `quizz` (`id`, `quizzName`, `theme`, `idUser`) VALUES
(2, 'Le Bassin d\'Arcachon', 'Arcachon', 2),
(3, 'Bassin Sud', 'Arcachon', 6),
(4, 'Culture et Confiture', 'Culture Générale', 3),
(17, 'Walt Disney', 'Culture Générale', 1),
(18, 'Star Wars', 'Culture Générale', 1);

-- --------------------------------------------------------

--
-- Structure de la table `score`
--

CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idQuizz` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `scoreDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `score`
--

INSERT INTO `score` (`id`, `idUser`, `idQuizz`, `score`, `scoreDate`) VALUES
(9, 1, 17, 6, '2018-05-02');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `adress` tinytext,
  `mail` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `adress`, `mail`, `password`, `status`) VALUES
(1, 'Ordonez', 'Maxime', 'Arcachon', 'max@wcs.fr', '12345', 'admin'),
(2, 'Bakhti', 'Amine', 'Bordeaux', 'amine@wcs.fr', 'azerty', 'user'),
(3, 'Leblond', 'David', 'Bordeaux', 'david@wcs.fr', '09876', 'user'),
(6, 'Carrère', 'Marie', 'Bordeaux', 'marie@wcs.fr', '45678', 'user'),
(14, 'Barbier', 'Aurélien', 'Bordeaux', 'aurel@wcs.fr', '45678', 'user'),
(16, 'Martin', 'Emilie', 'Bordeaux', 'emilie@wcs.fr', '1234', 'user'),
(17, 'Villacampa', 'Patricia', 'Arcachon', 'patricia@wcs.fr', '11111', 'user'),
(20, 'Etchebest', 'Philippe', 'Bordeaux', 'philippe@wcs.fr', 'petivier', 'user'),
(29, 'Sarran', 'Michel', 'Brives', 'michel@wcs.fr', 'gibson', 'user'),
(35, 'Darroz', 'Hélène', 'Monaco', 'helene@wcs.fr', 'raviole', 'user'),
(39, 'Piege', 'Jean-Francois', 'Montmorillon', 'jean@wcs.fr', 'supreme', 'user'),
(40, 'Lignac', 'Cyril', 'Paris', 'cyril@wcs.fr', 'gourmand', 'user'),
(41, 'Ramsay', 'Gordon', 'Bordeaux', 'gordon@wcs.fr', 'nightmare', 'user'),
(42, 'Verrat', 'Marc', 'Val d\'Isère', 'marc@wcs.fr', 'chapeau', 'user'),
(43, 'Robluchon', 'Joël', 'Paris', 'joel@wcs.fr', 'cuisine', 'user'),
(44, 'Escoffier', 'Auguste', 'Lyon', 'auguste@wcs.fr', 'bouchon', 'user'),
(45, 'Dupont', 'Jacques', 'Merignac', 'jacques@wcs.fr', '098765', 'user'),
(46, 'Campbel', 'Naomi', 'New York', 'naomi@wcs.fr', 'rimel', 'user'),
(47, 'Bowie', 'David', 'Dallas', 'bowie@wcs.fr', 'stardust', 'user'),
(48, 'Gasquet', 'Richard', 'Monte Carlo', 'richard@wcs.fr', 'tennis', 'user'),
(49, 'Nadal', 'Rafael', 'Madrid', 'rafa@wcs.fr', 'vamos', 'user'),
(50, 'Federer', 'Roger', 'Lausanne', 'roger@wcs.fr', 'rogerisnotdead', 'user'),
(51, 'Jackson', 'Michael', 'Neverland', 'michael@wcs.fr', 'beatit', 'user'),
(52, 'Michael', 'Georges', 'Los Angeles', 'georgesmichel@wcs.fr', 'wakemeup', 'user'),
(85, 'Dark', 'Vador', 'Lune Noir', 'dark.vador@wcs.fr', 'ilovedark', 'user'),
(86, 'Maury', 'Josephine', 'Bordeaux', 'josephine@wcs.fr', '1234', 'user'),
(88, 'Ordonez', 'Alexis', 'Arcachon', 'alexis.ordo@wcs.fr', 'AZERTY', 'user'),
(89, 'Ordonez', 'Romain', 'Arcachon', 'romain@wcs.fr', 'azerty', 'user'),
(90, 'Molinie', 'Camille', 'Audenge', 'camille@wcs.fr', 'Bonjour', 'user'),
(92, 'Marie', 'Reciv', 'Limoges', 'marir@wcs.fr', 'Grt', 'user'),
(93, 'Patrick', 'Bruel', 'Paris', 'patrickb@wcs.fr', 'Azer', 'user'),
(123, 'Barack', 'Obama', 'Washington', 'yes.we.can@wcs.fr', 'obama', 'user'),
(124, 'Donald', 'Trump', 'Baton Rouge', 'coincoin@wcs.fr', 'buiuldthewall', 'user');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_questions` (`idQuestion`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_quizz` (`idQuizz`);

--
-- Index pour la table `quizz`
--
ALTER TABLE `quizz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_users` (`idUser`);

--
-- Index pour la table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_users` (`idUser`),
  ADD KEY `id_quizz` (`idQuizz`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT pour la table `quizz`
--
ALTER TABLE `quizz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `score`
--
ALTER TABLE `score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`idQuestion`) REFERENCES `question` (`id`);

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`idQuizz`) REFERENCES `quizz` (`id`);

--
-- Contraintes pour la table `quizz`
--
ALTER TABLE `quizz`
  ADD CONSTRAINT `quizz_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`),
ADD CONSTRAINT `score_ibfk_2` FOREIGN KEY (`idQuizz`) REFERENCES `quizz` (`id`);
