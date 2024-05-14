--Insert into FOU
INSERT INTO FOU (NumFou, NomFou, Pays, Tel)
VALUES (1, 'Fournisseur1', 'France', '0123456789');

INSERT INTO FOU (NumFou, NomFou, Pays, Tel)
VALUES (2, 'Fournisseur2', 'USA', '1234567890');

--Insert into PRO
INSERT INTO PRO (NumPro, NumFou, NomPro, TypePro, PrixUnit)
VALUES (1, 1, 'Produit1', 'Type1', 10.99);

INSERT INTO PRO (NumPro, NumFou, NomPro, TypePro, PrixUnit)
VALUES (2, 1, 'Produit2', 'Type2', 20.50);

--Insert into CLI
INSERT INTO CLI (NumCli, NomCli, Pays, Tel, Ville, Dept, Nat)
VALUES (1, 'Client1', 'France', '0123456789', 'Paris', 'IDF', 'National');

INSERT INTO CLI (NumCli, NomCli, Pays, Tel, Ville, Dept, Nat)
VALUES (2, 'Client2', 'USA', '1234567890', 'New York', 'NY', 'International');

--Insert into COM
INSERT INTO COM (NumCom, NumCli, FraisPort, DateCom, Payement)
VALUES (1, 1, 5.99, '2024-04-20', 'Credit Card');

INSERT INTO COM (NumCom, NumCli, FraisPort, DateCom, Payement)
VALUES (2, 2, 8.50, '2024-04-21', 'PayPal');

--Insert into DET
INSERT INTO DET (NumCom, NumPro, Qte, Remise)
VALUES (1, 1, 2, 0.5);

INSERT INTO DET (NumCom, NumPro, Qte, Remise)
VALUES (2, 2, 1, 0);


