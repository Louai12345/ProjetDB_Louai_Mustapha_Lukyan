# Projet_Louaï-Mustapha-Lukyan

## 1. Présentation du projet

FormaPlus est un organisme fictif de formation professionnelle continue en informatique. Il propose aux adultes des formations courtes en programmation, bases de données et bureautique, organisées en présentiel.

Ce projet vise à concevoir sa base de données en suivant la méthode MERISE. Cette première partie porte sur l’analyse des besoins et la réalisation du modèle conceptuel de données (MCD).

Le périmètre comprend :
- le catalogue des formations ;
- les sessions de formation ;
- les formateurs et leur encadrement ;
- les apprenants et leurs inscriptions ;
- les salles de formation.

La paie, la comptabilité et le financement des formations sont exclus du périmètre.

## 2. Membres du groupe

- Louaï Arichi
- Mustapha Anouar
- Lukyan Robin

## 3. Référence utilisée

Site de référence : [Catalogue des formations Cegos](https://www.cegos.fr/formations).

Cegos sert de référence pour comprendre le secteur de la formation professionnelle. FormaPlus est un organisme fictif : les règles internes utilisées dans ce projet sont des hypothèses pédagogiques et ne décrivent pas le fonctionnement réel de Cegos.

## 4. Prompt final utilisé

Tu travailles dans le domaine de la formation professionnelle continue en informatique. Ton organisme de formation, nommé FormaPlus, a comme activité de proposer aux adultes des formations courtes en programmation, bases de données et bureautique, organisées en sessions en présentiel. C’est un organisme fictif inspiré d’un acteur réel comme Cegos. Les données collectées concernent le catalogue des formations, les sessions programmées, les formateurs et leur encadrement, les apprenants, leurs inscriptions et les salles de formation. Inspire-toi du site web suivant : https://www.cegos.fr/formations. Cette référence sert à comprendre le secteur d’activité ; les règles internes ci-dessous sont des hypothèses pédagogiques propres à FormaPlus et ne doivent pas être présentées comme les règles réelles de Cegos.

Pour délimiter le fonctionnement de FormaPlus : chaque session concerne une seule formation et porte un numéro unique uniquement à l’intérieur de cette formation ; le même numéro peut donc être réutilisé pour une autre formation. Une session ne peut pas exister sans la formation à laquelle elle se rattache. Chaque session est animée par un seul formateur et se déroule dans une seule salle ; un formateur et une salle peuvent être associés à plusieurs sessions à des dates différentes, sans chevauchement. Certains formateurs encadrent d’autres formateurs : un formateur a au plus un responsable, lui-même formateur, et peut encadrer plusieurs collègues. Aucun formateur ne peut se superviser lui-même, directement ou indirectement. Un apprenant peut s’inscrire à plusieurs sessions et une session peut accueillir plusieurs apprenants ; chaque inscription concerne un seul apprenant et une seule session et possède une date et un statut. Une même personne ne peut pas s’inscrire deux fois à la même session. Le nombre d’inscriptions confirmées ne doit dépasser ni l’effectif maximal de la session ni la capacité de la salle. Une session a une date et une heure de début et de fin, et sa fin est postérieure à son début. Limite le périmètre à ces activités, sans intégrer la paie, la comptabilité ou le financement des formations.

Ton organisme de formation veut appliquer MERISE pour concevoir un système d'information. Tu es chargé de la partie analyse, c’est-à-dire de collecter les besoins auprès de l’entreprise. Elle a fait appel à un étudiant en ingénierie informatique pour réaliser ce projet, tu dois lui fournir les informations nécessaires pour qu’il applique ensuite lui-même les étapes suivantes de conception et développement de la base de données.

D’abord, établis les règles de gestions des données de ton organisme de formation, sous la forme d'une liste à puce. Elle doit correspondre aux informations que fournit quelqu’un qui connaît le fonctionnement de l’entreprise, mais pas comment se construit un système d’information.

Ensuite, à partir de ces règles, fournis un dictionnaire de données brutes avec les colonnes suivantes, regroupées dans un tableau : signification de la donnée, type, taille en nombre de caractères ou de chiffres. Il doit y avoir entre 25 et 35 données. Il sert à fournir des informations supplémentaires sur chaque donnée (taille et type) mais sans a priori sur comment les données vont être modélisées ensuite.

Fournis donc les règles de gestion et le dictionnaire de données.

## 5. Règles de gestion obtenues

Les règles suivantes ont été générées avec ChatGPT à partir du prompt ci-dessus. Elles décrivent le fonctionnement fictif de FormaPlus.

### 5.1. Catalogue des formations

- **RG01** — FormaPlus propose des formations courtes en présentiel dans trois domaines : programmation, bases de données et bureautique.
- **RG02** — Chaque formation possède un code unique, un intitulé, un domaine, des objectifs pédagogiques, un niveau, des prérequis et une durée pédagogique exprimée en heures entières.
- **RG03** — Le niveau d’une formation est « débutant », « intermédiaire » ou « avancé ». Lorsqu’aucun prérequis n’est nécessaire, la mention « Aucun » est enregistrée.
- **RG04** — Une formation peut être inscrite au catalogue sans qu’une session soit encore programmée. Elle peut ensuite donner lieu à plusieurs sessions.

### 5.2. Sessions de formation

- **RG05** — Chaque session concerne une seule formation et ne peut pas exister sans celle-ci.
- **RG06** — Chaque session porte un numéro unique à l’intérieur de sa formation. Deux formations différentes peuvent donc avoir chacune une session numéro 1. Pour désigner une session sans ambiguïté, on utilise le code de sa formation et son numéro.
- **RG07** — Une session possède une date et une heure de début, une date et une heure de fin ainsi qu’un effectif maximal strictement positif. Sa fin doit être postérieure à son début.

### 5.3. Formateurs et encadrement

- **RG08** — Chaque session est animée par un seul formateur. Un formateur peut n’animer aucune session ou en animer plusieurs, à condition que leurs horaires ne se chevauchent pas.
- **RG09** — Chaque formateur possède un numéro interne unique, un nom, un prénom, une adresse électronique et une spécialité principale.
- **RG10** — Un formateur peut avoir au maximum un responsable, qui est lui-même un formateur de FormaPlus. Un formateur peut encadrer plusieurs collègues ou n’en encadrer aucun.
- **RG11** — Un formateur ne peut pas être son propre responsable. Les boucles d’encadrement sont également interdites : si un formateur encadre un collègue, ce dernier ne peut pas devenir son supérieur, directement ou par une chaîne de responsables.

### 5.4. Salles de formation

- **RG12** — Chaque session se déroule dans une seule salle. Une salle peut accueillir plusieurs sessions, à condition que leurs horaires ne se chevauchent pas. Elle peut aussi n’accueillir aucune session.
- **RG13** — Chaque salle possède un code unique, un nom, une adresse, une ville et une capacité d’accueil strictement positive.

### 5.5. Apprenants et inscriptions

- **RG14** — Chaque apprenant possède un numéro interne unique, un nom, un prénom, une adresse électronique et un numéro de téléphone.
- **RG15** — Un apprenant peut être enregistré avant toute inscription. Il peut ensuite s’inscrire à plusieurs sessions. Une session peut recevoir plusieurs inscriptions ou n’en avoir aucune.
- **RG16** — Chaque inscription concerne un seul apprenant et une seule session. Un même apprenant ne peut avoir qu’une inscription à une session donnée.
- **RG17** — Chaque inscription possède une date et un statut : « en attente », « confirmée » ou « annulée ». En cas d’annulation, l’inscription est conservée et son statut est modifié.
- **RG18** — Pour chaque session, le nombre d’inscriptions confirmées ne doit dépasser ni l’effectif maximal prévu ni la capacité de la salle. Les inscriptions en attente et annulées ne sont pas comptées dans cet effectif.

### 5.6. Limites du périmètre

- **RG19** — La gestion de la paie, de la comptabilité et du financement des formations est exclue du périmètre.

## 6. Dictionnaire des données brutes obtenu

Le dictionnaire généré contient **30 données**.

Les tailles correspondent à des longueurs maximales, sauf pour les dates et les heures dont le format est fixe. Les numéros de téléphone sont du texte afin de conserver les zéros initiaux et le signe `+`.

Les dates et heures sont présentées sous un format lisible ; leur stockage technique sera défini ultérieurement.

| Signification de la donnée | Type | Taille en nombre de caractères ou de chiffres |
|---|---|---|
| Code unique d’une formation | Alphanumérique | 10 caractères maximum |
| Intitulé d’une formation | Texte | 100 caractères maximum |
| Domaine d’une formation | Texte | 30 caractères maximum |
| Objectifs pédagogiques d’une formation | Texte | 500 caractères maximum |
| Niveau d’une formation | Texte | 15 caractères maximum |
| Prérequis d’une formation | Texte | 300 caractères maximum |
| Durée pédagogique d’une formation, en heures | Entier positif | 3 chiffres maximum |
| Numéro d’une session au sein de sa formation | Entier positif | 4 chiffres maximum |
| Date de début d’une session | Date | 10 caractères au format `AAAA-MM-JJ` |
| Heure de début d’une session | Heure | 5 caractères au format `HH:MM` |
| Date de fin d’une session | Date | 10 caractères au format `AAAA-MM-JJ` |
| Heure de fin d’une session | Heure | 5 caractères au format `HH:MM` |
| Effectif maximal d’une session | Entier positif | 3 chiffres maximum |
| Numéro interne unique d’un formateur | Entier positif | 6 chiffres maximum |
| Nom d’un formateur | Texte | 50 caractères maximum |
| Prénom d’un formateur | Texte | 50 caractères maximum |
| Adresse électronique d’un formateur | Texte | 254 caractères maximum |
| Spécialité principale d’un formateur | Texte | 100 caractères maximum |
| Numéro interne unique d’un apprenant | Entier positif | 8 chiffres maximum |
| Nom d’un apprenant | Texte | 50 caractères maximum |
| Prénom d’un apprenant | Texte | 50 caractères maximum |
| Adresse électronique d’un apprenant | Texte | 254 caractères maximum |
| Numéro de téléphone d’un apprenant | Texte | 20 caractères maximum |
| Code unique d’une salle | Alphanumérique | 10 caractères maximum |
| Nom d’une salle | Texte | 50 caractères maximum |
| Adresse d’une salle, hors ville | Texte | 150 caractères maximum |
| Ville dans laquelle se situe une salle | Texte | 100 caractères maximum |
| Capacité d’accueil d’une salle, en personnes | Entier positif | 3 chiffres maximum |
| Date d’une inscription | Date | 10 caractères au format `AAAA-MM-JJ` |
| Statut d’une inscription | Texte | 10 caractères maximum |

## 7. Modèle conceptuel de données


![MCD de FormaPlus](mcd.png)

[Fichier source modifiable](MCD_FormaPlus.drawio)
Le MCD a été réalisé avec diagrams.net (draw.io), en raison de difficultés d’utilisation de Looping sous Mac . Le schéma et son fichier source modifiable sont disponibles dans ce dépôt .

## 8. Cinquième étape : interrogation de la base de données

### 8.1. Scénario d’utilisation

Le responsable pédagogique de FormaPlus prépare les sessions de novembre 2026 à avril 2027. Il utilise la base pour consulter le catalogue, organiser les salles et les formateurs, suivre les inscriptions et préparer les convocations des apprenants.

Il doit identifier les formations proposées, les sessions programmées et les ressources disponibles. Il doit également mesurer l’activité par formation et par statut d’inscription, repérer les formations sans session, les formateurs sans affectation et les sessions sans inscription confirmée.

Les informations recherchées respectent le périmètre de FormaPlus : catalogue, sessions, salles, encadrement et inscriptions. Les statistiques portent sur le jeu de données enregistré ; les recherches de planning peuvent cibler une période particulière.

### 8.2. Données à extraire et requêtes

Le fichier [4_interrogation.sql](4_interrogation.sql) contient 22 requêtes, dans l’ordre du tableau suivant. Les numéros correspondent aux instructions `SELECT` principales ; l’instruction `USE FormaPlus` n’est pas comptée.

#### Projections et sélections

| Requête | Données recherchées | Opérateurs utilisés |
|---|---|---|
| Q1 | Codes, intitulés, domaines, niveaux et durées des formations pour débutants, triés par domaine et intitulé. | `SELECT`, `WHERE`, `ORDER BY` |
| Q2 | Villes disposant de salles, sans doublon et par ordre alphabétique. | `DISTINCT`, `ORDER BY` |
| Q3 | Codes, intitulés, niveaux et durées des formations dont l’intitulé contient « SQL ». | `LIKE '%SQL%'`, `ORDER BY` |
| Q4 | Codes, intitulés, domaines et niveaux des formations de programmation ou de bases de données. | `IN`, `ORDER BY` |
| Q5 | Sessions dont la date de début est comprise entre le 1er novembre et le 31 décembre 2026, avec leurs dates et horaires, triées chronologiquement. | `BETWEEN`, `ORDER BY` |

#### Fonctions d’agrégation

| Requête | Données recherchées | Opérateurs utilisés |
|---|---|---|
| Q6 | Nombre de sessions par formation, uniquement pour les formations ayant au moins deux sessions. | `COUNT`, `GROUP BY`, `HAVING` |
| Q7 | Nombre de salles et capacité totale par ville, uniquement pour les villes offrant au moins 40 places. | `COUNT`, `SUM`, `GROUP BY`, `HAVING` |
| Q8 | Durées moyenne, minimale et maximale des formations par domaine, pour les domaines dont la moyenne atteint au moins 21 heures. | `AVG`, `MIN`, `MAX`, `ROUND`, `GROUP BY`, `HAVING` |
| Q9 | Nombre d’inscriptions confirmées par session, uniquement pour les sessions ayant au moins trois confirmations. | `WHERE`, `COUNT`, `GROUP BY`, `HAVING` |
| Q10 | Nombre d’inscriptions par statut, uniquement pour les statuts représentés par au moins dix inscriptions. | `COUNT`, `GROUP BY`, `HAVING` |

#### Jointures

| Requête | Données recherchées | Opérateurs utilisés |
|---|---|---|
| Q11 | Codes et intitulés des formations de programmation, numéros et dates de début de leurs sessions démarrant au premier trimestre 2027. | Jointure interne, sélection, projection |
| Q12 | Catalogue complet avec les sessions associées, y compris les formations sans session. | `LEFT JOIN` |
| Q13 | Toutes les salles avec les sessions associées, y compris les salles sans session. | `RIGHT JOIN` |
| Q14 | Identités des formateurs et de leur responsable direct, en conservant les formateurs sans responsable. | Autojointure externe gauche |
| Q15 | Identités et courriels des apprenants confirmés, avec la formation, la session, la date, l’heure et la salle, pour préparer leurs convocations. | Jointures internes multiples entre cinq tables |

#### Requêtes imbriquées

| Requête | Données recherchées | Opérateurs utilisés |
|---|---|---|
| Q16 | Formations ayant au moins une session dans une salle située à Bordeaux. | Sous-requête avec `IN` |
| Q17 | Formations du catalogue n’ayant aucune session programmée. | Sous-requête avec `NOT IN` |
| Q18 | Identités et courriels des apprenants ayant au moins une inscription confirmée. | Sous-requête corrélée avec `EXISTS` |
| Q19 | Formateurs sans session affectée, avec leur spécialité. | Sous-requête corrélée avec `NOT EXISTS` |
| Q20 | Formations dont la durée dépasse celle d’au moins une formation de bureautique, afin de repérer les formats plus longs qu’une partie de cette offre. | Sous-requête avec `> ANY` |
| Q21 | Formations les plus longues dans chaque domaine, en conservant les ex æquo. | Sous-requête corrélée avec `>= ALL` |
| Q22 | Sessions sans inscription confirmée, avec leur date et leur effectif maximal, pour préparer une relance. | Sous-requête corrélée avec `NOT EXISTS` |

Une session est identifiée par le couple `(code_formation, numero_session)`. Les jointures et sous-requêtes qui relient une inscription à une session utilisent les deux colonnes. Pour les effectifs confirmés et les convocations, seules les inscriptions de statut `confirmée` sont retenues.

### 8.3. Étude des plans d’exécution de Q11

#### Objectif et données utilisées

Le responsable pédagogique souhaite obtenir les sessions de programmation qui démarrent entre le 1er janvier et le 31 mars 2027. Le résultat contient le code et l’intitulé de la formation, ainsi que le numéro et la date de début de la session.

La requête Q11 utilise trois opérateurs différents de l’algèbre relationnelle : la sélection $\sigma$, la projection $\pi$ et la jointure $\bowtie$.

Les cardinalités sont calculées sur les données du fichier `3.insertions.sql` :

| Relation ou résultat intermédiaire | Nombre de lignes |
|---|---:|
| `FORMATION` | 12 |
| `SESSION` | 24 |
| Formations du domaine `programmation` | 5 |
| Sessions démarrant entre le 1er janvier et le 31 mars 2027, tous domaines confondus | 12 |
| Jointure de toutes les formations avec toutes leurs sessions | 24 |
| Sessions de programmation démarrant au premier trimestre 2027 | 6 |

On note :

- $F$ : la relation `FORMATION` ;
- $S$ : la relation `SESSION` ;
- $P_F$ : la condition `F.domaine = 'programmation'` ;
- $P_S$ : la condition `S.date_debut BETWEEN '2027-01-01' AND '2027-03-31'` ;
- $J$ : la condition `F.code_formation = S.code_formation` ;
- $L$ : les colonnes `F.code_formation`, `F.intitule`, `S.numero_session`, `S.date_debut` ;
- $L_F$ : les colonnes `F.code_formation`, `F.intitule` ;
- $L_S$ : les colonnes `S.code_formation`, `S.numero_session`, `S.date_debut`.

Le résultat final est le suivant :

| Code formation | Intitulé | Numéro de session | Date de début |
|---|---|---:|---|
| F001 | Initiation à Python | 2 | 2027-01-11 |
| F001 | Initiation à Python | 3 | 2027-03-08 |
| F002 | Python avancé | 2 | 2027-02-01 |
| F003 | Développement Java | 2 | 2027-02-15 |
| F004 | Développement Web | 2 | 2027-01-18 |
| F005 | Programmation en C | 2 | 2027-03-15 |

#### Méthode de calcul

Le calcul applique le modèle de l’exercice 6 du TD3 :

- Une jointure entre deux relations de $n_1$ et $n_2$ lignes nécessite $n_1 \times n_2$ instructions.
- Une sélection ou une projection sur une relation de $n$ lignes nécessite $n$ instructions.
- Les feuilles représentent les tables sources ; elles ne constituent pas des opérateurs supplémentaires à compter.

Le tri final `ORDER BY` sert à présenter les résultats ; son coût n’entre pas dans ce modèle d’algèbre relationnelle. Les coûts ci-dessous sont donc les coûts théoriques des opérateurs étudiés en TD.

#### Plan A : jointure avant les sélections

La jointure est effectuée sur toutes les lignes, puis une sélection conserve les lignes qui respectent les deux conditions. La projection extrait ensuite les colonnes demandées.

$$
R_A = \pi_L\left(\sigma_{P_F \land P_S}\left(F \bowtie_J S\right)\right)
$$

```mermaid
flowchart TD
    A["π L : 6 lignes"]
    B["σ PF et PS : 6 lignes"]
    C["⋈ J : 24 lignes"]
    D["FORMATION : 12 lignes"]
    E["SESSION : 24 lignes"]
    A --> B
    B --> C
    C --> D
    C --> E
```

L’arbre se lit des feuilles vers la racine. Les notations `PF`, `PS` et `J` correspondent aux conditions définies ci-dessus.

| Étape | Opérateur | Lignes en entrée | Lignes en sortie | Instructions |
|---|---|---:|---:|---:|
| 1 | Jointure sur le code de formation | 12 et 24 | 24 | $12 \times 24 = 288$ |
| 2 | Sélection sur le domaine et la période | 24 | 6 | 24 |
| 3 | Projection sur les colonnes $L$ | 6 | 6 | 6 |
| **Total** | | | **6** | **318** |

La jointure produit 24 lignes, car chaque session référence exactement une formation existante. La sélection conserve six sessions. La projection garde le code de formation et le numéro de session : les six lignes restent distinctes.

#### Plan B : sélections et projections avant la jointure

Les deux relations sont filtrées séparément. On conserve ensuite uniquement les colonnes utiles au résultat ou à la jointure. La jointure porte ainsi sur cinq formations et douze sessions.

$$
R_B = \pi_L\left(
\pi_{L_F}\left(\sigma_{P_F}(F)\right)
\bowtie_J
\pi_{L_S}\left(\sigma_{P_S}(S)\right)
\right)
$$

```mermaid
flowchart TD
    A["π L : 6 lignes"]
    B["⋈ J : 6 lignes"]
    C["π LF : 5 lignes"]
    D["π LS : 12 lignes"]
    E["σ PF : 5 lignes"]
    F["σ PS : 12 lignes"]
    G["FORMATION : 12 lignes"]
    H["SESSION : 24 lignes"]
    A --> B
    B --> C
    B --> D
    C --> E
    D --> F
    E --> G
    F --> H
```

| Étape | Opérateur | Lignes en entrée | Lignes en sortie | Instructions |
|---|---|---:|---:|---:|
| 1 | Sélection des formations de programmation | 12 | 5 | 12 |
| 2 | Projection sur $L_F$ | 5 | 5 | 5 |
| 3 | Sélection des sessions du premier trimestre 2027 | 24 | 12 | 24 |
| 4 | Projection sur $L_S$ | 12 | 12 | 12 |
| 5 | Jointure sur le code de formation | 5 et 12 | 6 | $5 \times 12 = 60$ |
| 6 | Projection finale sur $L$ | 6 | 6 | 6 |
| **Total** | | | **6** | **119** |

Les projections intermédiaires conservent les identifiants : `code_formation` pour les formations et le couple `(code_formation, numero_session)` pour les sessions. Elles ne fusionnent donc aucune ligne et préservent les colonnes nécessaires à la jointure.

#### Comparaison et choix du plan

| Plan | Coût de la jointure | Coût total | Résultat |
|---|---:|---:|---:|
| A : jointure puis sélection | 288 | 318 | 6 lignes |
| B : sélections et projections anticipées | 60 | 119 | 6 lignes |

Le plan B économise $318 - 119 = 199$ instructions, soit environ $62{,}58\,\%$ du coût total du plan A. Dans le modèle du TD3, son coût est environ $2{,}67$ fois plus faible.

Les deux plans sont équivalents : chaque condition de sélection porte sur une seule relation et peut être appliquée avant la jointure interne. Les projections anticipées conservent les clés de jointure et toutes les colonnes du résultat. Le plan B est donc le plan retenu parmi les deux : il réduit fortement les entrées de la jointure et la largeur des relations intermédiaires.
