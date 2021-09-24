-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 24 sep. 2021 à 19:04
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog_symfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `pseudo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `post_id`, `pseudo`, `content`) VALUES
(1, 1, 'lucas', 'okok'),
(47, 1, 'ortasia ortiku', 'bonjour'),
(48, 1, 'pepita pouleta', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210921123446', '2021-09-21 14:35:56', 33),
('DoctrineMigrations\\Version20210922093053', '2021-09-22 11:32:45', 64);

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `auther` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `auther`) VALUES
(1, 'Autem nesciunt ut asperiores.', 'Praesentium itaque maxime debitis eius quo qui fuga.', 'Timothée Ollivier'),
(2, 'Corporis et accusantium cupiditate.', 'Quisquam quam maxime dignissimos rerum dolorem est blanditiis rerum autem.', 'Pauline Sauvage-Weiss'),
(3, 'Sit itaque et molestiae.', 'Totam quis beatae autem quam rerum aut.', 'Lucie Legrand'),
(4, 'Alias suscipit et reiciendis esse.', 'Velit corrupti nihil excepturi recusandae et quam sed aut.', 'Véronique Dias'),
(5, 'Omnis nobis aut ea.', 'Molestiae et eaque voluptatibus fuga laborum rem dicta sit nostrum hic ut esse.', 'Marie Peron'),
(6, 'Id aliquid.', 'At sint laboriosam quia et voluptatem iste minus perspiciatis nihil eaque occaecati.', 'Claudine Muller'),
(7, 'Porro aliquam facilis impedit voluptatem.', 'Perspiciatis qui qui tempora quas et dicta odit vitae nobis.', 'Olivie Fleury-Blanchard'),
(8, 'Nam ducimus ut.', 'Quidem debitis quia ut sit veritatis veniam porro reprehenderit ullam minima recusandae.', 'Marc Ferreira'),
(9, 'Minus et commodi autem.', 'Iusto assumenda quo eos quam qui iure.', 'Adélaïde Laurent'),
(10, 'Velit veritatis qui.', 'Sed fuga sint hic facere omnis repellat possimus molestiae rerum maiores asperiores.', 'Nicolas Hamel');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526C4B89032C` (`post_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C4B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
