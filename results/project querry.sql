USE [DSTraining]
GO
/****** Object:  StoredProcedure [dbo].[BLD_WRK_vehicleService]    Script Date: 22-08-2023 13:48:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[BLD_WRK_vehicleService]
-- =============================================
-- Author:		NISHCHAY GANDHI
-- Create date: xxxxx
-- Description:	vehicle serice
-- =============================================



AS
BEGIN
	
	--==============================
	-- DROP TABLE
	--==============================
	
	IF OBJECT_ID('WRK_vehicleService') IS NOT NULL
	DROP TABLE [WRK_vehicleService]
	 
	---=============================
	--CREATE TABLE BLOCK
	--==============================
	CREATE TABLE [WRK_vehicleService]
	(
	


	   [RowNumber]      INT IDENTITY (1,1)
	  ,[CustomerID]      VARCHAR(100) 
	  ,[CustomerSince]    VARCHAR(100) 
      ,[Vehicle]           VARCHAR(100)
      ,[2014]                FLOAT
      ,[2015]                     FLOAT
      ,[2016E]                   FLOAT
     
	  
	  )

--==============================
--TUNCATE TABLE
--==============================

TRUNCATE TABLE[WRK_vehicleService]
   

--===================================
--INSERT INTO BLOCK
--====================================


INSERT INTO[WRK_vehicleService]
(
       [CustomerID]
      ,[CustomerSince]
      ,[Vehicle]
      ,[2014]
      ,[2015]
      ,[2016E]
	 )
	   
SELECT top 500
       [CustomerID]
      ,[CustomerSince]
      ,[Vehicle]
      ,[2014]
      ,[2015]
      ,[2016E]
    
	
FROM [RAW_vehicleService] 
WHERE ISNUMERIC([2015]) = 1
  or[2015] = ' '
 
--(1049998 rows affected)
/*
SELECT [CustomerID],COUNT(*)
FROM  [WRK_vehicleService]
GROUP BY [CustomerID] 
HAVING COUNT(*)>1


SELECT* 
FROM [WRK_vehicleService]
WHERE  [CustomerID]  LIKE '3490750'
  
 




END




