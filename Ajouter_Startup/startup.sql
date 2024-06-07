-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 07 juin 2024 à 13:30
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `startup`
--

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `valeur` varchar(255) DEFAULT NULL,
  `startup_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `startup_id` (`startup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fondateurs`
--

DROP TABLE IF EXISTS `fondateurs`;
CREATE TABLE IF NOT EXISTS `fondateurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `startup_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `startup_id` (`startup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `secteurs`
--

DROP TABLE IF EXISTS `secteurs`;
CREATE TABLE IF NOT EXISTS `secteurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `startups`
--

DROP TABLE IF EXISTS `startups`;
CREATE TABLE IF NOT EXISTS `startups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `description` text,
  `activite` varchar(255) DEFAULT NULL,
  `chiffre_affaires` varchar(255) DEFAULT NULL,
  `effectif` varchar(255) DEFAULT NULL,
  `creation` year DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `secteur_principal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `startups`
--

INSERT INTO `startups` (`id`, `nom`, `description`, `activite`, `chiffre_affaires`, `effectif`, `creation`, `etat`, `ville`, `secteur_principal`) VALUES
(1, 'KONTA', 'KONTA est la plateforme de gestion bout-en-bout des dépenses fournisseurs. Que vous ayez quelques dizaines ou plusieurs milliers de factures par mois et quelles que soient vos procédures de validation, KONTA vous permet d’optimiser de manière radicale votre activité. Grâce à KONTA, vous simplifiez le quotidien de vos collaborateurs, construisez des relations durables avec vos fournisseurs et maîtrisez de bout-en-bout l’ensemble de vos dépenses achats. La plateforme a pour ambition d’apporter des solutions concrètes aux problématiques des Directeurs Financiers et de leurs équipes. À travers la maîtrise des dépenses fournisseurs de bout-en-bout, Start-Up permet de répondre à de multiples enjeux : productivité et performance, conformité et maîtrise des risques de fraudes, visibilité et gestion des délais de paiement.', 'Gestion des dépenses', '1 à 5 Millions MAD', 'Moins de 10 Personnes', '2019', 'En activité', 'Casablanca', 'FinTech – AssurTech');

-- --------------------------------------------------------

--
-- Structure de la table `startups_secteurs`
--

DROP TABLE IF EXISTS `startups_secteurs`;
CREATE TABLE IF NOT EXISTS `startups_secteurs` (
  `startup_id` int NOT NULL,
  `secteur_id` int NOT NULL,
  PRIMARY KEY (`startup_id`,`secteur_id`),
  KEY `secteur_id` (`secteur_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
