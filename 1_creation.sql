CREATE DATABASE IF NOT EXISTS FormaPlus;
USE FormaPlus;

CREATE TABLE IF NOT EXISTS FORMATION (
    code_formation VARCHAR(10) PRIMARY KEY,
    intitule VARCHAR(100) NOT NULL,
    domaine VARCHAR(30) NOT NULL,
    objectifs VARCHAR(500),
    niveau VARCHAR(15) NOT NULL,
    prerequis VARCHAR(300),
    duree_heures SMALLINT UNSIGNED NOT NULL
);


CREATE TABLE IF NOT EXISTS FORMATEUR (
    numero_formateur INT UNSIGNED PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    email VARCHAR(254) NOT NULL,
    specialite_principale VARCHAR(100),
    numero_formateur_responsable INT UNSIGNED,

    CONSTRAINT fk_formateur_responsable
        FOREIGN KEY (numero_formateur_responsable)
        REFERENCES FORMATEUR(numero_formateur)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);



CREATE TABLE IF NOT EXISTS SALLE (
    code_salle VARCHAR(10) PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    adresse VARCHAR(150) NOT NULL,
    ville VARCHAR(100) NOT NULL,
    capacite SMALLINT UNSIGNED NOT NULL
);



CREATE TABLE IF NOT EXISTS APPRENANT (
    numero_apprenant INT UNSIGNED PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    email VARCHAR(254) NOT NULL,
    telephone VARCHAR(20)
);



CREATE TABLE IF NOT EXISTS SESSION (
    code_formation VARCHAR(10),
    numero_session SMALLINT UNSIGNED,
    date_debut DATE NOT NULL,
    heure_debut TIME NOT NULL,
    date_fin DATE NOT NULL,
    heure_fin TIME NOT NULL,
    effectif_max SMALLINT UNSIGNED NOT NULL,
    numero_formateur INT UNSIGNED NOT NULL,
    code_salle VARCHAR(10) NOT NULL,

    PRIMARY KEY (code_formation, numero_session),

    CONSTRAINT fk_session_formation
        FOREIGN KEY (code_formation)
        REFERENCES FORMATION(code_formation)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_session_formateur
        FOREIGN KEY (numero_formateur)
        REFERENCES FORMATEUR(numero_formateur)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    CONSTRAINT fk_session_salle
        FOREIGN KEY (code_salle)
        REFERENCES SALLE(code_salle)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);



CREATE TABLE IF NOT EXISTS INSCRIRE (
    code_formation VARCHAR(10),
    numero_session SMALLINT UNSIGNED,
    numero_apprenant INT UNSIGNED,
    date_inscription DATE NOT NULL,
    statut VARCHAR(10) NOT NULL,

    PRIMARY KEY (code_formation, numero_session, numero_apprenant),

    CONSTRAINT fk_inscrire_session
        FOREIGN KEY (code_formation, numero_session)
        REFERENCES SESSION(code_formation, numero_session)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_inscrire_apprenant
        FOREIGN KEY (numero_apprenant)
        REFERENCES APPRENANT(numero_apprenant)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


