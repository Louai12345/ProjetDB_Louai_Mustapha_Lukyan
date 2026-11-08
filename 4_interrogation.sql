USE FormaPlus;

SELECT code_formation, intitule, domaine, niveau, duree_heures
FROM FORMATION
WHERE niveau = 'débutant'
ORDER BY domaine, intitule;

SELECT DISTINCT ville
FROM SALLE
ORDER BY ville;

SELECT code_formation, intitule, niveau, duree_heures
FROM FORMATION
WHERE intitule LIKE '%SQL%'
ORDER BY intitule;

SELECT code_formation, intitule, domaine, niveau
FROM FORMATION
WHERE domaine IN ('programmation', 'bases de données')
ORDER BY domaine, intitule;

SELECT code_formation, numero_session, date_debut, heure_debut, date_fin, heure_fin
FROM SESSION
WHERE date_debut BETWEEN '2026-11-01' AND '2026-12-31'
ORDER BY date_debut, heure_debut, code_formation, numero_session;

SELECT code_formation, COUNT(*) AS nombre_sessions
FROM SESSION
GROUP BY code_formation
HAVING COUNT(*) >= 2
ORDER BY nombre_sessions DESC, code_formation;

SELECT ville, COUNT(*) AS nombre_salles, SUM(capacite) AS capacite_totale
FROM SALLE
GROUP BY ville
HAVING SUM(capacite) >= 40
ORDER BY capacite_totale DESC, ville;

SELECT domaine, ROUND(AVG(duree_heures), 2) AS duree_moyenne,
       MIN(duree_heures) AS duree_minimale, MAX(duree_heures) AS duree_maximale
FROM FORMATION
GROUP BY domaine
HAVING AVG(duree_heures) >= 21
ORDER BY duree_moyenne DESC, domaine;

SELECT code_formation, numero_session, COUNT(*) AS nombre_confirmes
FROM INSCRIRE
WHERE statut = 'confirmée'
GROUP BY code_formation, numero_session
HAVING COUNT(*) >= 3
ORDER BY nombre_confirmes DESC, code_formation, numero_session;

SELECT statut, COUNT(*) AS nombre_inscriptions
FROM INSCRIRE
GROUP BY statut
HAVING COUNT(*) >= 10
ORDER BY nombre_inscriptions DESC, statut;

SELECT f.code_formation, f.intitule, s.numero_session, s.date_debut
FROM FORMATION AS f
INNER JOIN SESSION AS s ON s.code_formation = f.code_formation
WHERE f.domaine = 'programmation'
  AND s.date_debut BETWEEN '2027-01-01' AND '2027-03-31'
ORDER BY f.code_formation, s.numero_session;

SELECT f.code_formation, f.intitule, s.numero_session, s.date_debut, s.date_fin
FROM FORMATION AS f
LEFT JOIN SESSION AS s ON s.code_formation = f.code_formation
ORDER BY f.code_formation, s.numero_session;

SELECT sa.code_salle, sa.nom AS nom_salle, sa.ville,
       s.code_formation, s.numero_session, s.date_debut, s.date_fin
FROM SESSION AS s
RIGHT JOIN SALLE AS sa ON sa.code_salle = s.code_salle
ORDER BY sa.code_salle, s.date_debut, s.code_formation, s.numero_session;

SELECT f.numero_formateur, f.nom, f.prenom,
       r.numero_formateur AS numero_responsable,
       r.nom AS nom_responsable, r.prenom AS prenom_responsable
FROM FORMATEUR AS f
LEFT JOIN FORMATEUR AS r
    ON r.numero_formateur = f.numero_formateur_responsable
ORDER BY f.numero_formateur;

SELECT a.numero_apprenant, a.nom, a.prenom, a.email,
       f.code_formation, f.intitule, s.numero_session,
       s.date_debut, s.heure_debut, sa.nom AS nom_salle, sa.ville
FROM APPRENANT AS a
INNER JOIN INSCRIRE AS i ON i.numero_apprenant = a.numero_apprenant
INNER JOIN SESSION AS s
    ON s.code_formation = i.code_formation
   AND s.numero_session = i.numero_session
INNER JOIN FORMATION AS f ON f.code_formation = s.code_formation
INNER JOIN SALLE AS sa ON sa.code_salle = s.code_salle
WHERE i.statut = 'confirmée'
ORDER BY s.date_debut, f.code_formation, s.numero_session, a.nom, a.prenom;

SELECT f.code_formation, f.intitule
FROM FORMATION AS f
WHERE f.code_formation IN (
    SELECT s.code_formation
    FROM SESSION AS s
    INNER JOIN SALLE AS sa ON sa.code_salle = s.code_salle
    WHERE sa.ville = 'Bordeaux'
)
ORDER BY f.code_formation;

SELECT f.code_formation, f.intitule
FROM FORMATION AS f
WHERE f.code_formation NOT IN (
    SELECT s.code_formation
    FROM SESSION AS s
)
ORDER BY f.code_formation;

SELECT a.numero_apprenant, a.nom, a.prenom, a.email
FROM APPRENANT AS a
WHERE EXISTS (
    SELECT 1
    FROM INSCRIRE AS i
    WHERE i.numero_apprenant = a.numero_apprenant
      AND i.statut = 'confirmée'
)
ORDER BY a.nom, a.prenom, a.numero_apprenant;

SELECT f.numero_formateur, f.nom, f.prenom, f.specialite_principale
FROM FORMATEUR AS f
WHERE NOT EXISTS (
    SELECT 1
    FROM SESSION AS s
    WHERE s.numero_formateur = f.numero_formateur
)
ORDER BY f.nom, f.prenom, f.numero_formateur;

SELECT f.code_formation, f.intitule, f.duree_heures
FROM FORMATION AS f
WHERE f.duree_heures > ANY (
    SELECT b.duree_heures
    FROM FORMATION AS b
    WHERE b.domaine = 'bureautique'
)
ORDER BY f.duree_heures DESC, f.code_formation;

SELECT f.code_formation, f.intitule, f.domaine, f.duree_heures
FROM FORMATION AS f
WHERE f.duree_heures >= ALL (
    SELECT f2.duree_heures
    FROM FORMATION AS f2
    WHERE f2.domaine = f.domaine
)
ORDER BY f.domaine, f.code_formation;

SELECT s.code_formation, s.numero_session, s.date_debut, s.effectif_max
FROM SESSION AS s
WHERE NOT EXISTS (
    SELECT 1
    FROM INSCRIRE AS i
    WHERE i.code_formation = s.code_formation
      AND i.numero_session = s.numero_session
      AND i.statut = 'confirmée'
)
ORDER BY s.date_debut, s.code_formation, s.numero_session;
