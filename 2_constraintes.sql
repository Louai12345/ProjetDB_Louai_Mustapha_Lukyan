
USE FormaPlus;

ALTER TABLE FORMATION
ADD CONSTRAINT chk_formation_duree
CHECK (duree_heures > 0);

ALTER TABLE FORMATION
ADD CONSTRAINT chk_formation_niveau
CHECK (niveau IN ('débutant', 'intermédiaire', 'avancé'));

ALTER TABLE FORMATION
ADD CONSTRAINT chk_formation_domaine
CHECK (domaine IN ('programmation', 'bases de données', 'bureautique'));

ALTER TABLE FORMATION
ADD CONSTRAINT chk_formation_intitule
CHECK (TRIM(intitule) <> '');

ALTER TABLE FORMATION
ADD CONSTRAINT chk_formation_prerequis
CHECK (prerequis IS NULL OR TRIM(prerequis) <> '');



ALTER TABLE SESSION
ADD CONSTRAINT chk_session_effectif
CHECK (effectif_max > 0);

ALTER TABLE SESSION
ADD CONSTRAINT chk_session_dates
CHECK (
    TIMESTAMP(date_fin, heure_fin) >
    TIMESTAMP(date_debut, heure_debut)
);

ALTER TABLE SESSION
ADD CONSTRAINT chk_session_numero
CHECK (numero_session > 0);



ALTER TABLE SALLE
ADD CONSTRAINT chk_salle_capacite
CHECK (capacite > 0);

ALTER TABLE SALLE
ADD CONSTRAINT chk_salle_nom
CHECK (TRIM(nom) <> '');



ALTER TABLE FORMATEUR
ADD CONSTRAINT chk_formateur_email
CHECK (email LIKE '%_@_%._%');

ALTER TABLE FORMATEUR
ADD CONSTRAINT chk_formateur_nom
CHECK (TRIM(nom) <> '');

ALTER TABLE FORMATEUR
ADD CONSTRAINT chk_formateur_prenom
CHECK (TRIM(prenom) <> '');



ALTER TABLE INSCRIRE
ADD CONSTRAINT chk_inscrire_statut
CHECK (statut IN ('en attente', 'confirmée', 'annulée'));



ALTER TABLE APPRENANT
ADD CONSTRAINT chk_apprenant_email
CHECK (email LIKE '%_@_%._%');

ALTER TABLE APPRENANT
ADD CONSTRAINT chk_apprenant_nom
CHECK (TRIM(nom) <> '');

ALTER TABLE APPRENANT
ADD CONSTRAINT chk_apprenant_prenom
CHECK (TRIM(prenom) <> '');


-- Contraintes necessitant des triggers :
-- Interdire un formateur responsable de lui-meme et les cycles d'encadrement.
-- Interdire les chevauchements de sessions pour un formateur ou une salle.
-- Limiter les inscriptions confirmees a l'effectif maximal et a la capacite de la salle.
