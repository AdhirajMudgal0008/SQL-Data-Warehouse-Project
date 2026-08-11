/*
 ==================================================
 Create Database and Schemas
 ==================================================
 Script  Purpose:
                This Script Creates A New Database Named 'DataWarehouse' after checking if it already exists.
                If The Database Exists , It Is Dropped And Recreated. Additionally , The Script Set Up Three Schemas
                Within The DataBase : 'Bronze','Silver' And 'Gold'.

WARNING:
       Running this script will drop the entire 'DataWarehouse' Database If It Exists.
       All Data In The Database Will Be Permanently Deleted . Proceed With Caution
       And Ensure You Have Proper Backup Before Running This Script.

*/
   

--DROP AND RECREATE THE 'DATAWAREHOUSE' DATABASE
IF EXISTS( SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE DataWarehouse;
END;
GO

-- CREATE DATABASE  || DataWarehouse ||
USE master;
CREATE DATABASE DataWarehouse;
USE DataWarehouse;
 CREATE SCHEMA Bronze;
 GO
 CREATE SCHEMA Silver;
 GO
 CREATE SCHEMA Gold;
 GO
