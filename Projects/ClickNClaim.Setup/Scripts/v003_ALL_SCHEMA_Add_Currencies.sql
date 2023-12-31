USE [LES]
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
IF(@DbVersion <> 2)
BEGIN
	RAISERROR('You must be in DbVersion 2 to execute this script',20, 1) WITH LOG 
END
/*****************************************************************************************/


/****** Object:  Table [dbo].[Currency]    Script Date: 21/12/2015 12:08:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Country] [nvarchar](100) NULL,
	[Name] [nvarchar](100) NULL,
	[Code] [nvarchar](100) NULL,
	[Symbol] [nvarchar](100) NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Currency] ON 

GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (1, N'Albania', N'Leke', N'ALL', N'Lek')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (2, N'America', N'Dollars', N'USD', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (3, N'Afghanistan', N'Afghanis', N'AFN', N'؋')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (4, N'Argentina', N'Pesos', N'ARS', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (5, N'Aruba', N'Guilders', N'AWG', N'ƒ')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (6, N'Australia', N'Dollars', N'AUD', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (7, N'Azerbaijan', N'New Manats', N'AZN', N'ман')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (8, N'Bahamas', N'Dollars', N'BSD', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (9, N'Barbados', N'Dollars', N'BBD', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (10, N'Belarus', N'Rubles', N'BYR', N'p.')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (11, N'Belgium', N'Euro', N'EUR', N'€')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (12, N'Beliz', N'Dollars', N'BZD', N'BZ$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (13, N'Bermuda', N'Dollars', N'BMD', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (14, N'Bolivia', N'Bolivianos', N'BOB', N'$b')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (15, N'Bosnia and Herzegovina', N'Convertible Marka', N'BAM', N'KM')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (16, N'Botswana', N'Pula''s', N'BWP', N'P')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (17, N'Bulgaria', N'Leva', N'BGN', N'лв')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (18, N'Brazil', N'Reais', N'BRL', N'R$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (19, N'Britain (United Kingdom)', N'Pounds', N'GBP', N'£')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (20, N'Brunei Darussalam', N'Dollars', N'BND', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (21, N'Cambodia', N'Riels', N'KHR', N'៛')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (22, N'Canada', N'Dollars', N'CAD', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (23, N'Cayman Islands', N'Dollars', N'KYD', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (24, N'Chile', N'Pesos', N'CLP', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (25, N'China', N'Yuan Renminbi', N'CNY', N'¥')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (26, N'Colombia', N'Pesos', N'COP', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (27, N'Costa Rica', N'Colón', N'CRC', N'₡')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (28, N'Croatia', N'Kuna', N'HRK', N'kn')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (29, N'Cuba', N'Pesos', N'CUP', N'₱')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (30, N'Cyprus', N'Euro', N'EUR', N'€')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (31, N'Czech Republic', N'Koruny', N'CZK', N'Kč')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (32, N'Denmark', N'Kroner', N'DKK', N'kr')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (33, N'Dominican Republic', N'Pesos', N'DOP ', N'RD$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (34, N'East Caribbean', N'Dollars', N'XCD', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (35, N'Egypt', N'Pounds', N'EGP', N'£')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (36, N'El Salvador', N'Colones', N'SVC', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (37, N'England (United Kingdom)', N'Pounds', N'GBP', N'£')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (38, N'Euro', N'Euro', N'EUR', N'€')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (39, N'Falkland Islands', N'Pounds', N'FKP', N'£')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (40, N'Fiji', N'Dollars', N'FJD', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (41, N'France', N'Euro', N'EUR', N'€')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (42, N'Ghana', N'Cedis', N'GHC', N'¢')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (43, N'Gibraltar', N'Pounds', N'GIP', N'£')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (44, N'Greece', N'Euro', N'EUR', N'€')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (45, N'Guatemala', N'Quetzales', N'GTQ', N'Q')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (46, N'Guernsey', N'Pounds', N'GGP', N'£')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (47, N'Guyana', N'Dollars', N'GYD', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (48, N'Holland (Netherlands)', N'Euro', N'EUR', N'€')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (49, N'Honduras', N'Lempiras', N'HNL', N'L')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (50, N'Hong Kong', N'Dollars', N'HKD', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (51, N'Hungary', N'Forint', N'HUF', N'Ft')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (52, N'Iceland', N'Kronur', N'ISK', N'kr')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (53, N'India', N'Rupees', N'INR', N'Rp')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (54, N'Indonesia', N'Rupiahs', N'IDR', N'Rp')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (55, N'Iran', N'Rials', N'IRR', N'﷼')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (56, N'Ireland', N'Euro', N'EUR', N'€')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (57, N'Isle of Man', N'Pounds', N'IMP', N'£')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (58, N'Israel', N'New Shekels', N'ILS', N'₪')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (59, N'Italy', N'Euro', N'EUR', N'€')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (60, N'Jamaica', N'Dollars', N'JMD', N'J$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (61, N'Japan', N'Yen', N'JPY', N'¥')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (62, N'Jersey', N'Pounds', N'JEP', N'£')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (63, N'Kazakhstan', N'Tenge', N'KZT', N'лв')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (64, N'Korea (North)', N'Won', N'KPW', N'₩')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (65, N'Korea (South)', N'Won', N'KRW', N'₩')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (66, N'Kyrgyzstan', N'Soms', N'KGS', N'лв')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (67, N'Laos', N'Kips', N'LAK', N'₭')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (68, N'Latvia', N'Lati', N'LVL', N'Ls')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (69, N'Lebanon', N'Pounds', N'LBP', N'£')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (70, N'Liberia', N'Dollars', N'LRD', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (71, N'Liechtenstein', N'Switzerland Francs', N'CHF', N'CHF')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (72, N'Lithuania', N'Litai', N'LTL', N'Lt')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (73, N'Luxembourg', N'Euro', N'EUR', N'€')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (74, N'Macedonia', N'Denars', N'MKD', N'ден')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (75, N'Malaysia', N'Ringgits', N'MYR', N'RM')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (76, N'Malta', N'Euro', N'EUR', N'€')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (77, N'Mauritius', N'Rupees', N'MUR', N'₨')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (78, N'Mexico', N'Pesos', N'MXN', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (79, N'Mongolia', N'Tugriks', N'MNT', N'₮')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (80, N'Mozambique', N'Meticais', N'MZN', N'MT')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (81, N'Namibia', N'Dollars', N'NAD', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (82, N'Nepal', N'Rupees', N'NPR', N'₨')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (83, N'Netherlands Antilles', N'Guilders', N'ANG', N'ƒ')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (84, N'Netherlands', N'Euro', N'EUR', N'€')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (85, N'New Zealand', N'Dollars', N'NZD', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (86, N'Nicaragua', N'Cordobas', N'NIO', N'C$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (87, N'Nigeria', N'Nairas', N'NGN', N'₦')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (88, N'North Korea', N'Won', N'KPW', N'₩')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (89, N'Norway', N'Krone', N'NOK', N'kr')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (90, N'Oman', N'Rials', N'OMR', N'﷼')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (91, N'Pakistan', N'Rupees', N'PKR', N'₨')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (92, N'Panama', N'Balboa', N'PAB', N'B/.')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (93, N'Paraguay', N'Guarani', N'PYG', N'Gs')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (94, N'Peru', N'Nuevos Soles', N'PEN', N'S/.')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (95, N'Philippines', N'Pesos', N'PHP', N'Php')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (96, N'Poland', N'Zlotych', N'PLN', N'zł')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (97, N'Qatar', N'Rials', N'QAR', N'﷼')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (98, N'Romania', N'New Lei', N'RON', N'lei')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (99, N'Russia', N'Rubles', N'RUB', N'руб')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (100, N'Saint Helena', N'Pounds', N'SHP', N'£')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (101, N'Saudi Arabia', N'Riyals', N'SAR', N'﷼')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (102, N'Serbia', N'Dinars', N'RSD', N'Дин.')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (103, N'Seychelles', N'Rupees', N'SCR', N'₨')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (104, N'Singapore', N'Dollars', N'SGD', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (105, N'Slovenia', N'Euro', N'EUR', N'€')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (106, N'Solomon Islands', N'Dollars', N'SBD', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (107, N'Somalia', N'Shillings', N'SOS', N'S')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (108, N'South Africa', N'Rand', N'ZAR', N'R')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (109, N'South Korea', N'Won', N'KRW', N'₩')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (110, N'Spain', N'Euro', N'EUR', N'€')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (111, N'Sri Lanka', N'Rupees', N'LKR', N'₨')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (112, N'Sweden', N'Kronor', N'SEK', N'kr')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (113, N'Switzerland', N'Francs', N'CHF', N'CHF')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (114, N'Suriname', N'Dollars', N'SRD', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (115, N'Syria', N'Pounds', N'SYP', N'£')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (116, N'Taiwan', N'New Dollars', N'TWD', N'NT$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (117, N'Thailand', N'Baht', N'THB', N'฿')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (118, N'Trinidad and Tobago', N'Dollars', N'TTD', N'TT$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (119, N'Turkey', N'Lira', N'TRY', N'TL')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (120, N'Turkey', N'Liras', N'TRL', N'£')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (121, N'Tuvalu', N'Dollars', N'TVD', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (122, N'Ukraine', N'Hryvnia', N'UAH', N'₴')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (123, N'United Kingdom', N'Pounds', N'GBP', N'£')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (124, N'United States of America', N'Dollars', N'USD', N'$')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (125, N'Uruguay', N'Pesos', N'UYU', N'$U')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (126, N'Uzbekistan', N'Sums', N'UZS', N'лв')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (127, N'Vatican City', N'Euro', N'EUR', N'€')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (128, N'Venezuela', N'Bolivares Fuertes', N'VEF', N'Bs')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (129, N'Vietnam', N'Dong', N'VND', N'₫')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (130, N'Yemen', N'Rials', N'YER', N'﷼')
GO
INSERT [dbo].[Currency] ([Id], [Country], [Name], [Code], [Symbol]) VALUES (131, N'Zimbabwe', N'Zimbabwe Dollars', N'ZWD', N'Z$')
GO
SET IDENTITY_INSERT [dbo].[Currency] OFF
GO

/*****************************************************************************************/
/*************************** Update DbVersionProperty ***********************************/
EXEC sp_updateextendedproperty @name = N'DbVersion', @value = '3';
GO
/*****************************************************************************************/