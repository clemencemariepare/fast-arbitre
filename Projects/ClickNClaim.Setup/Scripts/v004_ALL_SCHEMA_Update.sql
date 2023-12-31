USE LES
GO
/*****************************************************************************************/
/********************************** Get DbVersionProperty ********************************/
/*****************************************************************************************/
DECLARE @DbVersion INT
SELECT @DbVersion = CAST(value AS INT)
FROM fn_listextendedproperty(default, default, default, default, default, default, default)
WHERE name = 'DbVersion'

/*****************************************************************************************/
/*************** Check DbVersion if we have to run the script ****************************/
/*****************************************************************************************/
IF(@DbVersion <> 3)
BEGIN
	RAISERROR('You must be in DbVersion 3 to execute this script',20, 1) WITH LOG 
END
/*****************************************************************************************/



USE [LES]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 21/12/2015 12:06:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address1] [nvarchar](450) NULL,
	[Address2] [nvarchar](450) NULL,
	[Address3] [nvarchar](450) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[City] [nvarchar](250) NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserAddresses]    Script Date: 21/12/2015 12:06:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserAddresses](
	[IdUser] [nvarchar](128) NOT NULL,
	[IdAddress] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserAddresses] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC,
	[IdAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserCompanies]    Script Date: 21/12/2015 12:06:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserCompanies](
	[IdUser] [nvarchar](128) NOT NULL,
	[IdCompany] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserCompanies] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC,
	[IdCompany] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserShops]    Script Date: 21/12/2015 12:06:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserShops](
	[IdUser] [nvarchar](128) NOT NULL,
	[IdShop] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserShops] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC,
	[IdShop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Companies]    Script Date: 21/12/2015 12:06:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Url] [nvarchar](512) NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shops]    Script Date: 21/12/2015 12:06:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shops](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Url] [nvarchar](512) NULL,
	[Sector] [nvarchar](250) NULL,
	[IdCurrency] [int] NULL,
	[IdCountry] [int] NOT NULL,
 CONSTRAINT [PK_Shops] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AspNetUserAddresses]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserAddresses_Addresses] FOREIGN KEY([IdAddress])
REFERENCES [dbo].[Addresses] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserAddresses] CHECK CONSTRAINT [FK_AspNetUserAddresses_Addresses]
GO
ALTER TABLE [dbo].[AspNetUserAddresses]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserAddresses_AspNetUsers] FOREIGN KEY([IdUser])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserAddresses] CHECK CONSTRAINT [FK_AspNetUserAddresses_AspNetUsers]
GO
ALTER TABLE [dbo].[AspNetUserCompanies]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserCompanies_AspNetUsers] FOREIGN KEY([IdUser])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserCompanies] CHECK CONSTRAINT [FK_AspNetUserCompanies_AspNetUsers]
GO
ALTER TABLE [dbo].[AspNetUserCompanies]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserCompanies_Companies] FOREIGN KEY([IdCompany])
REFERENCES [dbo].[Companies] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserCompanies] CHECK CONSTRAINT [FK_AspNetUserCompanies_Companies]
GO
ALTER TABLE [dbo].[AspNetUserShops]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserShops_AspNetUsers] FOREIGN KEY([IdUser])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserShops] CHECK CONSTRAINT [FK_AspNetUserShops_AspNetUsers]
GO
ALTER TABLE [dbo].[AspNetUserShops]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserShops_Shops] FOREIGN KEY([IdShop])
REFERENCES [dbo].[Shops] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserShops] CHECK CONSTRAINT [FK_AspNetUserShops_Shops]
GO



/*****************************************************************************************/
/*************************** Update DbVersionProperty ***********************************/
EXEC sp_updateextendedproperty @name = N'DbVersion', @value = '4';
GO
/*****************************************************************************************/