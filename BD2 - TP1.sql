/*

BD2 - TP1 (12%)
Fichier de résolution SQL à compléter

Nom, Prénom (Étudiant 1) : Christophe Dussault
DA (Étudiant 1)          :2542485

Nom, Prénom (Étudiant 2) :Kwibe Robert
DA (Étudiant 2)          :2533485

*/

-- QUESTION 1
-- Lister tous les artistes et leur nombre d’albums associés, même ceux qui n’ont
-- pas d’album. Pour les artistes qui n’ont pas d’album remplacer NULL par 0.
-- - Le nom de l’artiste
-- - Le nombre d’albums (affiche 0 si NULL)
-- - Trie par nombre d’albums décroissant.



-- QUESTION 2
-- Afficher pour chaque client :
-- - Le nom complet
-- - La date de sa dernière commande (basée sur la date de la facture).
-- - Le prix total de sa dernière commande (basée sur la date de la facture).
-- - Trie le résultat par date puis par total.



-- QUESTION 3
-- Écrivez une requête SQL pour trouver les clients résidant aux États-Unis,
-- au Canada ou au Brésil, et dont le montant total cumulé de toutes les
-- factures dépasse 40 $.
-- - Le prénom du client (FirstName).
-- - Le nom de famille du client (LastName).
-- - Le pays du client (Country).
-- - Le montant total des achats (TotalSpent).
-- - Triez les résultats par le montant total des achats, en ordre décroissant.



-- QUESTION 4
-- Afficher pour chaque piste (Track) dont le titre commence par la lettre A,
-- commence par la lettre E ou se termine par un chiffre :
-- - le titre
-- - le nom de l’artiste
-- - le genre
-- - le nombre total de fois où cette piste a été vendue (InvoiceLine).
-- Trie par nombre de ventes décroissant.



-- QUESTION 5
-- 1) Créer une vue qui contient, pour chaque facture (Invoice) :
--    - le id de la facture
--    - le id du client
--    - le nom complet du client (en une colonne)
--    - le pays du client
--    - la date de la facture
--    - le montant total de la facture
--    À partir de cette vue, dans une autre requête, affiche le client le plus
--    dépensier par pays (en cas d’égalité afficher tous les clients qui ont
--    le plus dépensé). Utiliser la fonction RANK().



-- QUESTION 6
-- Afficher pour chaque client (Customer) :
-- - le nom complet
-- - le pays
-- - le nombre total de factures,
-- - le montant total dépensé,
-- - et une colonne calculée qui classe le client en trois catégories :
--   "Client" si le total < 40
--   "Client VIP" sinon
-- Trie le résultat par montant total décroissant.


-- QUESTION 7
-- 1) Créer une table Phone pour stocker les numéros de téléphone :
--    - PhoneId : clé primaire générée par défaut,
--    - CustomerId : clé étrangère vers Customer.CustomerId,
--    - Numero : Taille fixe, 10 derniers chiffres, sans les + - ou ()
--    - CodePays : 1, 2 ou 3 premiers chiffres restant
--    - TypePhone : valeur 'PHONE' ou 'FAX'
--    Faite attention de choisir les bons types de données et d’ajouter les
--    contraintes de données nécessaires.

CREATE TABLE Phone (
PhoneId,
CustomerId,
Numero,
CodePays,
TypePhone
);


-- 2) Créer un index composé sur les colonnes Numero et CodePays.




-- 3) Créer un index Bitmap sur la colonne CodePays.




-- 4) Transfert des données :
--    - Transfère tous les téléphones (Phone) de la table Customer dans Phone.
--    - Transfère ensuite tous les fax (Fax) de la table Customer dans Phone.

