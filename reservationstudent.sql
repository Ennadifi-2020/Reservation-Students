-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 08 avr. 2021 à 16:31
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `reservationstudent`
--

-- --------------------------------------------------------

--
-- Structure de la table `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `aspnetroles`
--

INSERT INTO `aspnetroles` (`Id`, `Name`, `NormalizedName`, `ConcurrencyStamp`) VALUES
('6a276846-7b9b-48a7-881a-588df16af76e', 'Admin', 'ADMIN', '6c55749d-be93-4bad-adb7-934ae8d92aca'),
('a595018f-3418-4e63-8bde-792adf49320c', 'student', 'STUDENT', 'ff666a61-bb96-403b-8d97-97e5f44c8ef0');

-- --------------------------------------------------------

--
-- Structure de la table `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(255) NOT NULL,
  `ProviderKey` varchar(255) NOT NULL,
  `ProviderDisplayName` longtext DEFAULT NULL,
  `UserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `aspnetuserroles`
--

INSERT INTO `aspnetuserroles` (`UserId`, `RoleId`) VALUES
('0de95331-7e7a-4fed-b1be-a1a0f751d2de', 'a595018f-3418-4e63-8bde-792adf49320c'),
('1705c87c-a461-4547-be4a-bba60d3bd0ae', 'a595018f-3418-4e63-8bde-792adf49320c'),
('2c8185c9-059a-48b9-9a9e-e8a8cd5ce5bc', 'a595018f-3418-4e63-8bde-792adf49320c'),
('fd847d8e-8f4e-412e-a203-c7292f51d6be', '6a276846-7b9b-48a7-881a-588df16af76e');

-- --------------------------------------------------------

--
-- Structure de la table `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(255) NOT NULL,
  `Discriminator` longtext NOT NULL,
  `FirstName` longtext DEFAULT NULL,
  `LastName` longtext DEFAULT NULL,
  `Count` int(11) DEFAULT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `Discriminator`, `FirstName`, `LastName`, `Count`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('0de95331-7e7a-4fed-b1be-a1a0f751d2de', 'Student', 'youssef', 'ELFAIZ', 0, 'youssef@gmail.com', 'YOUSSEF@GMAIL.COM', 'youssef@gmail.com', 'YOUSSEF@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEJxKF+2feHwML0y8rf+gLVuSHaU4eMPRH8m3OjvvPwKb7veN/8K1QxJxGYaMFNFxMg==', 'UYMFX2SXDPOPMQCGX4BN2COCWZWQHYJH', 'be7c7857-560d-421e-9091-d732ecca37e7', NULL, 0, 0, NULL, 1, 0),
('1705c87c-a461-4547-be4a-bba60d3bd0ae', 'Student', 'abdo', 'bela', 3, 'bellaouali@gmail.com', 'BELLAOUALI@GMAIL.COM', 'bellaouali@gmail.com', 'BELLAOUALI@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEAvOAAD/EwKV7zu9XlHYmrZ8FJEAvHjfKsDx/aHr4IC553MTNssuTCUsUIUiYEhV7w==', 'P7SGEFFBC7YEC743E55UHMQ7P5MPAQ6C', '795624da-20fa-488b-bcd8-3ba3c9b7637f', NULL, 0, 0, NULL, 1, 0),
('1ac970d7-a7dd-4ebe-98bc-1f4b5e4fd620', 'Student', 'federer', 'test', 8, 'nice_federer@gmail.com', 'NICE_FEDERER@GMAIL.COM', 'nice_federer@gmail.com', 'NICE_FEDERER@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEG/ZwzKPpwDBVvtYtKn0R6lMEm6i2E/v+wkJSC2pXxPcz7LEIxTD0Unhy7eq8EZ/nQ==', '4XMLOKT7RJO6JAXAY3MVHPSUBAWE2C2E', '6ceca63f-faf8-479f-9856-96b31c40cf5f', NULL, 0, 0, NULL, 1, 0),
('2acee13b-e456-4705-8889-8ed92d4bfdf8', 'Student', 'test', 'test1', 0, 'test@test.com', 'TEST@TEST.COM', 'test@test.com', 'TEST@TEST.COM', 0, 'AQAAAAEAACcQAAAAEFXzr7mXI9SKdakvNLWBnKf9L892eyVskODBHHU0GIQqOqlZ8p4iuBRT+P+/UMPF9g==', 'ELR6KNAONBDZABYOMA25LJ6NXPXHTVYZ', '2403a709-1c3c-4a89-b324-9206270197c4', NULL, 0, 0, NULL, 1, 0),
('2c8185c9-059a-48b9-9a9e-e8a8cd5ce5bc', 'Student', 'xxxxx', 'yyyyyy', 0, 'x@y.com', 'X@Y.COM', 'x@y.com', 'X@Y.COM', 0, 'AQAAAAEAACcQAAAAEH94TZ/tbf3PB67c+d3geucbuFXTMaq1Fal8frjwn83tMmRq6/j225l9o4QynVawJA==', '4BZRNWEJBRAWANWQ3GEXEMTITOFYWZOC', 'bb84580f-4fc9-4840-b0d0-6a6fe24c94af', NULL, 0, 0, NULL, 1, 0),
('51225929-1c9c-44a8-922a-14a0cd09e278', 'Student', 'wafaa', 'sbaiss', 1, 'wafaa@gmail.com', 'WAFAA@GMAIL.COM', 'wafaa@gmail.com', 'WAFAA@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEPVSMK3VKGr0/LsmsD1g2FyBtv8UygIykvDIWEgM/oZp4VI1Cn5CovzEjtNQt9ui7A==', 'SUHAFTTWGA5A55HJUVUYRSOTA7M3XWDU', 'c10e0f77-c45e-432d-9849-6d30cee25598', NULL, 0, 0, NULL, 1, 0),
('750fd948-74f5-441f-ad34-fe2333791b63', 'Student', 'othman', 'quarqach', 0, 'othman@gmail.com', 'OTHMAN@GMAIL.COM', 'othman@gmail.com', 'OTHMAN@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEJ6DnTbr3j85jC8AR784U1raRPa0tsMyZFOUQVJrRxjUHCmpc0EgmW5LxQ6XB9LzBg==', 'N4JKQJ25HQJMBXPASJFXCUEP3KJ2O6IE', '324a7f38-f38c-4546-8509-e556300f6bee', NULL, 0, 0, NULL, 1, 0),
('c760a735-8d6d-467a-b07d-f842677bca47', 'Student', 'ali', 'elfaiz', 5, 'ali212@hotmail.com', 'ALI212@HOTMAIL.COM', 'ali212@hotmail.com', 'ALI212@HOTMAIL.COM', 0, 'AQAAAAEAACcQAAAAENFVFmoOjsQwJ7z5geM1OPHMdXFoYpSA7w2OIcUcNY7Ecnrq3EE7w8myozSzTMeCAg==', 'CQDECVNBKID3Y6SNLZFWRLCYITHDLCAA', '69ceadb5-e783-4a4f-b7fa-e0722a900fdc', NULL, 0, 0, NULL, 1, 0),
('fd847d8e-8f4e-412e-a203-c7292f51d6be', 'Student', 'Ennadifi', 'ELFAIZ', 2, 'nadifi2020@gmail.com', 'NADIFI2020@GMAIL.COM', 'nadifi2020@gmail.com', 'NADIFI2020@GMAIL.COM', 0, 'AQAAAAEAACcQAAAAEHtVuo2fpoQWUFM/WzeVkgtbX6BhghYpa5AudUZkQmmGlFw9Dc7oCKSs3c8lIbvmlA==', 'Q72DYZFOJV32VEVJD2TRAJZPJQTXD73H', '720ab082-e047-41d8-86c7-3902c6b0ee5a', NULL, 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `Id` int(11) NOT NULL,
  `RequestingStudentId` varchar(255) DEFAULT NULL,
  `ReservationTypeId` int(11) NOT NULL,
  `Date` datetime(6) NOT NULL,
  `Status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`Id`, `RequestingStudentId`, `ReservationTypeId`, `Date`, `Status`) VALUES
(1, '1ac970d7-a7dd-4ebe-98bc-1f4b5e4fd620', 1, '2021-03-17 00:00:00.000000', 0),
(2, 'fd847d8e-8f4e-412e-a203-c7292f51d6be', 3, '2021-03-10 00:00:00.000000', 0),
(3, 'c760a735-8d6d-467a-b07d-f842677bca47', 2, '2021-03-31 00:00:00.000000', 1),
(4, 'c760a735-8d6d-467a-b07d-f842677bca47', 2, '2021-03-28 00:00:00.000000', 0),
(5, 'c760a735-8d6d-467a-b07d-f842677bca47', 3, '2021-03-30 00:00:00.000000', 1),
(6, '1705c87c-a461-4547-be4a-bba60d3bd0ae', 3, '2021-04-05 00:00:00.000000', 0),
(7, '51225929-1c9c-44a8-922a-14a0cd09e278', 1, '2021-04-04 00:00:00.000000', 0);

-- --------------------------------------------------------

--
-- Structure de la table `reservationtypes`
--

CREATE TABLE `reservationtypes` (
  `Id` int(11) NOT NULL,
  `Name` longtext DEFAULT NULL,
  `Number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reservationtypes`
--

INSERT INTO `reservationtypes` (`Id`, `Name`, `Number`) VALUES
(1, 'week-end', 50),
(2, 'test', 18),
(3, 'eventS', 30);

-- --------------------------------------------------------

--
-- Structure de la table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20210328175112_init', '5.0.4');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Index pour la table `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Index pour la table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Index pour la table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Index pour la table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Index pour la table `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Index pour la table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Reservations_RequestingStudentId` (`RequestingStudentId`),
  ADD KEY `IX_Reservations_ReservationTypeId` (`ReservationTypeId`);

--
-- Index pour la table `reservationtypes`
--
ALTER TABLE `reservationtypes`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `reservationtypes`
--
ALTER TABLE `reservationtypes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `FK_Reservations_AspNetUsers_RequestingStudentId` FOREIGN KEY (`RequestingStudentId`) REFERENCES `aspnetusers` (`Id`),
  ADD CONSTRAINT `FK_Reservations_ReservationTypes_ReservationTypeId` FOREIGN KEY (`ReservationTypeId`) REFERENCES `reservationtypes` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
