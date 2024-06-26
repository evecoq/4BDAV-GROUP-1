-- Insertion des données dans la relation CLI (Clients)
-- Insertion dans Oracle 21 ---
INSERT ALL
    INTO CLI (NumCli, NomCli, Pays, Tel, Ville, Dept, Nat) VALUES (1, 'Dupont', 'France', '0123456789', 'Paris', '75', 'FR')
    INTO CLI (NumCli, NomCli, Pays, Tel, Ville, Dept, Nat) VALUES (2, 'Smith', 'USA', '1234567890', 'New York', 'NY', 'US')
SELECT * FROM dual;


INSERT ALL
    INTO COM (NumCom, NumCli, FraisPort, DateCom, Payement) VALUES (101, 1, 10.50, TO_DATE('2024-05-13', 'YYYY-MM-DD'), 'Carte de crédit')
    INTO COM (NumCom, NumCli, FraisPort, DateCom, Payement) VALUES (102, 2, 8.20, TO_DATE('2024-05-12', 'YYYY-MM-DD'), 'PayPal')
SELECT * FROM dual;

-- Insertion des données dans la relation FOU (Fournisseurs)
INSERT ALL
    INTO FOU (NumFou, NomFou, Pays, Tel) VALUES (1, 'TechCorp', 'USA', '9876543210')
    INTO FOU (NumFou, NomFou, Pays, Tel) VALUES (2, 'ElectroWorld', 'Chine', '6543210987')
SELECT * FROM dual;


-- Insertion des données dans la relation PRO (Produits)
INSERT ALL
    INTO PRO (NumPro, NumFou, NomPro, TypePro, PrixUnit) VALUES (1, 1, 'Ordinateur portable', 'Electronique', 800)
    INTO PRO (NumPro, NumFou, NomPro, TypePro, PrixUnit) VALUES (2, 2, 'Smartphone', 'Electronique', 600)
    INTO PRO (NumPro, NumFou, NomPro, TypePro, PrixUnit) VALUES (3, 1, 'Imprimante', 'Electronique', 200)
SELECT * FROM dual;

-- Insertion des données dans la relation DET (Détails de Commande)
INSERT ALL
    INTO DET (NumCom, NumPro, Qte, Remise) VALUES (101, 1, 5, 0.10)
    INTO DET (NumCom, NumPro, Qte, Remise) VALUES (101, 2, 3, 0.05)
    INTO DET (NumCom, NumPro, Qte, Remise) VALUES (102, 3, 2, 0.00)
SELECT * FROM dual;
