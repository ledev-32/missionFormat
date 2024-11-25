-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 25 Novembre 2024 à 11:04
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `format`
--

-- --------------------------------------------------------

--
-- Structure de la table `a_lieu`
--

CREATE TABLE `a_lieu` (
  `id` int(11) NOT NULL,
  `id_1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dateform`
--

CREATE TABLE `dateform` (
  `dateForm` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `domaineform`
--

CREATE TABLE `domaineform` (
  `id` int(11) NOT NULL,
  `nomDomaine` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `domaineform`
--

INSERT INTO `domaineform` (`id`, `nomDomaine`) VALUES
(0, 'Gestion'),
(1, 'Informatique'),
(2, 'Développement Durable'),
(3, 'Secourisme'),
(4, 'Communication');

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE `entreprise` (
  `id` int(11) NOT NULL,
  `nomAsso` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numIcomEntrprise` int(11) DEFAULT NULL,
  `nomInterl` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenomInterl` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `courriel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numTel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `entreprise`
--

INSERT INTO `entreprise` (`id`, `nomAsso`, `numIcomEntrprise`, `nomInterl`, `prenomInterl`, `courriel`, `numTel`) VALUES
(0, 'Airbus', NULL, NULL, NULL, NULL, NULL),
(1, 'M2L', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `id` int(11) NOT NULL,
  `nomFormation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publicVise` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objectif` text COLLATE utf8_unicode_ci,
  `cout` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contenu` text COLLATE utf8_unicode_ci,
  `id_1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `formation`
--

INSERT INTO `formation` (`id`, `nomFormation`, `publicVise`, `objectif`, `cout`, `contenu`, `id_1`) VALUES
(0, '2-3 Power point Niveau 2', 'Bénévoles, et salariés du mouvement sportif', 'Parfaire ses connaissances sur PowerPoint', '55 € support de cours inclus', '1-Amélioration d’une présentation,2-L’affichage,3-Personnalisation des diapositives,4-Les modèles,5-Les animations,6-Enregistrer une présentation,7-Ajouter du son,8-PowerPoint et Internet', 1);

-- --------------------------------------------------------

--
-- Structure de la table `inscrit`
--

CREATE TABLE `inscrit` (
  `id` int(11) NOT NULL,
  `id_1` int(11) NOT NULL,
  `dateInscri` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `intervenant`
--

CREATE TABLE `intervenant` (
  `id` int(11) NOT NULL,
  `nomI` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenomI` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domaineComp` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `intervient`
--

CREATE TABLE `intervient` (
  `id` int(11) NOT NULL,
  `id_1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `quand`
--

CREATE TABLE `quand` (
  `id` int(11) NOT NULL,
  `DateForm` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `lieu` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `heureDebut` time DEFAULT NULL,
  `heureFin` time DEFAULT NULL,
  `statut` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombrePlaces` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `typeutil`
--

CREATE TABLE `typeutil` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `typeutil`
--

INSERT INTO `typeutil` (`id`, `libelle`) VALUES
(0, 'secretaire'),
(1, 'directeur'),
(2, 'benevole');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `loginU` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mdp` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adresse` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codePostal` int(11) DEFAULT NULL,
  `fonction` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_entreprise` int(11) NOT NULL,
  `id_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `loginU`, `mdp`, `nom`, `prenom`, `adresse`, `ville`, `codePostal`, `fonction`, `id_entreprise`, `id_type`) VALUES
(0, 'madame.giroux', '092112f603dae6153f5e0a82a3bcc3334e9f4bed6bc1f114a2d6949536b26a15', 'GIROUX', NULL, NULL, NULL, NULL, NULL, 1, 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `a_lieu`
--
ALTER TABLE `a_lieu`
  ADD PRIMARY KEY (`id`,`id_1`),
  ADD KEY `id_1` (`id_1`);

--
-- Index pour la table `dateform`
--
ALTER TABLE `dateform`
  ADD PRIMARY KEY (`dateForm`);

--
-- Index pour la table `domaineform`
--
ALTER TABLE `domaineform`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_1` (`id_1`);

--
-- Index pour la table `inscrit`
--
ALTER TABLE `inscrit`
  ADD PRIMARY KEY (`id`,`id_1`),
  ADD KEY `id_1` (`id_1`);

--
-- Index pour la table `intervenant`
--
ALTER TABLE `intervenant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `intervient`
--
ALTER TABLE `intervient`
  ADD PRIMARY KEY (`id`,`id_1`),
  ADD KEY `id_1` (`id_1`);

--
-- Index pour la table `quand`
--
ALTER TABLE `quand`
  ADD PRIMARY KEY (`id`,`DateForm`),
  ADD KEY `DateForm` (`DateForm`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `typeutil`
--
ALTER TABLE `typeutil`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_entreprise` (`id_entreprise`),
  ADD KEY `id_type` (`id_type`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `a_lieu`
--
ALTER TABLE `a_lieu`
  ADD CONSTRAINT `a_lieu_ibfk_1` FOREIGN KEY (`id`) REFERENCES `formation` (`id`),
  ADD CONSTRAINT `a_lieu_ibfk_2` FOREIGN KEY (`id_1`) REFERENCES `session` (`id`);

--
-- Contraintes pour la table `formation`
--
ALTER TABLE `formation`
  ADD CONSTRAINT `formation_ibfk_1` FOREIGN KEY (`id_1`) REFERENCES `domaineform` (`id`);

--
-- Contraintes pour la table `inscrit`
--
ALTER TABLE `inscrit`
  ADD CONSTRAINT `inscrit_ibfk_1` FOREIGN KEY (`id`) REFERENCES `utilisateur` (`id`),
  ADD CONSTRAINT `inscrit_ibfk_2` FOREIGN KEY (`id_1`) REFERENCES `session` (`id`);

--
-- Contraintes pour la table `intervient`
--
ALTER TABLE `intervient`
  ADD CONSTRAINT `intervient_ibfk_1` FOREIGN KEY (`id`) REFERENCES `formation` (`id`),
  ADD CONSTRAINT `intervient_ibfk_2` FOREIGN KEY (`id_1`) REFERENCES `intervenant` (`id`);

--
-- Contraintes pour la table `quand`
--
ALTER TABLE `quand`
  ADD CONSTRAINT `quand_ibfk_1` FOREIGN KEY (`id`) REFERENCES `session` (`id`),
  ADD CONSTRAINT `quand_ibfk_2` FOREIGN KEY (`DateForm`) REFERENCES `dateform` (`dateForm`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprise` (`id`),
  ADD CONSTRAINT `utilisateur_ibfk_2` FOREIGN KEY (`id_type`) REFERENCES `typeutil` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
