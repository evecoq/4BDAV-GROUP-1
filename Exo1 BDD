-- Création de la table CLI
CREATE TABLE CLI (
    NumCli INT PRIMARY KEY,
    NomCli VARCHAR(255),
    Pays VARCHAR(255),
    Tel VARCHAR(20),
    Ville VARCHAR(255),
    Dept VARCHAR(255),
    Nat VARCHAR(255)
);

-- Création de la table COM
CREATE TABLE COM (
    NumCom INT PRIMARY KEY,
    NumCli INT,
    FraisPort NUMERIC(10, 2),
    DateCom DATE,
    Payement VARCHAR(50),
    FOREIGN KEY (NumCli) REFERENCES CLI(NumCli)
);

-- Création de la table DET
CREATE TABLE DET (
    NumCom INT,
    NumPro INT,
    Qte INT,
    Remise NUMERIC(5, 2),
    FOREIGN KEY (NumCom) REFERENCES COM(NumCom),
    FOREIGN KEY (NumPro) REFERENCES PRO(NumPro),
    PRIMARY KEY (NumCom, NumPro)
);

-- Création de la table PRO
CREATE TABLE PRO (
    NumPro INT PRIMARY KEY,
    NumFou INT,
    NomPro VARCHAR(255),
    TypePro VARCHAR(255),
    PrixUnit NUMERIC(10, 2),
    FOREIGN KEY (NumFou) REFERENCES FOU(NumFou)
);

-- Création de la table FOU
CREATE TABLE FOU (
    NumFou INT PRIMARY KEY,
    NomFou VARCHAR(255),
    Pays VARCHAR(255),
    Tel VARCHAR(20)
);
