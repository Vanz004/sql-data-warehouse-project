/*
==========================================
Creating Databse and schemas
===========================================

SCRIPT PURPOSE:
this script creates a new databse names 'Datawarehouse' after checking if it already exists.
If the databse exists ,it si dropped and recreated .Additionally the script sets up three schemas within 
the databse : bronze  ,silver ,gold
*/
--CREATING DATABSE DATAWAREHOUSE
USE master;
GO

--DROP AND RECREATE THE 'DataWarehouse' database
IF EXISTS(SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

--create database 
CREATE DATABASE DataWarehouse;
GO 

USE DataWarehouse;
GO
--create schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO



