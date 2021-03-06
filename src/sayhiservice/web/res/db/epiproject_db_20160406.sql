USE [EpiProject]
GO
/****** Object:  Table [dbo].[Hot_WxTicket]    Script Date: 04/06/2016 11:21:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hot_WxTicket](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customerid] [int] NULL,
	[ticket] [nvarchar](500) NULL,
	[gettime] [datetime] NULL,
 CONSTRAINT [PK_Hot_WxTicket] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hot_WxAccessToken]    Script Date: 04/06/2016 11:21:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hot_WxAccessToken](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customerid] [int] NULL,
	[token] [nvarchar](500) NULL,
	[gettime] [datetime] NULL,
 CONSTRAINT [PK_Hot_WxAccessToken] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hot_UserOAuthUrl]    Script Date: 04/06/2016 11:21:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hot_UserOAuthUrl](
	[UOU_NonceCode] [varchar](10) NULL,
	[UOU_RedirectUrl] [varchar](400) NULL,
	[UOU_AddTime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hot_SignUpUser]    Script Date: 04/06/2016 11:21:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hot_SignUpUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customerid] [int] NULL,
	[name] [nvarchar](50) NULL,
	[mobile] [nvarchar](50) NULL,
	[address] [nvarchar](200) NULL,
	[openid] [nvarchar](50) NULL,
	[nickname] [nvarchar](50) NULL,
	[headimgurl] [nvarchar](200) NULL,
	[city] [nvarchar](50) NULL,
	[Province] [nvarchar](50) NULL,
	[createtime] [datetime] NULL,
 CONSTRAINT [PK_Hot_SignUpUser] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hot_ShopUser]    Script Date: 04/06/2016 11:21:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hot_ShopUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customerid] [int] NULL,
	[loginName] [nvarchar](50) NULL,
	[loginPassword] [nvarchar](50) NULL,
	[createtime] [datetime] NULL,
	[name] [varchar](50) NULL,
	[openid] [varchar](50) NULL,
	[defStatus] [int] NULL,
	[area] [nvarchar](20) NULL,
	[pro] [nvarchar](20) NULL,
	[city] [nvarchar](50) NULL,
	[shopName] [nvarchar](50) NULL,
	[shopAddress] [nvarchar](50) NULL,
	[nickName] [nvarchar](50) NULL,
	[headimgurl] [nvarchar](200) NULL,
 CONSTRAINT [PK_Hot_ShopUser] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经销商名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hot_ShopUser', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hot_ShopUser', @level2type=N'COLUMN',@level2name=N'area'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hot_ShopUser', @level2type=N'COLUMN',@level2name=N'pro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hot_ShopUser', @level2type=N'COLUMN',@level2name=N'city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专卖店名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hot_ShopUser', @level2type=N'COLUMN',@level2name=N'shopName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'专卖店地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hot_ShopUser', @level2type=N'COLUMN',@level2name=N'shopAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'店铺用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hot_ShopUser'
GO
/****** Object:  Table [dbo].[Hot_ShopBind]    Script Date: 04/06/2016 11:21:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hot_ShopBind](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shopid] [int] NULL,
	[openid] [nvarchar](50) NULL,
	[customerid] [int] NULL,
	[createtime] [datetime] NULL,
 CONSTRAINT [PK_Hot_ShopBind] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hot_HelpUser]    Script Date: 04/06/2016 11:21:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hot_HelpUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customerid] [int] NULL,
	[UserId] [int] NULL,
	[money] [decimal](18, 2) NULL,
	[helpOpenid] [varchar](50) NULL,
	[createtime] [datetime] NULL,
 CONSTRAINT [PK_Hot_HelpUser] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帮助的额度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hot_HelpUser', @level2type=N'COLUMN',@level2name=N'money'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帮助人的openid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hot_HelpUser', @level2type=N'COLUMN',@level2name=N'helpOpenid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帮助用户信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hot_HelpUser'
GO
/****** Object:  Table [dbo].[Hot_AttendUser]    Script Date: 04/06/2016 11:21:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hot_AttendUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customerid] [int] NULL,
	[openid] [nvarchar](50) NULL,
	[nickName] [nvarchar](100) NULL,
	[headimgurl] [nvarchar](200) NULL,
	[UnionID] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[couponCode] [nvarchar](50) NULL,
	[money] [decimal](18, 2) NULL,
	[defmoney] [decimal](18, 2) NULL,
	[isAttend] [int] NULL,
	[createtime] [datetime] NULL,
	[useStatus] [int] NULL,
	[shopUserId] [int] NULL,
	[updateTime] [datetime] NULL,
	[useTime] [datetime] NULL,
 CONSTRAINT [PK_Hot_AttendUser] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'优惠券码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hot_AttendUser', @level2type=N'COLUMN',@level2name=N'couponCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否参加 0表示没有，1表示参加' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hot_AttendUser', @level2type=N'COLUMN',@level2name=N'isAttend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参与人信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Hot_AttendUser'
GO
/****** Object:  Default [DF_Hot_AttendUser_defmoney]    Script Date: 04/06/2016 11:21:00 ******/
ALTER TABLE [dbo].[Hot_AttendUser] ADD  CONSTRAINT [DF_Hot_AttendUser_defmoney]  DEFAULT ((0)) FOR [defmoney]
GO
/****** Object:  Default [DF_Hot_AttendUser_isAttend]    Script Date: 04/06/2016 11:21:00 ******/
ALTER TABLE [dbo].[Hot_AttendUser] ADD  CONSTRAINT [DF_Hot_AttendUser_isAttend]  DEFAULT ((0)) FOR [isAttend]
GO
/****** Object:  Default [DF_Hot_UserInfo_createtime]    Script Date: 04/06/2016 11:21:00 ******/
ALTER TABLE [dbo].[Hot_AttendUser] ADD  CONSTRAINT [DF_Hot_UserInfo_createtime]  DEFAULT (getdate()) FOR [createtime]
GO
/****** Object:  Default [DF__Hot_Atten__useSt__3B75D760]    Script Date: 04/06/2016 11:21:00 ******/
ALTER TABLE [dbo].[Hot_AttendUser] ADD  DEFAULT ((0)) FOR [useStatus]
GO
/****** Object:  Default [DF__Hot_Atten__shopU__3C69FB99]    Script Date: 04/06/2016 11:21:00 ******/
ALTER TABLE [dbo].[Hot_AttendUser] ADD  DEFAULT ((0)) FOR [shopUserId]
GO
/****** Object:  Default [DF__Hot_Atten__updat__3E52440B]    Script Date: 04/06/2016 11:21:00 ******/
ALTER TABLE [dbo].[Hot_AttendUser] ADD  DEFAULT (getdate()) FOR [updateTime]
GO
/****** Object:  Default [DF_Hot_AttendUser_useTime]    Script Date: 04/06/2016 11:21:00 ******/
ALTER TABLE [dbo].[Hot_AttendUser] ADD  CONSTRAINT [DF_Hot_AttendUser_useTime]  DEFAULT (getdate()) FOR [useTime]
GO
/****** Object:  Default [DF_Hot_HelpUser_UserId]    Script Date: 04/06/2016 11:21:00 ******/
ALTER TABLE [dbo].[Hot_HelpUser] ADD  CONSTRAINT [DF_Hot_HelpUser_UserId]  DEFAULT ((0)) FOR [UserId]
GO
/****** Object:  Default [DF_Hot_HelpUser_money]    Script Date: 04/06/2016 11:21:00 ******/
ALTER TABLE [dbo].[Hot_HelpUser] ADD  CONSTRAINT [DF_Hot_HelpUser_money]  DEFAULT ((0.1)) FOR [money]
GO
/****** Object:  Default [DF_Hot_HelpUser_createtime]    Script Date: 04/06/2016 11:21:00 ******/
ALTER TABLE [dbo].[Hot_HelpUser] ADD  CONSTRAINT [DF_Hot_HelpUser_createtime]  DEFAULT (getdate()) FOR [createtime]
GO
/****** Object:  Default [DF_Hot_ShopBind_createtime]    Script Date: 04/06/2016 11:21:00 ******/
ALTER TABLE [dbo].[Hot_ShopBind] ADD  CONSTRAINT [DF_Hot_ShopBind_createtime]  DEFAULT (getdate()) FOR [createtime]
GO
/****** Object:  Default [DF_Hot_ShopUser_createtime]    Script Date: 04/06/2016 11:21:00 ******/
ALTER TABLE [dbo].[Hot_ShopUser] ADD  CONSTRAINT [DF_Hot_ShopUser_createtime]  DEFAULT (getdate()) FOR [createtime]
GO
/****** Object:  Default [DF__Hot_ShopU__defSt__3D5E1FD2]    Script Date: 04/06/2016 11:21:00 ******/
ALTER TABLE [dbo].[Hot_ShopUser] ADD  DEFAULT ((0)) FOR [defStatus]
GO
/****** Object:  Default [DF_Hot_SignUpUser_createtime]    Script Date: 04/06/2016 11:21:00 ******/
ALTER TABLE [dbo].[Hot_SignUpUser] ADD  CONSTRAINT [DF_Hot_SignUpUser_createtime]  DEFAULT (getdate()) FOR [createtime]
GO
/****** Object:  Default [DF_Hot_WxAccessToken_gettime]    Script Date: 04/06/2016 11:21:00 ******/
ALTER TABLE [dbo].[Hot_WxAccessToken] ADD  CONSTRAINT [DF_Hot_WxAccessToken_gettime]  DEFAULT (getdate()) FOR [gettime]
GO
/****** Object:  Default [DF_Hot_WxTicket_gettime]    Script Date: 04/06/2016 11:21:00 ******/
ALTER TABLE [dbo].[Hot_WxTicket] ADD  CONSTRAINT [DF_Hot_WxTicket_gettime]  DEFAULT (getdate()) FOR [gettime]
GO
