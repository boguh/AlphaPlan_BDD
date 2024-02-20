-- Insertion de données dans la table utilisateur
INSERT INTO utilisateur (prenom, nom, genre, type_utilisateur, equipe) VALUES
('Jean', 'Dupont', 'Masculin', 'Bachelor', 1),
('Marie', 'Durand', 'Féminin', 'Bachelor', 2),
('Pierre', 'Martin', 'Masculin', 'E3e', 1),
('Sophie', 'Lefebvre', 'Féminin', 'E3e', 2),
('Jacques', 'Moreau', 'Masculin', 'Professeur', 1);
('Maurice', 'Pola', 'Masculin', 'Professeur', 2);

-- Insertion de données dans la table equipe
INSERT INTO equipe (nom, referent) VALUES
('Equipe A', 1),
('Equipe B', 2),

-- Insertion de données dans la table attribue
INSERT INTO attribue (role, utilisateur) VALUES
(1, 5),
(2, 6),
(3, 1),
(3, 2),
(3, 4);

-- Insertion de données dans la table note_Anterieure
INSERT INTO note_Anterieure (matiere, note, coeff, utilisateur) VALUES
('StageS7', 15, 2, 1),
('PDLO', 15, 2, 1),
('PDLO', 17, 3, 2),
('PADL', 14, 2, 3),
('PWND', 16, 3, 4),

-- Insertion de données dans la table note_Eleve
INSERT INTO note_Eleve (note, message, eleve, evaluateur, sprint) VALUES
(16, 'Très bon travail!', 2, 1, 1),
(12, 'Peut mieux faire.', 3, 1, 1),
(18, 'Excellent!', 1, 4, 2),
(15, 'Bien fait.', 4, 3, 2),
(14, 'A améliorer.', 3, 2, 1);

-- Insertion de données dans la table note_Equipe
INSERT INTO note_Equipe (note, message, equipe, evaluateur, sprint) VALUES
(15, 'Bon travail d''équipe.', 1, 5, 1),
(14, 'Des progrès à faire.', 2, 4, 1),
(17, 'Très bien coordonné.', 1, 5, 2),
(16, 'Améliorations nécessaires.', 2, 2, 2),
(18, 'Excellent travail collectif.', 1, 3, 1);

-- Insertion de données dans la table notification
INSERT INTO notification (type, message, envoyeur, receveur) VALUES
('ChangementEquipe', 'changer A par B', 2, 6),
('AjoutNote', '...', NULL, 2),
('Publication', 'Nouvelle  publicatiob', NULL, 3),
('Alerte', 'Rappel: réunion ce soir à 18h.', NULL, 2),

-- Insertion de données dans la table role
INSERT INTO role (nom, description) VALUES
('PL', 'Project Leader'),
('OL', 'Option Leader'),
('ScrumMaster', 'Gérant partie Scrum');

-- Insertion de données dans la table sprint
INSERT INTO sprint (date_Debut, date_Fin, type_Fin) VALUES
('2024-02-14 09:00:00', '2024-02-24 09:00:00', 'Oral'),
('2024-03-14 09:00:00', '2024-03-15 09:00:00', 'Oral');