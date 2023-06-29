USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [eylam]    Script Date: 6/28/2023 10:19:55 PM ******/
CREATE LOGIN [eylam] 
	WITH PASSWORD=N'changeme', 
	DEFAULT_DATABASE=[MangoJRLibrary], 
	DEFAULT_LANGUAGE=[us_english], 
	CHECK_EXPIRATION=ON, 
	CHECK_POLICY=ON
GO

ALTER LOGIN [eylam] DISABLE
GO

CREATE LOGIN [mattm] 
	WITH PASSWORD=N'changeme', 
	DEFAULT_DATABASE=[MangoJRLibrary], 
	DEFAULT_LANGUAGE=[us_english], 
	CHECK_EXPIRATION=ON, 
	CHECK_POLICY=ON
GO

ALTER LOGIN [mattm] DISABLE
GO



