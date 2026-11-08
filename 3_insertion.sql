USE FormaPlus;

-- FORMATION : 12 lignes
INSERT INTO FORMATION
(code_formation, intitule, domaine, objectifs, niveau, prerequis, duree_heures)
VALUES
('F001', 'Initiation à Python', 'programmation', 'Découvrir les bases de Python', 'débutant', 'Aucun', 21),
('F002', 'Python avancé', 'programmation', 'Maîtriser la programmation avancée', 'avancé', 'Bases de Python', 28),
('F003', 'Développement Java', 'programmation', 'Développer des applications Java', 'intermédiaire', 'Bases de programmation', 35),
('F004', 'Développement Web', 'programmation', 'Créer des sites HTML CSS JavaScript', 'débutant', 'Aucun', 28),
('F005', 'Programmation en C', 'programmation', 'Maîtriser les pointeurs et structures', 'intermédiaire', 'Bases de programmation', 35),
('F006', 'SQL débutant', 'bases de données', 'Découvrir les requêtes SQL', 'débutant', 'Aucun', 21),
('F007', 'SQL avancé', 'bases de données', 'Maîtriser les requêtes complexes', 'avancé', 'Connaissances SQL', 28),
('F008', 'Modélisation MERISE', 'bases de données', 'Concevoir des modèles de données', 'intermédiaire', 'Bases de données', 21),
('F009', 'Administration MySQL', 'bases de données', 'Administrer une base MySQL', 'avancé', 'Connaissances SQL', 35),
('F010', 'Excel débutant', 'bureautique', 'Utiliser les fonctions essentielles Excel', 'débutant', 'Aucun', 14),
('F011', 'Excel avancé', 'bureautique', 'Créer des tableaux de bord', 'avancé', 'Bases Excel', 21),
('F012', 'Word et PowerPoint', 'bureautique', 'Produire des documents et présentations', 'débutant', 'Aucun', 14);

-- FORMATEUR : 10 lignes
-- Les responsables sont insérés avant leurs subordonnés.
INSERT INTO FORMATEUR
(numero_formateur, nom, prenom, email, specialite_principale, numero_formateur_responsable)
VALUES
(1, 'Martin', 'Lucas', 'lucas.martin@formaplus.example', 'Programmation', NULL),
(2, 'Bernard', 'Emma', 'emma.bernard@formaplus.example', 'Bases de données', NULL),
(3, 'Petit', 'Hugo', 'hugo.petit@formaplus.example', 'Bureautique', NULL);

INSERT INTO FORMATEUR
(numero_formateur, nom, prenom, email, specialite_principale, numero_formateur_responsable)
VALUES
(4, 'Robert', 'Lea', 'lea.robert@formaplus.example', 'Python', 1),
(5, 'Richard', 'Nathan', 'nathan.richard@formaplus.example', 'Java', 1),
(6, 'Durand', 'Chloe', 'chloe.durand@formaplus.example', 'SQL', 2),
(7, 'Dubois', 'Adam', 'adam.dubois@formaplus.example', 'MERISE', 2),
(8, 'Moreau', 'Ines', 'ines.moreau@formaplus.example', 'Excel', 3),
(9, 'Laurent', 'Noah', 'noah.laurent@formaplus.example', 'Développement Web', 1),
(10, 'Simon', 'Jade', 'jade.simon@formaplus.example', 'Administration système', 2);

-- SALLE : 8 lignes
INSERT INTO SALLE
(code_salle, nom, adresse, ville, capacite)
VALUES
('S001', 'Salle Python', '10 rue des Écoles', 'Bordeaux', 20),
('S002', 'Salle SQL', '12 rue des Écoles', 'Bordeaux', 18),
('S003', 'Salle Web', '14 rue des Écoles', 'Bordeaux', 25),
('S004', 'Salle Java', '16 rue des Écoles', 'Bordeaux', 16),
('S005', 'Salle Excel', '20 avenue Centrale', 'Mérignac', 22),
('S006', 'Salle Informatique', '22 avenue Centrale', 'Mérignac', 30),
('S007', 'Salle Formation', '5 rue du Campus', 'Pessac', 15),
('S008', 'Salle Multimédia', '7 rue du Campus', 'Pessac', 24);

-- APPRENANT : 50 lignes
INSERT INTO APPRENANT
(numero_apprenant, nom, prenom, email, telephone)
VALUES
(1, 'Lefebvre', 'Alice', 'alice.lefebvre@example.com', '0600000001'),
(2, 'Michel', 'Thomas', 'thomas.michel@example.com', '0600000002'),
(3, 'Garcia', 'Sarah', 'sarah.garcia@example.com', '0600000003'),
(4, 'Roux', 'Maxime', 'maxime.roux@example.com', '0600000004'),
(5, 'Fontaine', 'Julie', 'julie.fontaine@example.com', '0600000005'),
(6, 'Chevalier', 'Paul', 'paul.chevalier@example.com', '0600000006'),
(7, 'Francois', 'Manon', 'manon.francois@example.com', '0600000007'),
(8, 'Legrand', 'Arthur', 'arthur.legrand@example.com', '0600000008'),
(9, 'Gauthier', 'Camille', 'camille.gauthier@example.com', '0600000009'),
(10, 'Garnier', 'Louis', 'louis.garnier@example.com', '0600000010'),
(11, 'Faure', 'Eva', 'eva.faure@example.com', '0600000011'),
(12, 'Rousseau', 'Gabriel', 'gabriel.rousseau@example.com', '0600000012'),
(13, 'Vincent', 'Lina', 'lina.vincent@example.com', '0600000013'),
(14, 'Muller', 'Raphael', 'raphael.muller@example.com', '0600000014'),
(15, 'Lambert', 'Clara', 'clara.lambert@example.com', '0600000015'),
(16, 'Bonnet', 'Ethan', 'ethan.bonnet@example.com', '0600000016'),
(17, 'Girard', 'Louise', 'louise.girard@example.com', '0600000017'),
(18, 'Andre', 'Mathis', 'mathis.andre@example.com', '0600000018'),
(19, 'Mercier', 'Zoé', 'zoe.mercier@example.com', '0600000019'),
(20, 'Dupont', 'Alexandre', 'alexandre.dupont@example.com', '0600000020'),
(21, 'Bertrand', 'Nina', 'nina.bertrand@example.com', '0600000021'),
(22, 'Leroy', 'Victor', 'victor.leroy@example.com', '0600000022'),
(23, 'David', 'Anais', 'anais.david@example.com', '0600000023'),
(24, 'Morel', 'Baptiste', 'baptiste.morel@example.com', '0600000024'),
(25, 'Fournier', 'Elise', 'elise.fournier@example.com', '0600000025'),
(26, 'Girault', 'Antoine', 'antoine.girault@example.com', '0600000026'),
(27, 'Masson', 'Laura', 'laura.masson@example.com', '0600000027'),
(28, 'Marchand', 'Sacha', 'sacha.marchand@example.com', '0600000028'),
(29, 'Duval', 'Romane', 'romane.duval@example.com', '0600000029'),
(30, 'Denis', 'Enzo', 'enzo.denis@example.com', '0600000030'),
(31, 'Perrin', 'Margot', 'margot.perrin@example.com', '0600000031'),
(32, 'Blanc', 'Yanis', 'yanis.blanc@example.com', '0600000032'),
(33, 'Guerin', 'Lucie', 'lucie.guerin@example.com', '0600000033'),
(34, 'Meyer', 'Theo', 'theo.meyer@example.com', '0600000034'),
(35, 'Boyer', 'Jeanne', 'jeanne.boyer@example.com', '0600000035'),
(36, 'Brun', 'Hector', 'hector.brun@example.com', '0600000036'),
(37, 'Renaud', 'Mila', 'mila.renaud@example.com', '0600000037'),
(38, 'Colin', 'Oscar', 'oscar.colin@example.com', '0600000038'),
(39, 'Caron', 'Lola', 'lola.caron@example.com', '0600000039'),
(40, 'Picard', 'Axel', 'axel.picard@example.com', '0600000040'),
(41, 'Roger', 'Maelle', 'maelle.roger@example.com', '0600000041'),
(42, 'Fabre', 'Nolan', 'nolan.fabre@example.com', '0600000042'),
(43, 'Aubert', 'Celia', 'celia.aubert@example.com', '0600000043'),
(44, 'Lemoine', 'Ilyes', 'ilyes.lemoine@example.com', '0600000044'),
(45, 'Philippe', 'Ambre', 'ambre.philippe@example.com', '0600000045'),
(46, 'Meunier', 'Rayan', 'rayan.meunier@example.com', '0600000046'),
(47, 'Barbier', 'Pauline', 'pauline.barbier@example.com', '0600000047'),
(48, 'Arnaud', 'Kylian', 'kylian.arnaud@example.com', '0600000048'),
(49, 'Renard', 'Adele', 'adele.renard@example.com', '0600000049'),
(50, 'Leclerc', 'Eliott', 'eliott.leclerc@example.com', '0600000050');

-- SESSION : 24 lignes
-- Chaque session a des horaires distincts pour éviter les chevauchements.
INSERT INTO SESSION
(code_formation, numero_session, date_debut, heure_debut, date_fin, heure_fin, effectif_max, numero_formateur, code_salle)
VALUES
('F001', 1, '2026-11-16', '09:00:00', '2026-11-18', '17:00:00', 15, 4, 'S001'),
('F001', 2, '2027-01-11', '09:00:00', '2027-01-13', '17:00:00', 15, 4, 'S001'),
('F001', 3, '2027-03-08', '09:00:00', '2027-03-10', '17:00:00', 15, 4, 'S001'),
('F002', 1, '2026-11-23', '09:00:00', '2026-11-26', '17:00:00', 15, 1, 'S001'),
('F002', 2, '2027-02-01', '09:00:00', '2027-02-04', '17:00:00', 15, 1, 'S001'),
('F003', 1, '2026-12-07', '09:00:00', '2026-12-11', '17:00:00', 14, 5, 'S004'),
('F003', 2, '2027-02-15', '09:00:00', '2027-02-19', '17:00:00', 14, 5, 'S004'),
('F004', 1, '2026-11-16', '09:00:00', '2026-11-19', '17:00:00', 20, 9, 'S003'),
('F004', 2, '2027-01-18', '09:00:00', '2027-01-21', '17:00:00', 20, 9, 'S003'),
('F004', 3, '2027-04-05', '09:00:00', '2027-04-08', '17:00:00', 20, 9, 'S003'),
('F005', 1, '2026-12-14', '09:00:00', '2026-12-18', '17:00:00', 15, 1, 'S004'),
('F005', 2, '2027-03-15', '09:00:00', '2027-03-19', '17:00:00', 15, 1, 'S004'),
('F006', 1, '2026-11-23', '09:00:00', '2026-11-25', '17:00:00', 16, 6, 'S002'),
('F006', 2, '2027-01-25', '09:00:00', '2027-01-27', '17:00:00', 16, 6, 'S002'),
('F006', 3, '2027-04-12', '09:00:00', '2027-04-14', '17:00:00', 16, 6, 'S002'),
('F007', 1, '2026-12-07', '09:00:00', '2026-12-10', '17:00:00', 16, 2, 'S002'),
('F007', 2, '2027-03-01', '09:00:00', '2027-03-04', '17:00:00', 16, 2, 'S002'),
('F008', 1, '2026-12-14', '09:00:00', '2026-12-16', '17:00:00', 12, 7, 'S007'),
('F008', 2, '2027-03-22', '09:00:00', '2027-03-24', '17:00:00', 12, 7, 'S007'),
('F009', 1, '2027-02-08', '09:00:00', '2027-02-12', '17:00:00', 16, 2, 'S006'),
('F010', 1, '2026-11-30', '09:00:00', '2026-12-01', '17:00:00', 18, 8, 'S005'),
('F010', 2, '2027-02-22', '09:00:00', '2027-02-23', '17:00:00', 18, 8, 'S005'),
('F011', 1, '2027-01-04', '09:00:00', '2027-01-06', '17:00:00', 18, 3, 'S005'),
('F011', 2, '2027-04-19', '09:00:00', '2027-04-21', '17:00:00', 18, 3, 'S005');

-- INSCRIRE : 100 lignes
-- Les inscriptions sont réparties sur différentes sessions.
INSERT INTO INSCRIRE
(code_formation, numero_session, numero_apprenant, date_inscription, statut)
VALUES
('F001',1,1,'2026-11-01','confirmée'),
('F001',1,2,'2026-11-02','confirmée'),
('F001',1,3,'2026-11-03','en attente'),
('F001',1,4,'2026-11-04','confirmée'),
('F001',1,5,'2026-11-05','annulée'),
('F001',2,6,'2026-12-01','confirmée'),
('F001',2,7,'2026-12-02','confirmée'),
('F001',2,8,'2026-12-03','en attente'),
('F001',2,9,'2026-12-04','confirmée'),
('F001',2,10,'2026-12-05','annulée'),
('F001',3,11,'2027-02-01','confirmée'),
('F001',3,12,'2027-02-02','confirmée'),
('F001',3,13,'2027-02-03','en attente'),
('F001',3,14,'2027-02-04','confirmée'),
('F001',3,15,'2027-02-05','annulée'),
('F002',1,16,'2026-11-01','confirmée'),
('F002',1,17,'2026-11-02','confirmée'),
('F002',1,18,'2026-11-03','en attente'),
('F002',1,19,'2026-11-04','confirmée'),
('F002',1,20,'2026-11-05','annulée'),
('F002',2,21,'2027-01-01','confirmée'),
('F002',2,22,'2027-01-02','confirmée'),
('F002',2,23,'2027-01-03','en attente'),
('F002',2,24,'2027-01-04','confirmée'),
('F002',2,25,'2027-01-05','annulée'),
('F003',1,26,'2026-11-01','confirmée'),
('F003',1,27,'2026-11-02','confirmée'),
('F003',1,28,'2026-11-03','en attente'),
('F003',1,29,'2026-11-04','confirmée'),
('F003',1,30,'2026-11-05','annulée'),
('F003',2,31,'2027-01-01','confirmée'),
('F003',2,32,'2027-01-02','confirmée'),
('F003',2,33,'2027-01-03','en attente'),
('F003',2,34,'2027-01-04','confirmée'),
('F003',2,35,'2027-01-05','annulée'),
('F004',1,36,'2026-11-01','confirmée'),
('F004',1,37,'2026-11-02','confirmée'),
('F004',1,38,'2026-11-03','en attente'),
('F004',1,39,'2026-11-04','confirmée'),
('F004',1,40,'2026-11-05','annulée'),
('F004',2,41,'2027-01-01','confirmée'),
('F004',2,42,'2027-01-02','confirmée'),
('F004',2,43,'2027-01-03','en attente'),
('F004',2,44,'2027-01-04','confirmée'),
('F004',2,45,'2027-01-05','annulée'),
('F004',3,46,'2027-03-01','confirmée'),
('F004',3,47,'2027-03-02','confirmée'),
('F004',3,48,'2027-03-03','en attente'),
('F004',3,49,'2027-03-04','confirmée'),
('F004',3,50,'2027-03-05','annulée'),
('F005',1,1,'2026-11-01','confirmée'),
('F005',1,6,'2026-11-02','confirmée'),
('F005',1,11,'2026-11-03','en attente'),
('F005',1,16,'2026-11-04','confirmée'),
('F005',1,21,'2026-11-05','annulée'),
('F005',2,2,'2027-02-01','confirmée'),
('F005',2,7,'2027-02-02','confirmée'),
('F005',2,12,'2027-02-03','en attente'),
('F005',2,17,'2027-02-04','confirmée'),
('F005',2,22,'2027-02-05','annulée'),
('F006',1,3,'2026-11-01','confirmée'),
('F006',1,8,'2026-11-02','confirmée'),
('F006',1,13,'2026-11-03','en attente'),
('F006',1,18,'2026-11-04','confirmée'),
('F006',1,23,'2026-11-05','annulée'),
('F006',2,4,'2027-01-01','confirmée'),
('F006',2,9,'2027-01-02','confirmée'),
('F006',2,14,'2027-01-03','en attente'),
('F006',2,19,'2027-01-04','confirmée'),
('F006',2,24,'2027-01-05','annulée'),
('F006',3,5,'2027-03-01','confirmée'),
('F006',3,10,'2027-03-02','confirmée'),
('F006',3,15,'2027-03-03','en attente'),
('F006',3,20,'2027-03-04','confirmée'),
('F006',3,25,'2027-03-05','annulée'),
('F007',1,26,'2026-11-01','confirmée'),
('F007',1,31,'2026-11-02','confirmée'),
('F007',1,36,'2026-11-03','en attente'),
('F007',1,41,'2026-11-04','confirmée'),
('F007',1,46,'2026-11-05','annulée'),
('F007',2,27,'2027-02-01','confirmée'),
('F007',2,32,'2027-02-02','confirmée'),
('F007',2,37,'2027-02-03','en attente'),
('F007',2,42,'2027-02-04','confirmée'),
('F007',2,47,'2027-02-05','annulée'),
('F008',1,28,'2026-11-01','confirmée'),
('F008',1,33,'2026-11-02','confirmée'),
('F008',1,38,'2026-11-03','en attente'),
('F008',1,43,'2026-11-04','confirmée'),
('F008',1,48,'2026-11-05','annulée'),
('F008',2,29,'2027-02-01','confirmée'),
('F008',2,34,'2027-02-02','confirmée'),
('F008',2,39,'2027-02-03','en attente'),
('F008',2,44,'2027-02-04','confirmée'),
('F008',2,49,'2027-02-05','annulée'),
('F009', 1, 30, '2027-01-10', 'confirmée'),
('F009', 1, 35, '2027-01-11', 'confirmée'),
('F010', 1, 40, '2026-11-10', 'en attente'),
('F010', 1, 45, '2026-11-11', 'confirmée'),
('F011', 1, 50, '2026-12-10', 'annulée');


-- Vérification des nombres de lignes
SELECT COUNT(*) AS nb_formations FROM FORMATION;
SELECT COUNT(*) AS nb_formateurs FROM FORMATEUR;
SELECT COUNT(*) AS nb_salles FROM SALLE;
SELECT COUNT(*) AS nb_apprenants FROM APPRENANT;
SELECT COUNT(*) AS nb_sessions FROM SESSION;
SELECT COUNT(*) AS nb_inscriptions FROM INSCRIRE;
