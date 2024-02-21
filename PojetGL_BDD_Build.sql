CREATE TABLE `utilisateur` (
  `id_Utilisateur` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `prenom` VARCHAR(42),
  `nom` VARCHAR(42),
  `genre` VARCHAR(42),
  `type_utilisateur` ENUM ('Bachelor', 'E3e', 'Professeur'),
  `equipe` INT
);

CREATE TABLE `equipe` (
  `id_Equipe` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(42),
  `referent` INT
);

CREATE TABLE `attribue` (
  `role` INT NOT NULL,
  `utilisateur` INT NOT NULL,
  PRIMARY KEY (`role`, `utilisateur`)
);

CREATE TABLE `note_Anterieure` (
  `id_Note_Anterieure` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `matiere` ENUM ('PADL', 'PDLO'),
  `note` INT,
  `coeff` INT,
  `utilisateur` INT NOT NULL
);

CREATE TABLE `note_Eleve` (
  `id_Note_Eleve` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `note` INT,
  `message` VARCHAR(42),
  `eleve` INT NOT NULL,
  `evaluateur` INT NOT NULL,
  `sprint` INT NOT NULL
);

CREATE TABLE `note_Equipe` (
  `id_Note_Equipe` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `note` INT,
  `message` VARCHAR(42),
  `equipe` INT NOT NULL,
  `evaluateur` INT NOT NULL,
  `sprint` INT NOT NULL
);

CREATE TABLE `notification` (
  `id_Notification` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(42),
  `message` VARCHAR(42),
  `envoyeur` INT NOT NULL,
  `receveur` INT NOT NULL
);

CREATE TABLE `role` (
  `id_Role` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(42),
  `descripton` VARCHAR(42)
);

CREATE TABLE `sprint` (
  `id_Sprint` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `date_Debut` DATETIME NOT NULL,
  `date_Fin` DATETIME NOT NULL,
  `type_Fin` ENUM ('Oral', 'Livrable')
);

ALTER TABLE `utilisateur` ADD FOREIGN KEY (`equipe`) REFERENCES `equipe` (`id_Equipe`);

ALTER TABLE `equipe` ADD FOREIGN KEY (`referent`) REFERENCES `utilisateur` (`id_Utilisateur`);

ALTER TABLE `attribue` ADD FOREIGN KEY (`role`) REFERENCES `role` (`id_Role`);
ALTER TABLE `attribue` ADD FOREIGN KEY (`utilisateur`) REFERENCES `utilisateur` (`id_Utilisateur`);

ALTER TABLE `note_Anterieure` ADD FOREIGN KEY (`utilisateur`) REFERENCES `utilisateur` (`id_Utilisateur`);

ALTER TABLE `note_Eleve` ADD FOREIGN KEY (`eleve`) REFERENCES `utilisateur` (`id_Utilisateur`);
ALTER TABLE `note_Eleve` ADD FOREIGN KEY (`evaluateur`) REFERENCES `utilisateur` (`id_Utilisateur`);
ALTER TABLE `note_Eleve` ADD FOREIGN KEY (`sprint`) REFERENCES `sprint` (`id_Sprint`);

ALTER TABLE `note_Equipe` ADD FOREIGN KEY (`equipe`) REFERENCES `equipe` (`id_Equipe`);
ALTER TABLE `note_Equipe` ADD FOREIGN KEY (`evaluateur`) REFERENCES `utilisateur` (`id_Utilisateur`);
ALTER TABLE `note_Equipe` ADD FOREIGN KEY (`sprint`) REFERENCES `sprint` (`id_Sprint`);

ALTER TABLE `notification` ADD FOREIGN KEY (`envoyeur`) REFERENCES `utilisateur` (`id_Utilisateur`);
ALTER TABLE `notification` ADD FOREIGN KEY (`receveur`) REFERENCES `utilisateur` (`id_Utilisateur`);
