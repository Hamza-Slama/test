
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/12/2018 17:09:33
-- Generated from EDMX file: C:\Users\Hamza\Documents\Visual Studio 2015\Projects\CarsMVCManager\CarsMVCManager\Models\CrasModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [CarsDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'VoitureSet'
CREATE TABLE [dbo].[VoitureSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Matricule] nvarchar(max)  NOT NULL,
    [Marque] int  NOT NULL,
    [Couleur] nvarchar(max)  NOT NULL,
    [Carburant] int  NOT NULL,
    [DateMC] nvarchar(max)  NOT NULL,
    [Modele] int  NOT NULL,
    [ProprietaireId] int  NOT NULL
);
GO

-- Creating table 'ProprietaireSet'
CREATE TABLE [dbo].[ProprietaireSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nom] nvarchar(max)  NOT NULL,
    [NumPermis] nvarchar(max)  NOT NULL,
    [Contact_Adress] nvarchar(max)  NOT NULL,
    [Contact_Email] nvarchar(max)  NOT NULL,
    [Contact_Tel] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'VoitureSet'
ALTER TABLE [dbo].[VoitureSet]
ADD CONSTRAINT [PK_VoitureSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProprietaireSet'
ALTER TABLE [dbo].[ProprietaireSet]
ADD CONSTRAINT [PK_ProprietaireSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ProprietaireId] in table 'VoitureSet'
ALTER TABLE [dbo].[VoitureSet]
ADD CONSTRAINT [FK_VoitureProprietaire]
    FOREIGN KEY ([ProprietaireId])
    REFERENCES [dbo].[ProprietaireSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VoitureProprietaire'
CREATE INDEX [IX_FK_VoitureProprietaire]
ON [dbo].[VoitureSet]
    ([ProprietaireId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------