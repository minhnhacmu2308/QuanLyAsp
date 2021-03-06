USE [Tam_IPH]
GO
/****** Object:  Table [dbo].[donvitinh]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[donvitinh](
	[stt] [int] IDENTITY(1,1) NOT NULL,
	[donvitinh] [nvarchar](50) NULL,
	[ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_donvitinh] PRIMARY KEY CLUSTERED 
(
	[stt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhomthongke]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhomthongke](
	[manhom] [int] IDENTITY(1,1) NOT NULL,
	[tennhom] [nvarchar](250) NULL,
	[ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK_nhomthongke] PRIMARY KEY CLUSTERED 
(
	[manhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qc01]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qc01](
	[NormId] [int] NULL,
	[thutuqc01] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblContract]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblContract](
	[ContractId] [int] IDENTITY(1,1) NOT NULL,
	[SampleId] [int] NULL,
	[Norm] [nvarchar](300) NULL,
	[Location] [nvarchar](300) NULL,
	[Cost] [money] NULL,
 CONSTRAINT [PK_tblContract] PRIMARY KEY CLUSTERED 
(
	[ContractId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCustomer]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Phone] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[TaxCode] [nvarchar](50) NULL,
	[LastUpdate] [smalldatetime] NULL,
	[UserUpdate] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblCustomer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDepartment]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDepartment](
	[DeptId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [ntext] NULL,
 CONSTRAINT [PK_tblDepartment] PRIMARY KEY CLUSTERED 
(
	[DeptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEmployee]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmployee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[DeptId] [int] NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[Sex] [bit] NOT NULL,
	[BirthDay] [smalldatetime] NULL,
	[Address] [nvarchar](255) NULL,
	[Home] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Description] [ntext] NULL,
 CONSTRAINT [PK_tblEmployee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHoaChat]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoaChat](
	[HcId] [int] IDENTITY(1,1) NOT NULL,
	[TenHc] [nvarchar](200) NOT NULL,
	[DonViTinh] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblHoaChat] PRIMARY KEY CLUSTERED 
(
	[HcId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMenu]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMenu](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Link] [text] NULL,
	[ParentId] [int] NULL,
	[Sort] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_tblMenu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrder]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrder](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [nvarchar](100) NULL,
	[CustomerId] [int] NULL,
	[OrderDate] [smalldatetime] NULL,
	[ReturnDate] [smalldatetime] NULL,
	[OrderPerson] [nvarchar](100) NULL,
	[ContactPhone] [nvarchar](100) NULL,
	[IsCheckStandard] [bit] NULL,
	[CheckStandard] [nvarchar](450) NULL,
	[FastTest] [bit] NULL,
	[SubContract] [bit] NULL,
	[ReturnSample] [bit] NULL,
	[Vietnamese] [bit] NULL,
	[English] [bit] NULL,
	[Viet_Eng] [bit] NULL,
	[Require] [nvarchar](50) NULL,
	[Receiver] [nvarchar](100) NULL,
	[LastUpdate] [smalldatetime] NULL,
	[UserUpdate] [nvarchar](50) NULL,
	[Masothue] [nvarchar](50) NULL,
	[SaleOff] [int] NOT NULL,
 CONSTRAINT [PK_tblOrder] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProvince]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProvince](
	[ProvinceId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](200) NULL,
	[Description] [ntext] NULL,
 CONSTRAINT [PK_tblProvince] PRIMARY KEY CLUSTERED 
(
	[ProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSample]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSample](
	[SampleId] [int] IDENTITY(1,1) NOT NULL,
	[SampleCode] [nvarchar](100) NOT NULL,
	[OrderId] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[Mass] [nvarchar](100) NULL,
	[KeepMass] [nvarchar](50) NULL,
	[State] [nvarchar](750) NULL,
	[Quantity] [int] NULL,
	[Status] [int] NULL,
	[KeepTime] [nvarchar](300) NULL,
	[IsFinished] [bit] NULL,
	[Description] [ntext] NULL,
	[Comment] [ntext] NULL,
	[Org_Signature] [ntext] NULL,
	[Performer_Signature] [ntext] NULL,
	[Sampler] [nvarchar](150) NULL,
	[SampleDate] [datetime] NULL,
	[SampleLocation] [nvarchar](max) NULL,
	[ReturnDate] [datetime] NULL,
	[CostName] [nvarchar](200) NULL,
	[CostValue] [money] NULL,
	[Liquidated] [bit] NULL,
	[LastUpdate] [datetime] NULL,
	[UserUpdate] [nvarchar](100) NULL,
	[phanloai] [nvarchar](50) NULL,
	[kntt] [nvarchar](50) NULL,
	[skmt] [nvarchar](50) NULL,
	[thluumau] [datetime] NULL,
	[nhomthongke] [nvarchar](250) NULL,
	[fromdate] [datetime] NULL,
	[todate] [datetime] NULL,
	[dichvu] [bit] NOT NULL,
	[phanloaisp] [nvarchar](50) NULL,
	[Dacdiem] [nvarchar](1000) NULL,
	[Motamau] [nvarchar](500) NULL,
	[phiGTDD] [money] NULL,
	[NoiGui] [nvarchar](50) NULL,
	[NguonMau] [nvarchar](50) NULL,
	[Bo] [nvarchar](50) NULL,
	[Mauan] [nvarchar](150) NULL,
 CONSTRAINT [PK_tblSample] PRIMARY KEY CLUSTERED 
(
	[SampleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[UName] [nvarchar](50) NULL,
	[PW] [nvarchar](50) NULL,
	[IsAdmin] [bit] NOT NULL,
	[IsUpdate] [bit] NOT NULL,
	[IsTest] [bit] NOT NULL,
	[IsResponse] [bit] NOT NULL,
	[IsApproval] [bit] NULL,
	[taphop] [bit] NULL,
	[chuyen] [bit] NULL,
	[chitieu] [bit] NULL,
	[suaketqua] [bit] NULL,
	[hoachat] [bit] NOT NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblXetNghiem]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblXetNghiem](
	[XnId] [int] IDENTITY(1,1) NOT NULL,
	[HcId] [int] NOT NULL,
	[NormId] [int] NOT NULL,
	[LuongSuDung] [real] NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
	[GiaiDoan] [int] NOT NULL,
 CONSTRAINT [PK_tblXetNghiem] PRIMARY KEY CLUSTERED 
(
	[HcId] ASC,
	[NormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tcomNorm_Group]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tcomNorm_Group](
	[ComID] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NULL,
	[NormId] [int] NULL,
 CONSTRAINT [PK_tcomNorm_Group] PRIMARY KEY CLUSTERED 
(
	[ComID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tcomSample_Test]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tcomSample_Test](
	[ComId] [int] IDENTITY(1,1) NOT NULL,
	[SampleId] [int] NULL,
	[NormId] [int] NULL,
	[Method] [nvarchar](300) NULL,
	[Standard] [nvarchar](200) NULL,
	[Sampler] [nvarchar](100) NULL,
	[Result] [nvarchar](700) NULL,
	[Cost] [money] NULL,
	[Description] [ntext] NULL,
	[IsFinished] [bit] NULL,
	[IsApproval] [bit] NULL,
	[Approver] [nvarchar](50) NULL,
	[LastUpdate] [smalldatetime] NULL,
	[UserUpdate] [nvarchar](50) NULL,
	[chuyen] [bit] NOT NULL,
	[nguoichuyen] [nvarchar](50) NULL,
	[ngaykiemtra] [smalldatetime] NULL,
	[khongdat] [bit] NOT NULL,
	[ngayxn] [datetime] NULL,
	[GiaiDoan] [int] NOT NULL,
	[SoLanXN] [int] NOT NULL,
	[ngayhdp] [datetime] NULL,
 CONSTRAINT [PK_tcomSample_Test] PRIMARY KEY CLUSTERED 
(
	[ComId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tlkpDefault_Signature]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tlkpDefault_Signature](
	[SignatureId] [int] IDENTITY(1,1) NOT NULL,
	[Org_Signature] [ntext] NULL,
	[Performer_Signature] [ntext] NULL,
 CONSTRAINT [PK_tlkpDefault_Signature] PRIMARY KEY CLUSTERED 
(
	[SignatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tlkpMethod]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tlkpMethod](
	[MethodId] [int] IDENTITY(1,1) NOT NULL,
	[NormId] [int] NULL,
	[Name] [nvarchar](200) NULL,
	[Standard] [nvarchar](200) NULL,
	[LastUpdate] [smalldatetime] NULL,
	[UserUpdate] [nvarchar](50) NULL,
 CONSTRAINT [PK_tlkpMethod] PRIMARY KEY CLUSTERED 
(
	[MethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tlkpNorm]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tlkpNorm](
	[NormId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NOT NULL,
	[DeptId] [int] NULL,
	[Method] [nvarchar](300) NULL,
	[Standard] [nvarchar](300) NULL,
	[Cost] [money] NOT NULL,
	[LastUpdate] [smalldatetime] NULL,
	[UserUpdate] [nvarchar](50) NULL,
	[ghichu] [nvarchar](100) NULL,
	[nhom] [int] NULL,
	[thutu] [int] NULL,
	[chunghieng] [bit] NOT NULL,
	[dichvu] [bit] NOT NULL,
	[camquan] [bit] NOT NULL,
	[donvitinh] [nvarchar](50) NULL,
	[ttqd] [nvarchar](50) NULL,
	[qd47] [bit] NOT NULL,
	[phanloai] [nvarchar](30) NOT NULL,
	[thutuqc01] [int] NOT NULL,
	[thutuqckhac] [int] NOT NULL,
	[thutuqc08] [int] NOT NULL,
 CONSTRAINT [PK_tlkpNorm] PRIMARY KEY CLUSTERED 
(
	[NormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tlkpNorm_Group]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tlkpNorm_Group](
	[GroupId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NULL,
	[Description] [ntext] NULL,
 CONSTRAINT [PK_tlkpNorm_Group] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tlkpOrganizationType]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tlkpOrganizationType](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Description] [ntext] NULL,
 CONSTRAINT [PK_tlkpOrganizationType] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vqr_Appointment_Ticket]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vqr_Appointment_Ticket](
	[OrderNumber] [nvarchar](100) NULL,
	[OrderDate] [smalldatetime] NULL,
	[ReturnDate] [smalldatetime] NULL,
	[OrderPerson] [nvarchar](100) NULL,
	[Receiver] [nvarchar](100) NULL,
	[Cust_Name] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Sample_Count] [int] NULL,
	[Test_Count] [int] NULL,
	[Test_Cost] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vqr_Receive_Letter]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vqr_Receive_Letter](
	[NormName] [nvarchar](250) NULL,
	[MedName] [nvarchar](200) NULL,
	[FastTest] [bit] NOT NULL,
	[Cost] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vqr_Result_Sample_Infor]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vqr_Result_Sample_Infor](
	[CustomerName] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[OrderDate] [smalldatetime] NULL,
	[SampleCode] [nvarchar](100) NULL,
	[SampleName] [nvarchar](255) NULL,
	[Comment] [ntext] NULL,
	[Org_Signature] [ntext] NULL,
	[Performer_Signature] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vqr_Sample_Forward]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vqr_Sample_Forward](
	[SampleId] [int] NOT NULL,
	[SampleCode] [nvarchar](100) NULL,
	[OrderId] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Mass] [nvarchar](50) NULL,
	[State] [nvarchar](255) NULL,
	[Status] [int] NULL,
	[Quantity] [int] NULL,
	[IsFinished] [bit] NOT NULL,
	[Description] [ntext] NULL,
	[Comment] [ntext] NULL,
	[Org_Signature] [ntext] NULL,
	[Performer_Signature] [ntext] NULL,
	[Sampler] [nvarchar](50) NULL,
	[SampleDate] [smalldatetime] NULL,
	[SampleLocation] [nvarchar](250) NULL,
	[LastUpdate] [smalldatetime] NULL,
	[UserUpdate] [nvarchar](50) NULL,
	[MethodName] [nvarchar](200) NULL,
	[NormName] [nvarchar](250) NULL,
	[TestCount] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vqr_Sample_Forward_Summarize]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vqr_Sample_Forward_Summarize](
	[OrderId] [int] NULL,
	[SamCount] [int] NULL,
	[Cost] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vqrTest_Result]    Script Date: 06/16/2022 2:57:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vqrTest_Result](
	[CustomerName] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[OrderDate] [smalldatetime] NULL,
	[NormName] [nvarchar](250) NULL,
	[MedName] [nvarchar](200) NULL,
	[Standard] [nvarchar](200) NULL,
	[Result] [nvarchar](200) NULL,
	[SampleCode] [nvarchar](100) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[donvitinh] ON 

INSERT [dbo].[donvitinh] ([stt], [donvitinh], [ghichu]) VALUES (1, N' < 10 CFU /g', NULL)
INSERT [dbo].[donvitinh] ([stt], [donvitinh], [ghichu]) VALUES (2, N' < 1 CFU /mL', NULL)
INSERT [dbo].[donvitinh] ([stt], [donvitinh], [ghichu]) VALUES (3, N' < 3 MPN /g', NULL)
INSERT [dbo].[donvitinh] ([stt], [donvitinh], [ghichu]) VALUES (4, N' < 0,3 MPN /mL', NULL)
SET IDENTITY_INSERT [dbo].[donvitinh] OFF
GO
SET IDENTITY_INSERT [dbo].[nhomthongke] ON 

INSERT [dbo].[nhomthongke] ([manhom], [tennhom], [ghichu]) VALUES (1, N'Sữa và các sản phẩm sữa ', N'')
INSERT [dbo].[nhomthongke] ([manhom], [tennhom], [ghichu]) VALUES (2, N'Bánh các loại', N'')
INSERT [dbo].[nhomthongke] ([manhom], [tennhom], [ghichu]) VALUES (3, N'Kẹo các loại', N'')
INSERT [dbo].[nhomthongke] ([manhom], [tennhom], [ghichu]) VALUES (4, N'Mứt các loại', N'')
INSERT [dbo].[nhomthongke] ([manhom], [tennhom], [ghichu]) VALUES (5, N'Nước chấm các loại', N'')
INSERT [dbo].[nhomthongke] ([manhom], [tennhom], [ghichu]) VALUES (6, N'Gia vị các loại', N'')
INSERT [dbo].[nhomthongke] ([manhom], [tennhom], [ghichu]) VALUES (7, N'Rượu, bia các loại', N'')
SET IDENTITY_INSERT [dbo].[nhomthongke] OFF
GO
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (34994, 1)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3353, 67)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3380, 62)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (741, 2)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (1255, 3)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3329, 4)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3330, 5)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3331, 6)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3332, 7)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3333, 8)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3334, 9)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3398, 10)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3399, 11)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3071, 12)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (272, 13)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (10291, 14)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3371, 15)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3375, 16)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3370, 17)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (924, 18)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (2655, 19)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3368, 20)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3369, 21)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (10290, 22)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3335, 23)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3698, 24)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (24321, 25)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3337, 26)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3382, 27)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3383, 28)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (2896, 29)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3354, 30)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3384, 31)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3682, 32)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (2895, 33)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3385, 34)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3386, 35)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3357, 36)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3339, 37)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3377, 38)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3340, 39)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3341, 40)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (23199, 41)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3342, 42)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3387, 43)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3356, 44)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3401, 45)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3376, 46)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3388, 47)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3389, 48)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3391, 49)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3343, 50)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (2894, 51)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3451, 52)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3390, 53)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3691, 54)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3378, 55)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3344, 56)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3392, 57)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3393, 58)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3404, 59)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (2130, 60)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (2065, 61)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3346, 63)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3350, 64)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3351, 65)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3352, 66)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3347, 68)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3348, 69)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3394, 70)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3395, 71)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3396, 72)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3397, 73)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (2891, 75)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (3349, 74)
INSERT [dbo].[qc01] ([NormId], [thutuqc01]) VALUES (2892, 76)
GO
SET IDENTITY_INSERT [dbo].[tblCustomer] ON 

INSERT [dbo].[tblCustomer] ([CustomerId], [Name], [Address], [Phone], [Fax], [Email], [TaxCode], [LastUpdate], [UserUpdate]) VALUES (106712, N'CƠ SỞ SẢN XUẤT GIÒ CHẢ NGHĨA', N'107C PHẠM VĂN HAI, PHƯỜNG 3, QUẬN TÂN BÌNH, TP.HCM', N'', N'', N'', N'', CAST(N'2021-01-04T08:14:00' AS SmallDateTime), N'bong')
SET IDENTITY_INSERT [dbo].[tblCustomer] OFF
GO
SET IDENTITY_INSERT [dbo].[tblDepartment] ON 

INSERT [dbo].[tblDepartment] ([DeptId], [Code], [Name], [Description]) VALUES (3, N'KTNN-VSATTP', N'PHÒNG KIỂM TRA NHÀ NƯỚC VỀ VSATTP', N'KTNN-VSATTP')
INSERT [dbo].[tblDepartment] ([DeptId], [Code], [Name], [Description]) VALUES (5, N'HOATHUCPHAM', N'HOATHUCPHAM', N'TTKTCL-VSATTP')
INSERT [dbo].[tblDepartment] ([DeptId], [Code], [Name], [Description]) VALUES (11, N'VSMT', N'VSMT', N'KHOA XET NGHIEM')
INSERT [dbo].[tblDepartment] ([DeptId], [Code], [Name], [Description]) VALUES (12, N'VISINH', N'VISINH', N'TTKTCL-VSATTP')
INSERT [dbo].[tblDepartment] ([DeptId], [Code], [Name], [Description]) VALUES (14, N'SACKY', N'SACKY', N'TTKTCL-VSATTP')
INSERT [dbo].[tblDepartment] ([DeptId], [Code], [Name], [Description]) VALUES (17, N'HDCMT', N'HDCMT', N'KHOA XET NGHIEM')
INSERT [dbo].[tblDepartment] ([DeptId], [Code], [Name], [Description]) VALUES (19, N'HOPDONGPHU', N'HỢP ĐỒNG PHỤ', N'QLCL')
INSERT [dbo].[tblDepartment] ([DeptId], [Code], [Name], [Description]) VALUES (20, N'VLMT', N'VLMT', N'KHOA XET NGHIEM')
INSERT [dbo].[tblDepartment] ([DeptId], [Code], [Name], [Description]) VALUES (23, N'QTMTLD', N'QTMTLD', N'Khoa SKMT')
INSERT [dbo].[tblDepartment] ([DeptId], [Code], [Name], [Description]) VALUES (24, N'QTMTYT', N'QTMTYT', N'Khoa SKMT')
INSERT [dbo].[tblDepartment] ([DeptId], [Code], [Name], [Description]) VALUES (25, N'CS2', N'CS2', N'TTPCCT-BKL')
SET IDENTITY_INSERT [dbo].[tblDepartment] OFF
GO
SET IDENTITY_INSERT [dbo].[tblEmployee] ON 

INSERT [dbo].[tblEmployee] ([EmployeeId], [DeptId], [FirstName], [LastName], [Sex], [BirthDay], [Address], [Home], [Mobile], [Email], [Description]) VALUES (8, 5, N'PHƯƠNG', N'TRẦN NGỌC', 1, NULL, N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tblEmployee] OFF
GO
SET IDENTITY_INSERT [dbo].[tblHoaChat] ON 

INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1, N'KIO3', N'g', N'AAS')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (254, N'TOP', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (255, N'MUP', N'ml', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (256, N'Peptone from meat', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (257, N'Phytone', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (489, N'EDTA Mg', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (490, N'EDTA Na( Triplex III)', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (491, N'Endrin', N'µL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (492, N'EPA 8080 Pesticides Mix', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (493, N'EPA 8270 Organophosphorous pesticide mix', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (494, N'Erythrosine', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (495, N'Esfenvalerrate', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (496, N'Ethanol', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (497, N'Ethephon', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (498, N'Ethyl acetate', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (499, N'Ethyl ether', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (500, N'Extrolute NT20', N'gói', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (501, N'Fast green FCF', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (502, N'Fenpropathrin 0.25 g', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (503, N'Fenvelerate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (504, N'Fipronil', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (505, N'Formaldehyde solution', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (507, N'Giemsa', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (508, N'Heptachlor', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (509, N'Hexaxhlorobenzene', N'ml', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (510, N'Hexamethylenetetramine', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (512, N'HFBI', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (513, N'HMDS', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (514, N'Hydrazine sulfate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (515, N'Hydrogen peroxide', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (516, N'Indigotine', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (517, N'Indotine carmine', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (518, N'Iod', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (519, N'Iod solution 0.1N', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (520, N'Ion exchanger amberlette IR 120', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (521, N'Iron exchaner amberletteIRA 402', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (522, N'Iron (II) chloride ', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (523, N'Iron oxide, Black', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (524, N'Iron oxide, Red', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (525, N'Iron oxide, yellow', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (526, N'Iron chloride hexhydrate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (527, N'Iso octane', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (528, N'Kaolin', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (529, N'Kjeldahl tablets 3.5g', N'viên', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (530, N'Kjeldahl tablet 5g', N'viên', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (531, N'Lamda- Cyhalothrin 0.1g', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (532, N'Lanthanum oxide', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (533, N'Lindane', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (535, N'Lithium hydroxide', N'gói', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (536, N'Lithium sulfate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (537, N'L- Tryptophan', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (538, N'Magnesium matrix modifier', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (539, N'Magnesium oxid', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (540, N'Manegsium sulphate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (541, N'Mercury iodide', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (542, N'Mercury chloride', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (543, N'Meta phosphoric acid', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (544, N'Methamiodophos', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (545, N'Methanol', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (546, N'Methoxychlor', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (547, N'methyl mercury chloride', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (549, N'Methyl tert butyl ether', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (550, N'Methylen blue', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (551, N'Mix phenol', N'ml', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (552, N'Mno ammonium phosphate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (553, N'N,N Dimethyl -p- Phenylenediamin dihydtochloride', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (554, N'N -(1- napthyl)ethyldiamine dihydrochloride', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (555, N'Napthylamine', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (556, N'n- Butyl acetate', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (557, N'n- Heptane', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (558, N'n- Hexane', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (559, N'Nicotine', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (560, N'Nitroprussid- Natrium dihydrate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (561, N'Nội chuẩn DEHP-D4', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (562, N'Nội chuẩn Ractopamine D6', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (563, N'Nội chuẩn benzo(a) pyren D12', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (564, N'Nội chuẩn C11', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (565, N'Nội chuẩn Clenbuterol D9', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (566, N'Nội chuẩn Ethephon D4', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (567, N'Nội chuẩn Melamine', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (568, N'Nội chuẩn mix 26', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (569, N'Salbutamol D3', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (570, N'Organophosphorus Pesticides mix 2', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (571, N'Palladium matrix modifier', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (572, N'Paradehyde', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (573, N'Pararosaniline', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (574, N'Pentachloronitrobenzene', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (575, N'Pentane', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (576, N'Permethrin', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (577, N'Pesticide mix 62', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (578, N'Petrolium benzine', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (579, N'Phenol', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (580, N'Phenol C13', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (581, N'Phenolphthalein', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (582, N'Phosphate modifier', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (583, N'Phosphate standard solution', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (584, N'Poly seed', N'viên', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (585, N'Ponceau 4R', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (586, N'Potassium hydroxide', N'g', N'')
GO
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (587, N'Potassium cacbonate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (588, N'Potassium chloride', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (589, N'Potassium chloride solution', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (590, N'Potassium  Chromate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (591, N'Potassium dichromate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (592, N'Potassium dihydrogen phosphate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (593, N'Potassium hexachloroplatinate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (594, N'Potassium hexacyanoferrate(II) trihydrate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (595, N'Potassium hydroggen phthalate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (597, N'Potassium iod', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (598, N'Potassium iodate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (599, N'Potassium permanganate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (600, N'Potassium permanganate solution 0.1 N', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (601, N'Potassium sodium tartrate tetrahydrate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (602, N'Potassium sulphate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (603, N'Potassium thiocynate 0.1 N', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (604, N'Profenofos', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (605, N'Pyridin', N'ml', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (606, N'Quechers mix II', N'tube', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (607, N'Quechers mix III', N'tube', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (608, N'Quechers mix IV', N'tube', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (609, N'Quechers mix VI', N'tube', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (610, N'Quinoline yelow', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (612, N'Quintozene', N'µL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (613, N'Red 2G', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (614, N'Silicagel', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (616, N'Silver nitrate solution 0.1N', N'ống', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (617, N'Sodium acetae', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (618, N'Sodium arsenit', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (619, N'Sodium azide', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (621, N'Sodium borohydride', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (622, N'Sodium cacbonate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (623, N'Sodium cacodylate hydrate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (624, N'Sodium chloride', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (625, N'Sodium disulfit', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (627, N'Sodium hydroxide solution 0.05 N', N'ống', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (628, N'Sodium hydroxide solution 0.1 N', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (629, N'Sodium hydroxide solution 1 N', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (630, N'Sodium hydroxide', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (631, N'Sodium hypochlorite', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (632, N'Sodium molybdate dihydrate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (633, N'Sodium oxalate 0.05 mol/l', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (634, N'Sodium salicylate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (635, N'Chuẩn Succraloze', N'mg', N'SAC KY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (636, N'Sodium tetraborate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (637, N'Sodium thiosulfat', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (638, N'Sodium thiosulfat 0.01 N', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (640, N'Sodiumthiosulfate solution 0.1 N', N'ống', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (641, N'Sodium Wolframate dihydrate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (642, N'Spands ', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (643, N'Starch', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (645, N'Sulfanilamide', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (646, N'Sunset yellow FCF', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (647, N'Tartrazine', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (648, N'Tau- fluvalinate', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (649, N'Test clor', N'test', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (650, N'Test kiểm tra nhanh dấm ăn', N'test', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (651, N'Test sul fie', N'test', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (652, N'TFA', N'ml', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (653, N'Tatanium Dioxide', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (654, N'Titrilex II- EDTA Na', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (658, N'TMCS', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (659, N'Toluene', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (660, N'Toluene D8', N'ống', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (661, N'Trichlor acetic acid', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (662, N'Trichlorofon', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (663, N'Triethanolamine', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (664, N'Triethylamine', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (665, N'Trifluoro acetic acid ', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (666, N'Triphenylphosphate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (667, N'Trisodium photphat', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (668, N'Trizma', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (669, N'Turmeric paper', N'Tờ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (670, N'Vinyl acetate', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (671, N'Wijs solution', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (672, N'Zinc acetate dihydrate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (673, N'Zinc Sulfate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (674, N'Zirconium(IV) oxychloride octahydrate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (675, N'KOH 0.1 N', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (676, N'Phenolphthaleine  1% trong cồn 90 độ', N'ml', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (677, N'Acetonitrile', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (678, N'EPA 8270 Peptiside mix', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (679, N'Nội chuẩn BHA', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (680, N'Nội chuẩn BHT', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (681, N'Nội chuẩn TBHQ', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (682, N'Chuẩn Bifenthrin', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (683, N'Chuẩn Permethrin', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (684, N'Chuẩn Deltamethrin', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (685, N'Chuẩn Cypermethrin', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (686, N'Chuẩn Cyhalothrin', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (687, N'Chuẩn Fenvalenrate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (688, N'Chuẩn Fluvalinate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (689, N'Chuẩn Fenpropathrin', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (690, N'Gamma HCH_d6', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (691, N'Chuẩn VOCs', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (692, N'Nội chuẩn Benzen _d6', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (693, N'Chuẩn Mix VOCs', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (694, N'Dicloromethyl', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (695, N'Tetrachloreten', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (696, N'Sodium Methoxide- CH3ONa', N'g', N'')
GO
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (697, N'Alpha-Linolenic acid (Methyl linolenate)', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (698, N'Eicosapentaenoic acid', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (699, N'Docosapentaenoic acid', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (700, N'Docosahexaenoic acid', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (701, N'Linolenic acid', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (702, N'Gamma-linolenic acid (Methyl γ-linolenate)', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (703, N'Arachidonic acid (Methyl arachidonate)', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (704, N'Sodium methylate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (705, N'Sodium bisulphate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (706, N'', N'', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (707, N'Acid Caproic', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (708, N'Acid Caprylic ', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (709, N'Acid Lauric', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (710, N'Acid Myristic', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (711, N'Acid Palmitic', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (712, N'Acid Stearic ', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (713, N'Acid Arachidic', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (714, N'Acid Behenic', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (715, N'Acid Lignoceric', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (716, N'Acid Capric ', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (717, N'Acid Linolenic acid', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (718, N'Dihomo gama-linoleic acid (cis-8,11,14-Eicosatrienoic acid methyl ester)', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (719, N'n- Pentane', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (720, N'Chuẩn THMs', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (721, N'Cis - 9 - Octadecenoate Myristoleic', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (722, N'Cis - 9 - Octadecenoate Palmitoleic', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (723, N'Cis - 6 -Octadecenoate Petroselinic', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (724, N'Cis - 9 - Octadecenoate Oleic', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (725, N'Cis - 11 - Octadecenoate Vacenic', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (726, N'13- Docosenoic acid Erucic', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (727, N'DEHP _D4', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (728, N'DEHP', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (729, N'Chuẩn BPA', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (731, N'3-MCPD D5', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (732, N'Sodium sulphate khan', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (733, N'Nội chuẩn BPA', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (734, N'BSTFA', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (735, N'TMCS', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (736, N'Nội chuẩn 5a Cholestan', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (737, N'Dichlorometane', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (738, N'Chuẩn DEHP', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (739, N'Nội chuẩn DEHP', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (740, N'Chuẩn Ethephone', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (741, N'Nội chuẩn Ethephone', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (742, N'Chuẩn PAHs', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (743, N'Nội chuẩn PAHs', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (745, N'Chuẩn PCBs', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (747, N'Clenbuterol _d9', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (748, N'Chuẩn Clenbuterol', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (750, N'Chuẩn Cholesterol', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (751, N'Chuẩn Mix MCT', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (752, N'Chuẩn Dimethoat', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (754, N'Chuẩn o,p DDE', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (755, N'Chuẩn o,p DDD', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (756, N'Chuẩn Clorpyrifos', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (757, N'Chuẩn Ethion', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (758, N'Chuẩn Fipronil', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (759, N'AgNO3 0.1 N', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (760, N'Acid Chlohydric 0.01 N', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (761, N'Mes', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (762, N'Tris', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (765, N'Amylase', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (766, N'Protease', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (767, N'Amyloglucodisase
Amyloglucosidase', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (768, N'Thimolphthaleine', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (769, N'Bromothimol', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (770, N'Viên Kendal 5 g', N'viên', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (771, N'Viên Kendal 3.5 g', N'viên', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (772, N'Amyloglucosidase', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (773, N'Phloroglucin', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (774, N'Ether etylic', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (775, N'pH 4', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (776, N'pH 7', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (777, N'pH 10', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (778, N'3,5 Dinitro salicilic', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (780, N'Iod 0.01 N', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (781, N'Iso pentanol', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (782, N'Iso Butanol', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (783, N'Aldehyde salysilic', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (784, N'Amonium metavandate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (785, N'Amonium molybdate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (786, N'Chuẩn phosphate', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (787, N'Sodium  thiosulfate 0.1 N', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (788, N'Metyl orange', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (790, N'Complexon', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (792, N'Sodium Metabi sulfite', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (793, N'Octanol', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (794, N'Chì Acetate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (795, N'ZnCl2', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (796, N'Methyl violet', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (797, N'N -Butanol', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (798, N'Màu chuẩn ponceau 4R', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (799, N'Màu chuẩn Sunset Yellow', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (800, N'Màu chuẩn Tartrazine', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (801, N'Màu chuẩn Brilliant  Blue', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (802, N'Màu chuẩn Carmoisine', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (803, N'Màu chuẩn Amaranth', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (804, N'Màu chuẩn Erythrosine', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (805, N'Màu chuẩn Allura Red AC', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (806, N'KOH 0.5 N', N'g', N'')
GO
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (807, N'HCl 0.5 N', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (808, N'HgCl', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (809, N'Sodium thiosulfate', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (810, N'HFBA', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (811, N'Na2HPO4', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (812, N'Chuẩn Aflatoxin tổng', N'ug', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (813, N'Chuẩn Deoxynivalenol', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (814, N'Chuẩn Zearalenone', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (815, N'Chuẩn Funmonisin', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (816, N'Chuần Vitamin A', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (817, N'Pyrogallol', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (818, N'', N'', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (819, N'Chuẩn Vitamin D3', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (820, N'Chuẩn Vitamin D2', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (821, N'Methylamin Hydrochlorid', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (822, N'Thuốc thử  Dansyl chlorid', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (823, N'Chuẩn Benzoic Acid ', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (824, N'Sodium Gluconat', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (825, N'Chuẩn Nitrit', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (826, N'Chuẩn Nitrat', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (827, N'Chuẩn Mannitol', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (828, N'Chuẩn Xylitol', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (829, N'Chuẩn Patulin', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (831, N'Chuẩn Ascorbic acid', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (832, N'Chuẩn Dexamethasone', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (833, N'Chuẩn Piroxicam', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (834, N'Chuẩn Sudan 1', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (835, N'Chuẩn Sudan II', N'MG', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (836, N'Chuẩn Sudan III', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (837, N'Chuẩn Sudan IV', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (838, N'Chuẩn Perchlorate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (839, N'Chuẩn Inosinic Acid', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (840, N'Chuẩn Guanilic acid', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (841, N'Chuẩn Ampicillin', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (842, N'Chuẩn Enrofloxacin', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (843, N'Chuẩn Tetracycline', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (844, N'Citric acid Monohydrate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (845, N'EDTA', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (846, N'Chuẩn Chlortetracycline', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (847, N'Chuẩn Oxytetracycline', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (848, N'Chuẩn Doxycycline', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (849, N'Chuẩn Lysine', N'ml', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (850, N'Chuẩn màu thực phẩm ', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (851, N'Chuẩn Sildenafil Citrate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (852, N'Chuẩn Chloramphenicol', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (853, N'Nội chuẩn Chloramphenicol- D5', N'µl', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (854, N'Amonium phosphate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (855, N'Chuẩn Pb', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (856, N'Ammonium pyrolidine dithiocarbamat', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (857, N'Butyl Acetate', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (858, N'Mg(NO3)2', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (859, N'Pd(NO3)2', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (860, N'Chuẩn Cadmium (Cd)', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (861, N'Chuẩn Sắt (Fe)', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (862, N'', N'', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (863, N'Acid Ascorbic', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (864, N'Chuẩn Thủy ngân (Hg)', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (865, N'La2O3', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (866, N'Chuẩn Calcium (Ca)', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (867, N'Chuẩn Magnesium (Mg)', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (868, N'Cesium chloride (CsCl)', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (869, N'Chuẩn sorbic Acid', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (870, N'Chuẩn Barium (Ba)', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (871, N'Chuẩn Molybden (Mo)', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (872, N'Chuẩn Niken (Ni)', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (873, N'Chuẩn Thiếc (Sn)', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (874, N'Chuẩn Antimon (Sb)', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (875, N'Pepton', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (876, N'Lauryl sulphate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (877, N'Chromocult ES', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (878, N'TBX', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (879, N'Coagulase', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (880, N'Petrifilm Coliform Count plates', N'miếng', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (881, N'VRBG', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (882, N'Bộ kit định lượng', N'phản ứng', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (884, N'Nutrient Broth', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (885, N'Ducitol', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (886, N'Mueller Hinton agar', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (887, N'Cephalotin', N'đĩa', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (888, N'NaH2PO4', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (889, N'Pepton kiềm', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (890, N'Na', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (891, N'Sodium Desoxycholate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (892, N'KIA', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (893, N'Teepol', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (894, N'Wagatsuma', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (895, N'Máu thỏ', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (896, N'Fraser Listeria Selectvie Enrichment Broth', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (897, N'Fraser Listeria Supplement', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (898, N'ALOA', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (899, N'Chromocult Listeria agar enrichment supplement', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (900, N'Chromocult Listeria agar selective supplemnet', N'lọ', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (901, N'Meat ectract', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (902, N'Nitrate Broth', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (903, N'Cystein hydrochloride', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (904, N'K2HPO4', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (905, N'Chuẩn Chrominum (Cr)', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (906, N'Chuẩn 2,4 DB', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (907, N'Chuẩn 2,4,5T', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (908, N'Chuẩn 2,4D', N'mL', N'')
GO
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (909, N'Hydroxylamine hydrochloride', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (910, N'1,10- Phenanthroline monohydrate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (911, N'Eriochrome cyanine R', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (912, N'methyl orange', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (913, N'Chuẩn Nhôm (Al)', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (914, N'Chuẩn Nitrite', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (916, N'Chuẩn Nitrate', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (917, N'Chuẩn sulfate', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (918, N'Potassium chloroplatinate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (919, N'Titriples III', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (920, N'Sodium Sulfite', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (921, N'Eriochrome Black T', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (922, N'Sodium Cacbonate 0.1N', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (923, N'AlK(SO4)2.12H2O', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (924, N'Chuẩn Flo', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (925, N'Chuẩn WC -SOL', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (926, N'Hexadecan', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (927, N'Eter crown', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (928, N'Pentaflorobenzyl bromur', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (929, N'Acid Docecylbenzen sulfonic metyl este', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (930, N'NaClO2', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (931, N'NaClO3', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (932, N'NaBrO3', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (933, N'Glycerin', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (934, N'Chuẩn Phosphate', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (936, N'Marexide', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (937, N'Etylen glycol', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (938, N'Chuẩn CN-', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (939, N'EG-KOH', N'chai', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (940, N'Mercury sulphate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (941, N'Iso Benzen', N'ml', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (942, N'Tinh thế leuco tím', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (947, N'Chuẩn hỗn hợp JY-QC23-ASL-1', N'mL', N'chuẩn hỗn hợp 23 nguyên tố')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (949, N'ống nhựa ly tâm 50 mL', N'ống', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (950, N'Cột ái lực ', N'Cột', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (953, N'Phin lọc 0.45µm', N'cái', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (954, N'Đầu côn xanh', N'Cái', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (955, N'Đầu côn vàng', N'Cái', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (959, N'Clindamycin', N'mg', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (960, N'Ciprofloxacin', N'mg', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (961, N'Hydrogen peroxide', N'Giọt', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (962, N'Đệm phosphate', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (963, N'Plate count agar ', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (964, N'Petrifilm Aerobic Count Plates', N'Đĩa ', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (965, N'Canh thang ITC (Irgasan, ticarcilin, potassium chlorate)', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (966, N'CIN (Cefsulodin, Irgasan, Novobiocin)', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (967, N'SSDC', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (968, N'NA (Nutrient Agar)', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (969, N'Potassium dihydrogen phosphate', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (970, N'Dipotassium hydrogen phosphate', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (971, N'NaCl (Sodium choloride)', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (972, N'Urea', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (973, N'Ethanol', N'ml', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (974, N'Phenol red', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (975, N'Kligler', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (976, N'L-ornithine monohydrochloride', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (977, N'Kit Elisa Folic Acid', N'Giếng', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (978, N'Peptone', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (979, N'Meat extract', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (980, N'L-Tryptophan', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (981, N'Lactose', N'g', N'Labo VSTP
Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (988, N'Iron (II) sulfate', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (989, N'Sodium thiosulfate pentahydrate', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (990, N'N,N,N,N'' - Tetrametyl-p- phenylendiamin dihydroclorua', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (992, N'L-lysine monohydrochloride', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (993, N'Bromocresol purple', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (994, N'Sodium citrate', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (995, N'Carbohydrate', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (996, N'NH4H2PO4', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (997, N'MgSO4', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (998, N'Bromothylmol Blue', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (999, N'Calcium chloride (CaCl2)', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1000, N'Tween 80', N'ml', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1001, N'Aesculin', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1002, N'Bile salt', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1003, N'Iron (III) citrate', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1004, N'Peptone from casein', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1005, N'Peptone from meat', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1006, N'Pyrazinamidase', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1007, N'Tris-maleate buffer (0,2 mol/l), pH 6.0', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1008, N'Ammonium iron(III)sulfate', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1009, N'Magnesium chloride hexahydrate (MgCl2.6H2O)', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1010, N'Sodium oxalate', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1011, N'Veal infusion ', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1012, N'SS Agar', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1015, N'Shi broth', N'g', N'Labo VSV')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1016, N'Môi trường thạch dinh dưỡng', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1017, N'Môi trường thạch bán đặc', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1019, N'Shigella selective supplement', N'lọ', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1022, N'Shigella broth base', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1025, N'ONPG', N'mg', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1026, N'Lam kính', N'cái', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1027, N'lactose gelatine', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1028, N'Salicin', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1029, N'Christensen''s citrate', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1033, N'mTSB', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1034, N'Supplement Novobiocin (mTSB)', N'lọ', N'LAbo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1035, N'SMAC', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1036, N'Supplement CT (CT SMAC)', N'lọ', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1040, N'Kháng huyết thanh O157', N'giọt', N'')
GO
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1041, N'TPGY', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1043, N'', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1044, N'Falcon 50 mL', N'cái', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1045, N'Bơm kim tiêm 50 cc ', N'cái', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1046, N'Đầu cone 1000 µL', N'cái', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1047, N'Đầu cone 100 µL', N'cái', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1048, N'Đầu cone 100 µ', N'cái', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1049, N'Ống ly tâm eppendorf 2 mL', N'cái', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1050, N'Ống ly tâm eppendorf 1.5 mL', N'cái', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1051, N'Kali dihydrophotphat', N'g', N'LABO VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1052, N'Natri hidrophotphat', N'g', N'LABO VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1053, N'Chuột thí nghiệm', N'con', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1054, N'Huyết thanh đơn giá loại A', N'IU', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1055, N'Huyết thanh đơn giá loại B', N'IU', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1056, N'Huyết thanh đơn giá loại E', N'IU', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1057, N'Huyết thanh đơn giá loại F', N'IU', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1058, N'ITC', N'g', N'LABO VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1059, N'Yersinia selective supplement ', N'Lọ', N'LABO VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1060, N'Ticarcillin supplement ', N'Lọ', N'LABO VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1061, N'Potassium Chlorate supplement', N'Lọ', N'LABO VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1062, N'L-tryptophan, không chứa indole', N'g', N'LABO VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1064, N'Kit độc tố 3M Staph Enterotoxin', N'giếng', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1065, N'Kit foodproof Norovirus Detection Kit 5'' Nuclease', N'phản ứng', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1066, N'Copper sulfate', N'g', N'Labo AAS')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1068, N'Ống nhỏ giọt nhựa PP 3 mL', N'Ống', N'Labo AAS')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1069, N'L-Cysteine hydrochloride monohydrate', N'g', N'Labo AAS')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1070, N'L-Cystein', N'g', N'Labo AAS')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1071, N'amber vial, screw top , silane-treated, 2mL', N'cái', N'Labo AAS')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1072, N'Blue cap, PTFE/red septa', N'Cái', N'Labo AAS')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1073, N'Ống nhựa ly tâm 15 mL', N'Ống', N'Labo AAS')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1074, N'Ammonium carbonate ((NH4)2CO3) ', N'g', N'Labo AAS')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1075, N'Ethylenediaminetetraacetic acid disodium salt dihydrate (C10H14Na2O8.2H2O)', N'g', N'Labo AAS')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1076, N'Chuẩn Arsenic (III) 1000 ppm', N'mL', N'Labo AAS')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1077, N'Syring filter 0.45 µm', N'Cái', N'Labo AAS')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1078, N'Chuẩn Lưu huỳnh (S) 1000 ppm', N'mL', N'Labo AAS')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1081, N'Mucic acid', N'g', N'Labo VSTP')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1086, N'đầu cone 10  µl', N'cái', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1087, N'Vial LC 1,5mL', N'Cái', N'SK')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1088, N'Kit foodproof GMO sample Preparation Kit', N'phản ứng', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1089, N'iso propanol', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1090, N'Falcon 15 mL', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1091, N'Chuẩn hỗn hợp MES-16-1', N'mL', N'Labo AAS')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1092, N'Chuẩn hỗn hợp QCS-02-R1-1', N'mL', N'Labo AAS (Al, Ba, B, K, Si, Ag, Na)')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1093, N'Kim tiêm 3mL', N'Cái', N'SK')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1094, N'Kim tiêm 3cc', N'Cái', N'SK')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1099, N'chuẩn acid amin', N'mL', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1100, N'Chuẩn acid oxalic', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1104, N'Chuẩn Aflatoxin B2', N'µg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1106, N'Acid boric', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1107, N'Sodium tetraborate decahydrat', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1115, N'hexane', N'mL', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1116, N'Cột SPE C18e', N'cái', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1117, N'Sodium sulfat khan', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1118, N'Chuẩn Danofloxacin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1119, N'Chuẩn Difloxacin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1120, N'Chuẩn Enrofloxacin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1121, N'Chuẩn Flumequin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1122, N'Chuẩn Nalidixic acid', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1123, N'Chuẩn Norfloxacin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1126, N'Chuẩn Ofloxacin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1127, N'Chuẩn Ciprofloxacin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1130, N'Chuẩn Marbofloxacin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1131, N'Chuẩn Orbifloxacin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1132, N'Bondesil C18 ', N'g', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1133, N'Chuẩn Sulfadimidine', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1134, N'Chuẩn Spiramycin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1135, N'Chuẩn Benzylpenicillin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1136, N'Chuẩn Penicillin V', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1137, N'Chuẩn Cefquinome', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1138, N'Chuẩn Amoxicillin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1139, N'Chuẩn Cefapirin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1140, N'Chuẩn Oxacillin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1141, N'Chuẩn Cefoperazone', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1142, N'Chuẩn Tilmicosin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1143, N'Thiamine hydrochloride', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1144, N'Chuẩn Tylosin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1145, N'Chuẩn Sulfabenzamide', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1147, N'Chuẩn Sulfathiazole', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1148, N'Chuẩn Sulfamonomethoxine', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1149, N'Chuẩn Sulfacetamide', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1150, N'Chuẩn Sulfaclozine', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1151, N'Chuẩn Sulfapyridine', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1152, N'Chuẩn Sulfadoxine', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1153, N'Chuẩn Sulfamerazine', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1154, N'Chuẩn Sulfisozole', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1155, N'Chuẩn Sulfadimethoxine', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1157, N'Chuẩn Sulfamethosazole', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1158, N'Chuẩn Sulfamethoxypyridazine', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1159, N'Chuẩn Tryptophan', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1165, N'Riboflavin', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1167, N'Nicotinamide', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1168, N'', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1169, N'Cyanocobalmin', N'mg', N'SẮC KÝ')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1170, N'Chuẩn Monosodium glutamate', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1171, N'Kali cyanur (KCN)', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1174, N'Alpha-Amylase', N'g', N'SAC KY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1175, N'Alpha-Amylase', N'g', N'SAC KY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1176, N'Natri acetate trihydrate (NaCH3COO.3H2O)', N'g', N'SAC KY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1177, N'Chuẩn Vitamin B5', N'mg', N'SAC KY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1178, N'Pyridoxine hydrochloride', N'mg', N'SAC KY')
GO
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1181, N'Chuẩn sorbitol', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1182, N'Xylitol', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1183, N'Xylose', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1184, N'Mannitol', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1185, N'Mantitol', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1186, N'Lactose', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1187, N'Erythyrol', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1188, N'Amonium hydroxide', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1190, N'Sodium sulfate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1191, N'Sodium hydrogen sulfate', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1193, N'Saccharose', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1195, N'Palatinose', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1196, N'Erythritol', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1197, N'Curcumine', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1198, N'Mantitol', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1199, N'Sodium Erythorbate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1200, N'Triethanolamine', N'ml', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1201, N'Isomalt', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1202, N'Vitamin K1', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1203, N'Lipasa', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1204, N'bột kẽm', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1205, N'2,4 Dinitrophenylhydrazine', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1206, N'Maltitol', N'g', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1207, N'Chuẩn methanol', N'ml', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1208, N'Chuẩn Ethyl acetate', N'ml', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1209, N'Acetaldehyde', N'ml', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1210, N'Furfural', N'ml', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1211, N'Chuẩn 1-Propanol', N'ml', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1212, N'2-methyl-1-propanol', N'ml', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1213, N'3-methyl-1-butanol', N'ml', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1214, N'Adenosin', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1215, N'Cysteamine', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1216, N'Cysteamine_d4', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1217, N'Acrylamide', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1218, N'Linoleic acid (Methyl linoleate)', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1219, N'Oleic acid (Methyl oleate)', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1220, N'Erucic acid methyl ester', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1221, N'Nervonic acid methyl ester', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1222, N'Methyl Trans-9-myristoleate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1223, N'Methyl trans-9-hexadecenoate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1224, N'Methyl Trans-6-octadecenoate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1225, N'Methyl Trans-9-octadecenoate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1226, N'Methyl Trans-11-octadecenoate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1227, N'Methyl Trans-13-docosenoate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1228, N'Amonium acetate', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1229, N'tartrazine', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1230, N'Methyl myristoleate (C14:1)', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1231, N'Methyl palmitoleate (C16:1)', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1232, N'Methyl petroselinate (C18:1 n=6)', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1233, N'Methyl cis-11-octadecenoate (C18:1 n=11)', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1235, N'Sunset yellow FCF', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1236, N'Glucosamine HCl', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1237, N'Chodroitin sulfate sodium', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1238, N'ponceau 4R', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1239, N'Brillian blue FCF', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1240, N'Erythrosin B', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1241, N'2,2,4-trimethylpentane', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1242, N'Chuẩn Gentamicin', N'mg', N'SACKY
')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1243, N'Nội chuẩn Tobramycin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1244, N'Cột AttractSPE WCX', N'cái', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1245, N'Chuẩn Streptomycin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1246, N'Chuẩn Dihydrostreptomycin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1247, N'Chuẩn Neomycin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1248, N'Chuẩn Glutamin', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1249, N'chuẩn Isometamidium', N'mg', N'SACKY')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1250, N'ammonium formate', N'g', N'sacky')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1251, N'Chuẩn Propionate 1000 mg/L', N'mL', N'AAS')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1252, N'Chuẩn Vàng (Gold Standard Solution) 1000 mg/L', N'mL', N'AAS')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1253, N'Mẫu CRM 1849a-Milk Powder', N'g', N'AAS')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1254, N'Chuẩn Germanium (Ge) 1000 mg/L', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1255, N'Carbendazim', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1256, N'Methidathion', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1257, N'Endosulfan', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1258, N'Parathion', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1259, N'Diphenylamin', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1260, N'Carbamate (100 mg/L)', N'µL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1261, N'HCBVTV họ Chlor hữu cơ (250 mg/L)', N'µL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1262, N'HCBVTV họ Phosphor hữu cơ (2000 mg/L)', N'µL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1263, N'Difenoconazol', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1264, N'Thiabendazol ', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1265, N'HCBVTV họ Cúc tổng hợp', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1266, N'Tebuconazol', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1267, N'Clofentezine', N'mg', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1276, N'TMAH 25 %', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1279, N'Te 1000 mg/L', N'mL', N'')
INSERT [dbo].[tblHoaChat] ([HcId], [TenHc], [DonViTinh], [GhiChu]) VALUES (1280, N'NH3 30 %', N'mL', N'AAS')
SET IDENTITY_INSERT [dbo].[tblHoaChat] OFF
GO
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (1, N'Quản lý xét nghiệm', N'', 0, 1, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (2, N'Yêu cầu xét nghiệm', N'../YCXetNghiem/Index', 1, 2, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (3, N'Thanh lý mấu', N'../ThanhLyMau/Index', 1, 3, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (4, N'Sổ nhận mẫu', N'../TKBC/SoNhanMau', 1, 4, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (5, N'Sổ lưu mẫu', N'../TKBC/SoLuuMau', 1, 5, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (6, N'Danh mục nhóm', N'../NhomChiTieu/Index', 1, 6, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (7, N'Nhập kết quả', N'../NhapKetQua/Index', 0, 7, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (8, N'Tập hợp', N'../TapHop/Index', 0, 8, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (9, N'Đơn vị gửi mẫu', N'../KhachHang/Index', 0, 9, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (10, N'In ấn', N'', 0, 10, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (11, N'Trả kết quả', N'../TraKetQua/Index', 10, 11, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (12, N'Thống kê - Báo cáo', N'', 0, 12, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (13, N'Thống kê khách hàng', N'../TKBC/TKKhachHang', 12, 13, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (14, N'Thống kê chi tiết mẫu', N'../TKBC/TKChiTietMau', 12, 14, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (15, N'Thống kê số lượng mẫu, chỉ tiêu, tiền của LABO', N'../TKBC/BCThongKe', 12, 15, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (16, N'Thống kê tiền, chỉ tiêu và HCP', N'../TKBC/TKTienVaChiTieu', 12, 16, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (17, N'Thống kê mẫu đã thanh lý', N'../TKBC/MauDaThanhLy', 12, 17, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (18, N'Thống kê các chỉ tiêu theo nhóm', N'../TKBC/TKSCTTheoNhom', 12, 18, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (19, N'Báo cáo các chỉ tiêu của LABO', N'../TKBC/BCChiTieu', 12, 19, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (20, N'Thống kê hóa chất cho LABO', N'../TKBC/TKHoaChat', 12, 20, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (21, N'Hệ thống', NULL, 0, 21, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (22, N'Phòng ban', N'../PhongBan/Index', 21, 22, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (23, N'Nhân viên', N'../NhanVien/Index', 21, 23, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (24, N'Người sử dụng', N'../NguoiSuDung/Index', 21, 24, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (25, N'Chỉ tiêu xét nghiệm', N'../ChiTieu/Index', 21, 25, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (26, N'Nhóm các chỉ tiêu chuẩn', N'../NhomChiTieu/Index', 21, 26, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (27, N'Ứng dụng', NULL, 0, 27, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (28, N'Logout', N'../Main/Logout', 27, 28, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (29, N'Thay đổi mật khẩu', N'../Account/ChangePassword', 27, 29, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (30, N'Giúp đỡ', N'', 27, 30, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (31, N'Gửi mail đến tác giả', N'../Mail/Index', 27, 31, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (32, N'Thoát chương trình', NULL, 27, 32, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (33, N'Hóa chất và VTTH', NULL, 0, 33, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (34, N'Nhập hóa chất và VTTH', N'../HoaChat/Index', 33, 34, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (35, N'Nhập số lượng hóa chất cho chỉ tiêu XN', NULL, 33, 35, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (38, N'Nhập ký hiệu đặc biệt', N'../KyHieuDB/Index', 21, 36, 1)
INSERT [dbo].[tblMenu] ([Id], [Name], [Link], [ParentId], [Sort], [Active]) VALUES (39, N'Thống kê Số lần XN và Số tiền theo chỉ tiêu', N'../TKBC/BaoCaoTienTheoChiTieu', 12, 19, 1)
GO
SET IDENTITY_INSERT [dbo].[tblOrder] ON 

INSERT [dbo].[tblOrder] ([OrderId], [OrderNumber], [CustomerId], [OrderDate], [ReturnDate], [OrderPerson], [ContactPhone], [IsCheckStandard], [CheckStandard], [FastTest], [SubContract], [ReturnSample], [Vietnamese], [English], [Viet_Eng], [Require], [Receiver], [LastUpdate], [UserUpdate], [Masothue], [SaleOff]) VALUES (208012, N'00001.21', 106712, CAST(N'2021-01-04T00:00:00' AS SmallDateTime), CAST(N'2021-01-18T00:00:00' AS SmallDateTime), N'', N'', 0, N'', 0, 0, 0, 1, 0, 0, N'', N'Nguyễn Thị Ngọc Bông', CAST(N'2021-01-27T09:02:00' AS SmallDateTime), N'diem', N'', 0)
SET IDENTITY_INSERT [dbo].[tblOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSample] ON 

INSERT [dbo].[tblSample] ([SampleId], [SampleCode], [OrderId], [Name], [Mass], [KeepMass], [State], [Quantity], [Status], [KeepTime], [IsFinished], [Description], [Comment], [Org_Signature], [Performer_Signature], [Sampler], [SampleDate], [SampleLocation], [ReturnDate], [CostName], [CostValue], [Liquidated], [LastUpdate], [UserUpdate], [phanloai], [kntt], [skmt], [thluumau], [nhomthongke], [fromdate], [todate], [dichvu], [phanloaisp], [Dacdiem], [Motamau], [phiGTDD], [NoiGui], [NguonMau], [Bo], [Mauan]) VALUES (436989, N'00001.21', 208012, N'Cá lóc Khô bò', N'01 cây x 500 g ', N'KLM.', N'', 1, 1, N'', 1, N'', NULL, N'TUQ. VIỆN TRƯỞNG
GIÁM ĐỐC TRUNG TÂM KIỂM NGHIỆM ATTP KVPN', N'', N'', CAST(N'2021-01-04T00:00:00.000' AS DateTime), N'', CAST(N'2021-01-18T00:00:00.000' AS DateTime), N'Lưu Minh Trường', 0.0000, 0, CAST(N'2021-01-12T00:00:00.000' AS DateTime), N'Nguyễn Thị Ngọc Bông', N'ATTP', N'01 cây x 500 g ', N'', NULL, N'Thịt và các sản phẩm thịt', NULL, NULL, 0, N'Thực phẩm', N'', N'Mẫu gói lá chuối kín, không nhãn sản phẩm, không NSX - HSD. ', 0.0000, N'Khách hàng', N'Dịch vụ', N'Bộ Công thương', N'')
SET IDENTITY_INSERT [dbo].[tblSample] OFF
GO
SET IDENTITY_INSERT [dbo].[tblUser] ON 

INSERT [dbo].[tblUser] ([UserId], [EmployeeId], [UName], [PW], [IsAdmin], [IsUpdate], [IsTest], [IsResponse], [IsApproval], [taphop], [chuyen], [chitieu], [suaketqua], [hoachat]) VALUES (31, 8, N'a', N'a', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[tblUser] OFF
GO
SET IDENTITY_INSERT [dbo].[tlkpDefault_Signature] ON 

INSERT [dbo].[tlkpDefault_Signature] ([SignatureId], [Org_Signature], [Performer_Signature]) VALUES (1, N'Trương Khoa', N'')
SET IDENTITY_INSERT [dbo].[tlkpDefault_Signature] OFF
GO
SET IDENTITY_INSERT [dbo].[tlkpNorm] ON 

INSERT [dbo].[tlkpNorm] ([NormId], [Name], [DeptId], [Method], [Standard], [Cost], [LastUpdate], [UserUpdate], [ghichu], [nhom], [thutu], [chunghieng], [dichvu], [camquan], [donvitinh], [ttqd], [qd47], [phanloai], [thutuqc01], [thutuqckhac], [thutuqc08]) VALUES (9, N'Độ D', 17, N'SMEWW 2130 B: 2017 (a)', N'≤ 12 NTU', 30000.0000, NULL, NULL, N'QCVN 011', 14, 5, 0, 0, 0, NULL, NULL, 0, N'Nước', 0, 0, 0)
INSERT [dbo].[tlkpNorm] ([NormId], [Name], [DeptId], [Method], [Standard], [Cost], [LastUpdate], [UserUpdate], [ghichu], [nhom], [thutu], [chunghieng], [dichvu], [camquan], [donvitinh], [ttqd], [qd47], [phanloai], [thutuqc01], [thutuqckhac], [thutuqc08]) VALUES (11, N'Màu D', 17, N'SMEWW 2120 C: 2017 (a)', N'≤ 125 TCU', 20000.0000, NULL, NULL, N'QCVN 01,012', 14, 6, 0, 0, 0, NULL, NULL, 0, N'Nước', 0, 0, 0)
INSERT [dbo].[tlkpNorm] ([NormId], [Name], [DeptId], [Method], [Standard], [Cost], [LastUpdate], [UserUpdate], [ghichu], [nhom], [thutu], [chunghieng], [dichvu], [camquan], [donvitinh], [ttqd], [qd47], [phanloai], [thutuqc01], [thutuqckhac], [thutuqc08]) VALUES (12, N'Mùi V', 17, N'SMEWW 2150 B - 2017', N'Không có  đ mùi lạ', 12000.0000, NULL, NULL, N'QCVN 01,02, Nước 1 thải', 14, 7, 0, 0, 0, NULL, NULL, 0, N'Nước', 0, 0, 0)
INSERT [dbo].[tlkpNorm] ([NormId], [Name], [DeptId], [Method], [Standard], [Cost], [LastUpdate], [UserUpdate], [ghichu], [nhom], [thutu], [chunghieng], [dichvu], [camquan], [donvitinh], [ttqd], [qd47], [phanloai], [thutuqc01], [thutuqckhac], [thutuqc08]) VALUES (14, N'Vị A', 17, N'SMEWW 2160 B - 2017', N'Không ff có vị lạ', 1000.0000, NULL, NULL, N'QCVN 02:2009', 14, 7, 0, 1, 0, NULL, NULL, 1, N'Nước', 0, 0, 0)
SET IDENTITY_INSERT [dbo].[tlkpNorm] OFF
GO
INSERT [dbo].[vqr_Appointment_Ticket] ([OrderNumber], [OrderDate], [ReturnDate], [OrderPerson], [Receiver], [Cust_Name], [Address], [Sample_Count], [Test_Count], [Test_Cost]) VALUES (N'013.05', CAST(N'2005-07-25T00:00:00' AS SmallDateTime), CAST(N'2005-12-22T00:00:00' AS SmallDateTime), N'Nguyen Truong Hau', N'Nguyen Van Trung', N'Cong ty Quang Cao GoldSun', N'128 Kim Ma, hanoi', 0, 0, NULL)
INSERT [dbo].[vqr_Appointment_Ticket] ([OrderNumber], [OrderDate], [ReturnDate], [OrderPerson], [Receiver], [Cust_Name], [Address], [Sample_Count], [Test_Count], [Test_Cost]) VALUES (N'015.05', CAST(N'2005-07-25T00:00:00' AS SmallDateTime), NULL, N'NGUYEN TRUONG DUONG', N'NGUYEN THI THU HANG', N'Cong ty dich  vu ky thuat dau khi', N'128 Nguyen Thai Hoc, Hanoi', 0, 0, NULL)
INSERT [dbo].[vqr_Appointment_Ticket] ([OrderNumber], [OrderDate], [ReturnDate], [OrderPerson], [Receiver], [Cust_Name], [Address], [Sample_Count], [Test_Count], [Test_Cost]) VALUES (N'016.05', CAST(N'2005-07-25T00:00:00' AS SmallDateTime), NULL, N'NGUYEN THI BICH HOA', N'NGUYEN VAN SON', N'Tổng công ty xây dựng công trình giao thông 5, thành phố Đà nẵng', N'120 Nguyễn Du, Thành phố đà nẵng', 0, 0, NULL)
INSERT [dbo].[vqr_Appointment_Ticket] ([OrderNumber], [OrderDate], [ReturnDate], [OrderPerson], [Receiver], [Cust_Name], [Address], [Sample_Count], [Test_Count], [Test_Cost]) VALUES (N'017.05', CAST(N'2005-07-26T00:00:00' AS SmallDateTime), NULL, N'Nguyen Tran Thanh', N'NGuyen Van Binh', N'Cong ty HongKing', N'120 Hoang Hoa Tham', 1, 2, 550000.0000)
GO
ALTER TABLE [dbo].[tblOrder] ADD  CONSTRAINT [DF_tblOrder_SaleOff]  DEFAULT ((0)) FOR [SaleOff]
GO
ALTER TABLE [dbo].[tblSample] ADD  CONSTRAINT [DF_tblSample_dichvu]  DEFAULT ((0)) FOR [dichvu]
GO
ALTER TABLE [dbo].[tblSample] ADD  CONSTRAINT [DF_tblSample_phiGTDD]  DEFAULT ((0)) FOR [phiGTDD]
GO
ALTER TABLE [dbo].[tblUser] ADD  CONSTRAINT [DF_tblUser_hoachat]  DEFAULT ((0)) FOR [hoachat]
GO
ALTER TABLE [dbo].[tblXetNghiem] ADD  CONSTRAINT [DF_tblXetNghiem_GiaiDoan]  DEFAULT ((1)) FOR [GiaiDoan]
GO
ALTER TABLE [dbo].[tcomSample_Test] ADD  CONSTRAINT [DF_tcomSample_Test_chuyen]  DEFAULT ((0)) FOR [chuyen]
GO
ALTER TABLE [dbo].[tcomSample_Test] ADD  CONSTRAINT [DF_tcomSample_Test_khongdat]  DEFAULT ((0)) FOR [khongdat]
GO
ALTER TABLE [dbo].[tcomSample_Test] ADD  CONSTRAINT [DF_tcomSample_Test_GiaiDoan]  DEFAULT ((1)) FOR [GiaiDoan]
GO
ALTER TABLE [dbo].[tcomSample_Test] ADD  CONSTRAINT [DF_tcomSample_Test_SoLanXN]  DEFAULT ((1)) FOR [SoLanXN]
GO
ALTER TABLE [dbo].[tlkpNorm] ADD  CONSTRAINT [DF_tlkpNorm_chunghieng]  DEFAULT ((0)) FOR [chunghieng]
GO
ALTER TABLE [dbo].[tlkpNorm] ADD  CONSTRAINT [DF_tlkpNorm_dichvu]  DEFAULT ((0)) FOR [dichvu]
GO
ALTER TABLE [dbo].[tlkpNorm] ADD  CONSTRAINT [DF_tlkpNorm_camquan]  DEFAULT ((0)) FOR [camquan]
GO
ALTER TABLE [dbo].[tlkpNorm] ADD  CONSTRAINT [DF_tlkpNorm_qd47]  DEFAULT ((0)) FOR [qd47]
GO
ALTER TABLE [dbo].[tlkpNorm] ADD  CONSTRAINT [DF_tlkpNorm_phanloai]  DEFAULT (N'Thực phẩm') FOR [phanloai]
GO
ALTER TABLE [dbo].[tlkpNorm] ADD  CONSTRAINT [DF_tlkpNorm_thutuqc01]  DEFAULT ((0)) FOR [thutuqc01]
GO
ALTER TABLE [dbo].[tlkpNorm] ADD  CONSTRAINT [DF_tlkpNorm_thutuqckhac]  DEFAULT ((0)) FOR [thutuqckhac]
GO
ALTER TABLE [dbo].[tlkpNorm] ADD  CONSTRAINT [DF_tlkpNorm_thutuqc08]  DEFAULT ((0)) FOR [thutuqc08]
GO
ALTER TABLE [dbo].[tblOrder]  WITH CHECK ADD  CONSTRAINT [FK_tblOrder_tblCustomer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[tblCustomer] ([CustomerId])
GO
ALTER TABLE [dbo].[tblOrder] CHECK CONSTRAINT [FK_tblOrder_tblCustomer]
GO
ALTER TABLE [dbo].[tblSample]  WITH CHECK ADD  CONSTRAINT [FK_tblSample_tblOrder] FOREIGN KEY([OrderId])
REFERENCES [dbo].[tblOrder] ([OrderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblSample] CHECK CONSTRAINT [FK_tblSample_tblOrder]
GO
ALTER TABLE [dbo].[tblXetNghiem]  WITH CHECK ADD  CONSTRAINT [FK_tblXetNghiem_tblHoaChat] FOREIGN KEY([HcId])
REFERENCES [dbo].[tblHoaChat] ([HcId])
GO
ALTER TABLE [dbo].[tblXetNghiem] CHECK CONSTRAINT [FK_tblXetNghiem_tblHoaChat]
GO
ALTER TABLE [dbo].[tblXetNghiem]  WITH CHECK ADD  CONSTRAINT [FK_tblXetNghiem_tlkpNorm] FOREIGN KEY([NormId])
REFERENCES [dbo].[tlkpNorm] ([NormId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblXetNghiem] CHECK CONSTRAINT [FK_tblXetNghiem_tlkpNorm]
GO
ALTER TABLE [dbo].[tcomNorm_Group]  WITH CHECK ADD  CONSTRAINT [FK_tcomNorm_Group_tlkpNorm] FOREIGN KEY([NormId])
REFERENCES [dbo].[tlkpNorm] ([NormId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tcomNorm_Group] CHECK CONSTRAINT [FK_tcomNorm_Group_tlkpNorm]
GO
ALTER TABLE [dbo].[tcomNorm_Group]  WITH CHECK ADD  CONSTRAINT [FK_tcomNorm_Group_tlkpNorm_Group] FOREIGN KEY([GroupId])
REFERENCES [dbo].[tlkpNorm_Group] ([GroupId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tcomNorm_Group] CHECK CONSTRAINT [FK_tcomNorm_Group_tlkpNorm_Group]
GO
ALTER TABLE [dbo].[tcomSample_Test]  WITH CHECK ADD  CONSTRAINT [FK_tcomSample_Test_tblSample] FOREIGN KEY([SampleId])
REFERENCES [dbo].[tblSample] ([SampleId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tcomSample_Test] CHECK CONSTRAINT [FK_tcomSample_Test_tblSample]
GO
ALTER TABLE [dbo].[tcomSample_Test]  WITH CHECK ADD  CONSTRAINT [FK_tcomSample_Test_tlkpNorm] FOREIGN KEY([NormId])
REFERENCES [dbo].[tlkpNorm] ([NormId])
GO
ALTER TABLE [dbo].[tcomSample_Test] CHECK CONSTRAINT [FK_tcomSample_Test_tlkpNorm]
GO
