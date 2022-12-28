CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](max) NOT NULL,
	[password] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[NPCS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](40) NOT NULL,
	[Proficiency] [int] NOT NULL,
	[HpMultiplier] [int] NOT NULL,
	[HpDie] [int] NOT NULL,
	[Hp] [int] NOT NULL,
	[AC] [int] NOT NULL,
	[DmgMultiplier] [int] NOT NULL,
	[DmgDie] [int] NOT NULL,
	[Speed] [int] NOT NULL,
	[StrST] [int] NOT NULL,
	[DexST] [int] NOT NULL,
	[ConST] [int] NOT NULL,
	[IntST] [int] NOT NULL,
	[WisST] [int] NOT NULL,
	[ChaST] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_NPCS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[NPCS]  WITH CHECK ADD  CONSTRAINT [FK_NPCS_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO

ALTER TABLE [dbo].[NPCS] CHECK CONSTRAINT [FK_NPCS_UserID]
GO