USE [master]
GO
/****** Object:  Database [KILP]    Script Date: 4/26/2022 10:22:14 AM ******/
CREATE DATABASE [KILP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KILP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\KILP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KILP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\KILP_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KILP] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KILP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KILP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KILP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KILP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KILP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KILP] SET ARITHABORT OFF 
GO
ALTER DATABASE [KILP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KILP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KILP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KILP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KILP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KILP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KILP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KILP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KILP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KILP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KILP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KILP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KILP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KILP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KILP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KILP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KILP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KILP] SET RECOVERY FULL 
GO
ALTER DATABASE [KILP] SET  MULTI_USER 
GO
ALTER DATABASE [KILP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KILP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KILP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KILP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KILP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KILP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'KILP', N'ON'
GO
ALTER DATABASE [KILP] SET QUERY_STORE = OFF
GO
USE [KILP]
GO
/****** Object:  Table [dbo].[Beneficiary]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beneficiary](
	[BeneficiaryId] [bigint] IDENTITY(1,1) NOT NULL,
	[BeneficiaryXref] [nvarchar](max) NOT NULL,
	[OrganizationId] [bigint] NULL,
	[PetitionerId] [bigint] NULL,
	[PrimaryBeneficiaryXref] [nvarchar](max) NULL,
	[PrimaryBeneficiaryLastName] [nvarchar](max) NULL,
	[PrimaryBeneficiaryFirstName] [nvarchar](max) NULL,
	[CitizenshipCountry] [nvarchar](max) NULL,
	[RelationType] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[InactiveDate] [datetime] NULL,
	[FirmClientNumber] [nvarchar](max) NULL,
	[BeneficiaryType] [nvarchar](max) NULL,
	[Prefix] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[MiddleName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Suffix] [nvarchar](max) NULL,
	[OtherFirstName] [nvarchar](max) NULL,
	[OtherMiddleName] [nvarchar](max) NULL,
	[OtherLastName] [nvarchar](max) NULL,
	[WorkEmail] [nvarchar](max) NULL,
	[PersonalEmail] [nvarchar](max) NULL,
	[HomePhone] [nvarchar](max) NULL,
	[WorkPhone] [nvarchar](max) NULL,
	[Mobile] [nvarchar](max) NULL,
	[IsRovingEmployee] [bit] NULL,
	[IsWorkOffsite] [bit] NULL,
	[IsWorkAtMultipleSites] [bit] NULL,
	[Gender] [nvarchar](max) NULL,
	[SsnNumber] [nvarchar](max) NULL,
	[AlienNumber] [nvarchar](max) NULL,
	[BirthDate] [datetime] NULL,
	[BirthCity] [nvarchar](max) NULL,
	[BirthStateProvince] [nvarchar](max) NULL,
	[BirthCountry] [nvarchar](max) NULL,
	[MaritalStatus] [nvarchar](max) NULL,
	[SpouseBirthCountry] [nvarchar](max) NULL,
	[IsInRemovalProceeding] [bit] NULL,
	[MostRecentUSEntryDate] [datetime] NULL,
	[MostRecentUSEntryCity] [nvarchar](max) NULL,
	[MostRecentUSEntryState] [nvarchar](max) NULL,
	[HasMostRecentUSEntryAdmitted] [bit] NULL,
	[MostRecentUSDepartureDate] [datetime] NULL,
	[I94FirstName] [nvarchar](max) NULL,
	[I94MiddleName] [nvarchar](max) NULL,
	[I94LastName] [nvarchar](max) NULL,
	[I94Number] [nvarchar](max) NULL,
	[I94Status] [nvarchar](max) NULL,
	[I94ValidFromDate] [datetime] NULL,
	[I94ExpirationDate] [datetime] NULL,
	[MostRecentUSI94EntryStatus] [nvarchar](max) NULL,
	[MostRecentI797Status] [nvarchar](max) NULL,
	[MostRecentI797ValidFromDate] [datetime] NULL,
	[MaxOutDateNote] [nvarchar](max) NULL,
	[I797ExpirationDate] [datetime] NULL,
	[I797ReceiptNumber] [nvarchar](max) NULL,
	[MostRecentI797IssueApprovalDate] [datetime] NULL,
	[InitialHlEntryDate] [datetime] NULL,
	[FinalNivDate] [datetime] NULL,
	[FifthYearEndDate] [datetime] NULL,
	[EndorsedI129sExpirationDate] [datetime] NULL,
	[FormI129sRequestedExpirationDate] [datetime] NULL,
	[VisaPedDate] [datetime] NULL,
	[VisaIssueApprovalDate] [datetime] NULL,
	[VisaCategory] [nvarchar](max) NULL,
	[VisaType] [nvarchar](max) NULL,
	[VisaValidFromDate] [datetime] NULL,
	[VisaExpirationDate] [datetime] NULL,
	[PassportFirstName] [nvarchar](max) NULL,
	[PassportMiddleName] [nvarchar](max) NULL,
	[PassportLastName] [nvarchar](max) NULL,
	[PassportNumber] [nvarchar](max) NULL,
	[PassportCountry] [nvarchar](max) NULL,
	[PassportIssuedInCountry] [nvarchar](max) NULL,
	[PassportIssueApprovalDate] [datetime] NULL,
	[PassportValidFromDate] [datetime] NULL,
	[PassportExpirationDate] [datetime] NULL,
	[MostRecentI94EntryPassportNumber] [nvarchar](max) NULL,
	[SevisNumber] [nvarchar](max) NULL,
	[CPTValidFromDate] [datetime] NULL,
	[CPTExpirationDate] [datetime] NULL,
	[F1OptValidFromDate] [datetime] NULL,
	[F1OptExpirationDate] [datetime] NULL,
	[IsStemEligible] [bit] NULL,
	[F1StemOptValidFromDate] [datetime] NULL,
	[F1StemOptExpirationDate] [datetime] NULL,
	[HasPreviouslyHeldF1Status] [bit] NULL,
	[EadType] [nvarchar](max) NULL,
	[EadNumber] [nvarchar](max) NULL,
	[EadValidFromDate] [datetime] NULL,
	[EadExpirationDate] [datetime] NULL,
	[I140FileByDate] [datetime] NULL,
	[AdvanceParoleValidFromDate] [datetime] NULL,
	[AdvanceParoleExpirationDate] [datetime] NULL,
	[EadApValidFromDate] [datetime] NULL,
	[EadApExpirationDate] [datetime] NULL,
	[GreenCardValidFromDate] [datetime] NULL,
	[GreenCardExpirationDate] [datetime] NULL,
	[ReEntryPermitValidFromDate] [datetime] NULL,
	[ReEntryPermitExpirationDate] [datetime] NULL,
	[I90FilingEligibilityDate] [datetime] NULL,
	[I751FilingEligibilityDate] [datetime] NULL,
	[N400FilingEligibilityDate] [datetime] NULL,
	[HasPreviouslyHeldJVisaStatus] [bit] NULL,
	[PreviouslyHeldJVisaType] [nvarchar](max) NULL,
	[JVisaType] [nvarchar](max) NULL,
	[JVisaStatusValidFromDate] [datetime] NULL,
	[JVisaStatusExpirationDate] [datetime] NULL,
	[Ds2019IssueApprovalDate] [datetime] NULL,
	[Ds2019ValidFromDate] [datetime] NULL,
	[Ds2019ExpirationDate] [datetime] NULL,
	[HasHomeStayRequirement] [bit] NULL,
	[HasHomeStayRequirementWaiverReceived] [bit] NULL,
	[PrProcessActualStartDate] [datetime] NULL,
	[PrProcessTargetStartDate] [datetime] NULL,
	[HasPrProcessInitiated] [bit] NULL,
	[PermCaseFiledDate] [datetime] NULL,
	[PermCaseApprovedDate] [datetime] NULL,
	[PermPriorityDate] [datetime] NULL,
	[PermPriorityCategory] [nvarchar](max) NULL,
	[PermPriorityCountry] [nvarchar](max) NULL,
	[PermEta9089ExpirationDate] [datetime] NULL,
	[I140CaseFiledDate] [datetime] NULL,
	[I140CaseApprovedDate] [datetime] NULL,
	[I140PetitionerName] [nvarchar](max) NULL,
	[I140PriorityDate] [datetime] NULL,
	[I140PriorityCategory] [nvarchar](max) NULL,
	[I140PriorityCountry] [nvarchar](max) NULL,
	[HasPriorEmployerApprovedI140] [bit] NULL,
	[PriorEmployerI140PetitionerName] [nvarchar](max) NULL,
	[PriorEmployerI140PriorityDate] [datetime] NULL,
	[PriorEmployerI140PriorityCategory] [nvarchar](max) NULL,
	[PriorEmployerI140PriorityCountry] [nvarchar](max) NULL,
	[AosCaseFiledDate] [datetime] NULL,
	[AosCaseApprovedDate] [datetime] NULL,
	[ManagingAttorney] [nvarchar](max) NULL,
	[TravelDocumentIssueCountry] [nvarchar](max) NULL,
	[MostRecentUSEntryTravelDocumentNumber] [nvarchar](max) NULL,
	[NonimmigrantVisaNumber] [nvarchar](max) NULL,
	[Ethnicity] [nvarchar](max) NULL,
	[Race] [nvarchar](max) NULL,
	[HeightFeet] [int] NULL,
	[HeightInches] [int] NULL,
	[EyeColor] [nvarchar](max) NULL,
	[HairColor] [nvarchar](max) NULL,
	[WeightLbs] [int] NULL,
	[ImmigrationStatusValidFromDate] [datetime] NULL,
	[ImmigrationStatusExpirationDate] [nvarchar](max) NULL,
	[MostRecentPassportLastName] [nvarchar](max) NULL,
	[MostRecentPassportFirstName] [nvarchar](max) NULL,
	[MostRecentPassportNumber] [nvarchar](max) NULL,
	[MostRecentPassportIssuingCountry] [nvarchar](max) NULL,
	[MostRecentPassportMiddleName] [nvarchar](max) NULL,
	[MostRecentPassportValidFromDate] [datetime] NULL,
	[EADAPType] [nvarchar](max) NULL,
	[MostRecentPassportExpirationDate] [datetime] NULL,
	[ImmigrationStatus] [nvarchar](max) NULL,
	[WeightKg] [int] NULL,
	[SourceCreatedBy] [nvarchar](max) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](max) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
	[from_name] [nvarchar](max) NULL,
	[is_primary_beneficiary] [int] NOT NULL,
	[Beneficiary_Xref2] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[Current_Immigration_Status] [nvarchar](max) NULL,
	[CurrentImmigrationStatusExpirationDate2] [datetime] NULL,
	[I129SEndDate] [datetime] NULL,
	[GreenCardMethod] [nvarchar](max) NULL,
	[current_employer] [nvarchar](max) NULL,
	[Visa_GreenCardMethod] [nvarchar](max) NULL,
	[PriorityDate1Note] [nvarchar](max) NULL,
	[PrimaryBeneficiaryFullName] [nvarchar](max) NULL,
 CONSTRAINT [PK__Benefici__3FBA95F566CD4BAD] PRIMARY KEY CLUSTERED 
(
	[BeneficiaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryAddress]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryAddress](
	[BeneficiaryAddressId] [bigint] IDENTITY(1,1) NOT NULL,
	[BeneficiaryId] [bigint] NOT NULL,
	[AddressCountry] [nvarchar](max) NULL,
	[AddressType] [nvarchar](max) NULL,
	[AddressUnitType] [nvarchar](max) NULL,
	[Address1] [nvarchar](255) NULL,
	[AptSteFlr] [char](10) NULL,
	[Address2] [nvarchar](255) NULL,
	[City] [nvarchar](75) NULL,
	[County] [nvarchar](75) NULL,
	[StateProvince] [nvarchar](75) NULL,
	[ZipCode] [nvarchar](15) NULL,
	[Country] [nvarchar](75) NULL,
	[AddressFromDate] [datetime] NULL,
	[AddressToDate] [datetime] NULL,
	[IsLastResidenceAbroad] [bit] NULL,
	[SourceCreatedBy] [nvarchar](50) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](50) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Benefici__A0E4F3B5F0498ACE] PRIMARY KEY CLUSTERED 
(
	[BeneficiaryAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryEducation]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryEducation](
	[BeneficiaryEducationId] [bigint] IDENTITY(1,1) NOT NULL,
	[BeneficiaryId] [bigint] NOT NULL,
	[CollegeUniversityName] [nvarchar](350) NULL,
	[DegreeType] [nvarchar](150) NULL,
	[FieldOfStudy] [nvarchar](255) NULL,
	[DegreeReceivedDate] [datetime] NULL,
	[IsHighestDegree] [bit] NULL,
	[USOrForeignDegree] [nvarchar](50) NULL,
	[ProgramLength] [int] NULL,
	[Address1] [nvarchar](255) NULL,
	[AptSteFlr] [char](10) NULL,
	[Address2] [nvarchar](255) NULL,
	[Address_City] [nvarchar](75) NULL,
	[StateProvince] [nvarchar](75) NULL,
	[ZipCode] [nvarchar](15) NULL,
	[Country] [nvarchar](75) NULL,
	[SourceCreatedBy] [nvarchar](50) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](50) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BeneficiaryEducationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryEmployment]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryEmployment](
	[BeneficiaryEmploymentId] [int] IDENTITY(1,1) NOT NULL,
	[BeneficiaryId] [bigint] NOT NULL,
	[EmployeeId] [nvarchar](max) NULL,
	[EmploymentType] [nvarchar](max) NULL,
	[EmployeeStatus] [nvarchar](max) NULL,
	[EmployerName] [nvarchar](max) NULL,
	[HireDate] [datetime] NULL,
	[TerminationDate] [datetime] NULL,
	[ReHireDate] [datetime] NULL,
	[IsCurrent] [bit] NULL,
	[TerminationReason] [nvarchar](max) NULL,
	[OverallYearsofExperience] [int] NULL,
	[JobTitle] [nvarchar](max) NULL,
	[FunctionalJobTitleInternal] [nvarchar](max) NULL,
	[Address1] [nvarchar](max) NULL,
	[AptSteFlr] [nvarchar](max) NULL,
	[Address2] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[StateProvince] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[JobDuties] [nvarchar](max) NULL,
	[HrbpId] [nvarchar](max) NULL,
	[HrbpFirstName] [nvarchar](max) NULL,
	[HrbpMiddleName] [nvarchar](max) NULL,
	[HrbpLastName] [nvarchar](max) NULL,
	[HrbpEmail] [nvarchar](max) NULL,
	[SupervisorManagerId] [nvarchar](max) NULL,
	[SupervisorManagerFirstName] [nvarchar](max) NULL,
	[SupervisorManagerMiddleName] [nvarchar](max) NULL,
	[SupervisorManagerLastName] [nvarchar](max) NULL,
	[SupervisorManagerEmail] [nvarchar](max) NULL,
	[DepartmentCode] [nvarchar](max) NULL,
	[DepartmentName] [nvarchar](max) NULL,
	[BusinessUnit] [nvarchar](max) NULL,
	[CostCenterCode] [nvarchar](max) NULL,
	[CostCenterCodeName] [nvarchar](max) NULL,
	[ProjectCode] [nvarchar](max) NULL,
	[ProjectName] [nvarchar](max) NULL,
	[EndClient] [nvarchar](max) NULL,
	[SourceCreatedBy] [nvarchar](max) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](max) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
	[Department] [nvarchar](max) NULL,
	[Department_Group] [nvarchar](max) NULL,
	[Department_Number] [nvarchar](max) NULL,
	[Business_Unit_Code] [nvarchar](max) NULL,
	[Client_Billing_Code] [nvarchar](max) NULL,
	[ManagerName] [nvarchar](max) NULL,
	[ManagerEmail] [nvarchar](max) NULL,
	[SecondLevelManager] [nvarchar](max) NULL,
	[SecondLevelManagerEmail] [nvarchar](max) NULL,
	[BusinessPartnerName] [nvarchar](max) NULL,
	[BusinessPartnerEmail] [nvarchar](max) NULL,
	[CostCenter] [nvarchar](max) NULL,
	[CostCenterNumber] [nvarchar](max) NULL,
	[ClientBillingCode] [nvarchar](max) NULL,
	[BusinessUnitCode] [nvarchar](max) NULL,
	[JobCode] [nvarchar](max) NULL,
	[EmploymentStartDate] [nvarchar](max) NULL,
	[EmploymentEndDate] [nvarchar](max) NULL,
	[WorkAddressFull] [nvarchar](max) NULL,
	[WorkLocationCity] [nvarchar](max) NULL,
	[WorkLocationState] [nvarchar](max) NULL,
 CONSTRAINT [PK__Benefici__0C7056D5DAB60B79] PRIMARY KEY CLUSTERED 
(
	[BeneficiaryEmploymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryFamily]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryFamily](
	[BeneficiaryFamilyId] [bigint] IDENTITY(1,1) NOT NULL,
	[BeneficiaryId] [bigint] NOT NULL,
	[RelationBeneficiaryId] [bigint] NOT NULL,
	[RelationType] [nvarchar](100) NOT NULL,
	[SourceCreatedBy] [nvarchar](50) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](50) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BeneficiaryFamilyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryPriorityDate]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryPriorityDate](
	[BeneficiaryId] [bigint] NOT NULL,
	[Priority1Date] [datetime] NULL,
	[Priority1Category] [nvarchar](75) NULL,
	[Priority1Country] [nvarchar](75) NULL,
	[Priority2Date] [datetime] NULL,
	[Priority2Category] [nvarchar](75) NULL,
	[Priority2Country] [nvarchar](75) NULL,
	[Priority3Date] [datetime] NULL,
	[Priority3Category] [nvarchar](75) NULL,
	[Priority3Country] [nvarchar](75) NULL,
	[Priority4Date] [datetime] NULL,
	[Priority4Category] [nvarchar](75) NULL,
	[Priority4Country] [nvarchar](75) NULL,
	[Priority5Date] [datetime] NULL,
	[Priority5Category] [nvarchar](75) NULL,
	[Priority5Country] [nvarchar](75) NULL,
	[SourceCreatedBy] [nvarchar](50) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](50) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Case]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Case](
	[CaseId] [bigint] IDENTITY(1,1) NOT NULL,
	[CaseXref] [nvarchar](max) NOT NULL,
	[OrganizationId] [bigint] NULL,
	[BeneficiaryId] [bigint] NOT NULL,
	[CaseType] [nvarchar](max) NULL,
	[RFEAuditDueDate] [datetime] NULL,
	[RFEAuditSubmittedDate] [datetime] NULL,
	[RFEAuditReceivedDate] [datetime] NULL,
	[CasePetitionName] [nvarchar](max) NULL,
	[PetitionerSponsorId] [bigint] NULL,
	[ServiceType] [nvarchar](max) NULL,
	[OriginatingCountry] [nvarchar](max) NULL,
	[DestinationCountry] [nvarchar](max) NULL,
	[CaseDescription] [nvarchar](max) NULL,
	[CaseOpenDate] [datetime] NULL,
	[IsPPEligibleAtFiling] [bit] NULL,
	[HasFiledByPP] [bit] NULL,
	[PPType] [nvarchar](max) NULL,
	[CaseFiledDate] [datetime] NULL,
	[ReceiptDateReceivedByGovt] [datetime] NULL,
	[ReceiptNumber] [nvarchar](max) NULL,
	[ReceiptStatus] [nvarchar](max) NULL,
	[CaseApprovedDate] [datetime] NULL,
	[CaseValidFromDate] [datetime] NULL,
	[CaseExpirationDate] [datetime] NULL,
	[PriorityDate] [datetime] NULL,
	[PriorityCategory] [nvarchar](max) NULL,
	[PriorityCountry] [nvarchar](max) NULL,
	[PetitionXref] [nvarchar](max) NULL,
	[CasePrimaryCaseManager] [nvarchar](max) NULL,
	[CasePrimaryAttorney] [nvarchar](max) NULL,
	[CaseReviewingAttorney] [nvarchar](max) NULL,
	[CaseWithdrawnDate] [datetime] NULL,
	[CaseClosedDate] [datetime] NULL,
	[CaseDeniedDate] [datetime] NULL,
	[DenialReason] [nvarchar](max) NULL,
	[CaseComments] [nvarchar](max) NULL,
	[PrimaryCaseStatus] [nvarchar](max) NULL,
	[SecondaryCaseStatus] [nvarchar](max) NULL,
	[SecondaryCaseStatusDate] [datetime] NULL,
	[LastStepCompleted] [text] NULL,
	[LastStepCompletedDate] [datetime] NULL,
	[NextStepAction] [nvarchar](max) NULL,
	[NextStepActionDueDate] [datetime] NULL,
	[NextStepActionToBeTakenBy] [nvarchar](max) NULL,
	[NotesInternal] [nvarchar](max) NULL,
	[NotesExternal] [nvarchar](max) NULL,
	[NotesConfidential] [nvarchar](max) NULL,
	[AttorneyPrimaryIdXref] [nvarchar](max) NULL,
	[AttorneyPrimaryEMPId] [nvarchar](max) NULL,
	[AttorneyPrimaryFirstName] [nvarchar](max) NULL,
	[AttorneyPrimaryMiddleName] [nvarchar](max) NULL,
	[AttorneyPrimaryLastName] [nvarchar](max) NULL,
	[AttorneyPrimaryCaseCreditPercentage] [int] NULL,
	[Attorney2IdXref] [nvarchar](max) NULL,
	[Attorney2EMPId] [nvarchar](max) NULL,
	[Attorney2FirstName] [nvarchar](max) NULL,
	[Attorney2MiddleName] [nvarchar](max) NULL,
	[Attorney2LastName] [nvarchar](max) NULL,
	[CaseWorkerPrimaryCaseCreditPercentage] [int] NULL,
	[CaseWorkerPrimaryIdXref] [nvarchar](max) NULL,
	[CaseWorkerPrimaryEMPId] [nvarchar](max) NULL,
	[CaseWorkerPrimaryFirstName] [nvarchar](max) NULL,
	[CaseWorkerPrimaryMiddleName] [nvarchar](max) NULL,
	[CaseWorkerPrimaryLastName] [nvarchar](max) NULL,
	[CaseWorker2CaseCreditPercentage] [int] NULL,
	[CaseWorker2IdXref] [nvarchar](max) NULL,
	[CaseWorker2EMPId] [nvarchar](max) NULL,
	[CaseWorker2FirstName] [nvarchar](max) NULL,
	[CaseWorker2MiddleName] [nvarchar](max) NULL,
	[CaseWorker2LastName] [nvarchar](max) NULL,
	[CaseWorker3CaseCreditPercentage] [int] NULL,
	[CaseWorker3IdXref] [nvarchar](max) NULL,
	[CaseWorker3EMPId] [nvarchar](max) NULL,
	[CaseWorker3FirstName] [nvarchar](max) NULL,
	[CaseWorker3MiddleName] [nvarchar](max) NULL,
	[CaseWorker3LastName] [nvarchar](max) NULL,
	[CaseInitiationDate] [datetime] NULL,
	[AllDocsReceivedDate] [datetime] NULL,
	[HrbpId] [nvarchar](max) NULL,
	[HrbpFirstName] [nvarchar](max) NULL,
	[HrbpMiddleName] [nvarchar](max) NULL,
	[HrbpLastName] [nvarchar](max) NULL,
	[HrbpEmail] [nvarchar](max) NULL,
	[SupervisorManagerId] [nvarchar](max) NULL,
	[SupervisorManagerFirstName] [nvarchar](max) NULL,
	[SupervisorManagerMiddleName] [nvarchar](max) NULL,
	[SupervisorManagerLastName] [nvarchar](max) NULL,
	[SupervisorManagerEmail] [nvarchar](max) NULL,
	[DepartmentCode] [nvarchar](max) NULL,
	[DepartmentName] [nvarchar](max) NULL,
	[BusinessUnit] [nvarchar](max) NULL,
	[CostCenterCode] [nvarchar](max) NULL,
	[CostCenterCodeName] [nvarchar](max) NULL,
	[ProjectCode] [nvarchar](max) NULL,
	[ProjectName] [nvarchar](max) NULL,
	[SourceCreatedBy] [nvarchar](max) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](max) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
	[from_name] [nvarchar](max) NULL,
	[CaseReceivedDate] [nvarchar](max) NULL,
	[RFEDocsReqestedDate] [nvarchar](max) NULL,
	[RFEDocsReceivedDate] [nvarchar](max) NULL,
	[PERMAuditReceivedDate] [nvarchar](max) NULL,
	[PERMAuditSubmittedDate] [nvarchar](max) NULL,
	[DaysSinceLastStepCompleted] [nvarchar](max) NULL,
	[visa_preference_category] [nvarchar](max) NULL,
	[visa_priority_country] [nvarchar](max) NULL,
	[PartnerXref] [nvarchar](max) NULL,
	[PartnerLastName] [nvarchar](max) NULL,
	[PartnerFirstName] [nvarchar](max) NULL,
	[AssociateXref] [nvarchar](max) NULL,
	[AssociateLastName] [nvarchar](max) NULL,
	[AssociateFirstName] [nvarchar](max) NULL,
	[SupervisoryParalegalXref] [nvarchar](max) NULL,
	[SupervisoryParalegalLastName] [nvarchar](max) NULL,
	[SupervisoryParalegalFirstName] [nvarchar](max) NULL,
	[ParalegalXref] [nvarchar](max) NULL,
	[ParalegalLastName] [nvarchar](max) NULL,
	[ParalegalFirstName] [nvarchar](max) NULL,
	[AccountManagerXref] [nvarchar](max) NULL,
	[AccountManagerLastName] [nvarchar](max) NULL,
	[AccountManagerFirstName] [nvarchar](max) NULL,
	[SpecialInstructionFlag] [nvarchar](max) NULL,
	[SpecialInstructionInfo] [nvarchar](max) NULL,
	[ClientBillingCode] [nvarchar](max) NULL,
	[OnlineIntakeDate] [nvarchar](max) NULL,
	[questionnairesenttomanager] [nvarchar](max) NULL,
	[questionnairessenttofn] [nvarchar](max) NULL,
	[followupwithfnforrequestedinformation] [nvarchar](max) NULL,
	[questionnairecompletedandreturnedbymanager] [nvarchar](max) NULL,
	[questionnairecompletedandreturnedbyfn] [nvarchar](max) NULL,
	[employersubmissionquestionnairecompleted] [nvarchar](max) NULL,
	[allpetitioningcompanyinforeceived] [nvarchar](max) NULL,
	[allfndocsreceived] [nvarchar](max) NULL,
	[fncompletedquestionnairesandacknowledgement] [nvarchar](max) NULL,
	[fnquestionnairescompleted] [nvarchar](max) NULL,
	[lcafiled] [nvarchar](max) NULL,
	[lcacasenumber] [nvarchar](max) NULL,
	[lcacertified] [nvarchar](max) NULL,
	[formsanddocumentationprepped] [nvarchar](max) NULL,
	[formsanddocumentationsubmittedforsignature] [nvarchar](max) NULL,
	[signedformsandletterreceived] [nvarchar](max) NULL,
	[dateaosformssentforsignature] [nvarchar](max) NULL,
	[datesignedaosformsreceived] [nvarchar](max) NULL,
	[targetfiledate] [nvarchar](max) NULL,
	[applicationfiled] [nvarchar](max) NULL,
	[applicationfiledwithcis] [nvarchar](max) NULL,
	[petitionfiledwithcis] [nvarchar](max) NULL,
	[formi129filedwithcis] [nvarchar](max) NULL,
	[aosapplicationfiled] [nvarchar](max) NULL,
	[tnpacketsenttofnforpoeprocessing] [nvarchar](max) NULL,
	[appealmotionduedate] [nvarchar](max) NULL,
	[appealmotionfiled] [nvarchar](max) NULL,
	[consularinterviewdate] [nvarchar](max) NULL,
	[supplementalbriefdocsfiled] [nvarchar](max) NULL,
	[docketdatebalca] [nvarchar](max) NULL,
	[datewithdrawrequestsenttouscis] [nvarchar](max) NULL,
	[withdrawalrequestconfirmedbydoluscis] [nvarchar](max) NULL,
	[approvalpackagesent] [nvarchar](max) NULL,
	[h1bregistrationsubmitted] [nvarchar](max) NULL,
	[h1bregistrationresult] [nvarchar](max) NULL,
	[h1bcapregistrationselected] [nvarchar](max) NULL,
	[I907filedupgradedtopremprocessing] [nvarchar](max) NULL,
	[premiumprocessingfeereceivedfromfn] [nvarchar](max) NULL,
	[receipts] [nvarchar](max) NULL,
	[I485receiptdate] [nvarchar](max) NULL,
	[I485jportabilityreceiptdate] [nvarchar](max) NULL,
	[I131receiptdate] [nvarchar](max) NULL,
	[apreceiptnoticereceived] [nvarchar](max) NULL,
	[eadreceiptnoticereceived] [nvarchar](max) NULL,
	[petitioningjobtitle] [nvarchar](max) NULL,
	[petitioningjoblocation] [nvarchar](max) NULL,
	[permmemosenttoemployer] [nvarchar](max) NULL,
	[approvalofpermmemoreceived] [nvarchar](max) NULL,
	[employeeworkexperiencechartsent] [nvarchar](max) NULL,
	[employeeworkexperiencechartreceived] [nvarchar](max) NULL,
	[employmentverificationletterssenttoemployee] [nvarchar](max) NULL,
	[signedemploymentverificationlettersreceived] [nvarchar](max) NULL,
	[prevailingwagedeterminationrequestsubmittedtodol] [nvarchar](max) NULL,
	[prevailingwagedeterminationissuedbydol] [nvarchar](max) NULL,
	[recruitmentinstructionssenttocompany] [nvarchar](max) NULL,
	[joborderplacedwithswa] [nvarchar](max) NULL,
	[noticeoffilingposted] [nvarchar](max) NULL,
	[intranetnoticeoffilingposted] [nvarchar](max) NULL,
	[noticeoffilingremovedsigned] [nvarchar](max) NULL,
	[intranetnoticeoffilingremoved] [nvarchar](max) NULL,
	[completedevaluationquestionnairesandresumesreceived] [nvarchar](max) NULL,
	[recruitmentreportsenttocompany] [nvarchar](max) NULL,
	[recruitmentreportreceived] [nvarchar](max) NULL,
	[form9089senttofnandemployer] [nvarchar](max) NULL,
	[editstoform9089receivedfromfnandemployer] [nvarchar](max) NULL,
	[form9089submittedtodol] [nvarchar](max) NULL,
	[inputcallconducted] [nvarchar](max) NULL,
	[inputstatementreceived] [nvarchar](max) NULL,
	[casestrategyandlettersplansent] [nvarchar](max) NULL,
	[longlettersenttofn] [nvarchar](max) NULL,
	[shortletterssenttofn] [nvarchar](max) NULL,
	[numberoftotalapplicants] [nvarchar](max) NULL,
	[numberofnonusworkers] [nvarchar](max) NULL,
	[numberofphonescreensconducted] [nvarchar](max) NULL,
	[numberofmanagerinterviewsconducted] [nvarchar](max) NULL,
	[IsCurrentProcess] [nvarchar](max) NULL,
	[CurrentProcessName] [nvarchar](max) NULL,
	[_1stsundayadplaced] [nvarchar](max) NULL,
	[_2ndsundayadplaced] [nvarchar](max) NULL,
	[_1stadditionalrecruitmentstepplaced] [nvarchar](max) NULL,
	[_2ndadditionalrecruitmentstepplaced] [nvarchar](max) NULL,
	[_3rdadditionalrecruitmentstepplaced] [nvarchar](max) NULL,
	[datedcopiesofallrecruitmentreceived] [nvarchar](max) NULL,
 CONSTRAINT [PK__Case__6CAE524CABDB0583] PRIMARY KEY CLUSTERED 
(
	[CaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseETA9089]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseETA9089](
	[PERMDOLCaseNumber] [nvarchar](255) NULL,
	[PERMFilingDate] [date] NULL,
	[PERMCertificationDate] [date] NULL,
	[PERMValidFrom] [date] NULL,
	[PERMValidTo] [date] NULL,
	[PetitionerName] [nvarchar](255) NULL,
	[PetitionerAddress1] [nvarchar](255) NULL,
	[PetitionerAddress2] [nvarchar](255) NULL,
	[PetitionerCity] [nvarchar](255) NULL,
	[PetitionerState] [nvarchar](255) NULL,
	[PetitionerZipCode] [nvarchar](255) NULL,
	[PetitionerCountry] [nvarchar](255) NULL,
	[PetitionerPhone] [nvarchar](255) NULL,
	[PetitionerPhoneExt] [nvarchar](255) NULL,
	[NumberOfEmployees] [int] NULL,
	[YearCommencedBusiness] [int] NULL,
	[FEIN] [nvarchar](255) NULL,
	[NAICSCode] [int] NULL,
	[PetitionerContactLastName] [nvarchar](255) NULL,
	[PetitionerContactFirstName] [nvarchar](255) NULL,
	[PetitionerContactMiddleInitial] [nvarchar](255) NULL,
	[PetitionerContactAddress1] [nvarchar](255) NULL,
	[PetitonerContactAddress2] [nvarchar](255) NULL,
	[PetitionerContactCity] [nvarchar](255) NULL,
	[PetitionerContactState] [nvarchar](255) NULL,
	[PetitionerContactZipCode] [nvarchar](255) NULL,
	[PetitionerContactCountry] [nvarchar](255) NULL,
	[PetitionerContactPhoneNumber] [nvarchar](255) NULL,
	[PetitionerContactPhoneExt] [nvarchar](255) NULL,
	[PetitionerContactEmail] [nvarchar](255) NULL,
	[AttorneyAgentLastName] [nvarchar](255) NULL,
	[AttorneyAgentFirstName] [nvarchar](255) NULL,
	[AttorneyAgentMiddleInitial] [nvarchar](255) NULL,
	[AttorneyAgentFirmName] [nvarchar](255) NULL,
	[AttorneyAgentFirmFEIN] [nvarchar](255) NULL,
	[AttorneyAgentAddress1] [nvarchar](255) NULL,
	[AttorneyAgentAddress2] [nvarchar](255) NULL,
	[AttorneyAgentCity] [nvarchar](255) NULL,
	[AttorneyAgentState] [nvarchar](255) NULL,
	[AttorneyAgentZipCode] [nvarchar](255) NULL,
	[AttorneyAgentCountry] [nvarchar](255) NULL,
	[AttorneyAgentPhoneNumber] [nvarchar](255) NULL,
	[AttorneyAgentPhoneExt] [nvarchar](255) NULL,
	[AttorneyAgentEmail] [nvarchar](255) NULL,
	[SOCCODE] [nvarchar](255) NULL,
	[JobTitle] [nvarchar](255) NULL,
	[JobDuties] [nvarchar](255) NULL,
	[WorkLocationAddress1] [nvarchar](255) NULL,
	[WorkLocationAddress2] [nvarchar](255) NULL,
	[WorkLocationCity] [nvarchar](255) NULL,
	[WorkLocationState] [nvarchar](255) NULL,
	[WorkLocationZipCode] [nvarchar](255) NULL,
	[OfferedWageFrom] [nvarchar](255) NULL,
	[OfferedWageTo] [nvarchar](255) NULL,
	[OfferedWageType] [nvarchar](255) NULL,
	[BeneficiaryLastName] [nvarchar](255) NULL,
	[BeneficiaryFirstName] [nvarchar](255) NULL,
	[BeneficiaryMiddleName] [nvarchar](255) NULL,
	[BeneficiaryAddress1] [nvarchar](255) NULL,
	[BeneficiaryAddress2] [nvarchar](255) NULL,
	[BeneficiaryAddressCity] [nvarchar](255) NULL,
	[BeneficiaryAddressState] [nvarchar](255) NULL,
	[BeneficiaryAddressZipCode] [nvarchar](255) NULL,
	[BeneficiaryAddressCountry] [nvarchar](255) NULL,
	[BeneficiaryDateofBirth] [date] NULL,
	[BeneficiaryCountryofBirth] [nvarchar](255) NULL,
	[BeneficiaryCountryofCitizenship] [nvarchar](255) NULL,
	[BeneficiaryAlienNumber] [nvarchar](255) NULL,
	[BeneficiaryClassofAdmission] [nvarchar](255) NULL,
	[BeneficiaryI94Number] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseLCA]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseLCA](
	[LCACaseNumber] [nvarchar](max) NOT NULL,
	[BeneficiaryXref] [nvarchar](max) NULL,
	[CaseXref] [nvarchar](max) NULL,
	[LCACertificationDate] [datetime] NULL,
	[LCACertificationValidFrom] [datetime] NULL,
	[LCACertificationValidTo] [datetime] NULL,
	[LCACaseStatus] [nvarchar](max) NULL,
	[LCAVisaClassification] [nvarchar](max) NULL,
	[LCAJobTitle] [nvarchar](max) NULL,
	[LCASOCCode] [nvarchar](max) NULL,
	[LCASOCOccupationTitle] [nvarchar](max) NULL,
	[LCAIsFull_TimePosition] [nvarchar](max) NULL,
	[LCAIntendedEmploymentStartDate] [datetime] NULL,
	[LCAIntendedEmploymentEndDate] [datetime] NULL,
	[LCANumberofWorkerPositions] [nvarchar](max) NULL,
	[LCANewEmployment_Count] [nvarchar](max) NULL,
	[LCAContinuationofpreviouslyapprovedemployment] [nvarchar](max) NULL,
	[LCAChangeinpreviouslyapprovedemployment] [nvarchar](max) NULL,
	[LCANewconcurrentemployment] [nvarchar](max) NULL,
	[LCAChangeinemployer] [nvarchar](max) NULL,
	[LCAAmendedpetition] [nvarchar](max) NULL,
	[LCAPetitionerName] [nvarchar](max) NULL,
	[LCAPetitionerFEIN] [nvarchar](max) NULL,
	[LCANAICS] [nvarchar](max) NULL,
	[LCAPointofContact_LastName] [nvarchar](max) NULL,
	[LCAPointofContact_FirstName] [nvarchar](max) NULL,
	[LCAPointofContact_MiddleName] [nvarchar](max) NULL,
	[LCAEmployerRepresentedByAttorney_Agent] [nvarchar](max) NULL,
	[LCAAttorneyorAgent_LastName] [nvarchar](max) NULL,
	[LCAAttorneyorAgent_FirstName] [nvarchar](max) NULL,
	[LCAAttorneyorAgent_MiddleName] [nvarchar](max) NULL,
	[LCAFirm_BusinessName] [nvarchar](max) NULL,
	[LCAFirm_BusinessFEIN] [nvarchar](max) NULL,
	[LCAH_1BDependent] [nvarchar](max) NULL,
	[LCAEmployerWillfulViolator] [nvarchar](max) NULL,
	[LCAONLYH_1B] [nvarchar](max) NULL,
	[LCAStatutoryBasisForExemption] [nvarchar](max) NULL,
	[LCAAppendixAAttached] [nvarchar](max) NULL,
	[LCAPublicDisclosureInfo] [nvarchar](max) NULL,
	[LCAPreparerLastName] [nvarchar](max) NULL,
	[LCAPreparerFirstName] [nvarchar](max) NULL,
	[LCAPreparerMiddleInitial] [nvarchar](max) NULL,
	[LCAPreparerFirm_BusinessName] [nvarchar](max) NULL,
	[LCAPOEI1WorkerNumber] [nvarchar](max) NULL,
	[LCAPOEI1IsSecondaryEntity] [nvarchar](max) NULL,
	[LCAPOEI1LegalBusinessNameofBusinessEntity] [nvarchar](max) NULL,
	[LCAWorkLocation1_Address1] [nvarchar](max) NULL,
	[LCAWorkLocation1_Address2] [nvarchar](max) NULL,
	[LCAWorkLocation1_City] [nvarchar](max) NULL,
	[LCAWorkLocation1_County] [nvarchar](max) NULL,
	[LCAWorkLocation1_State] [nvarchar](max) NULL,
	[LCAWorkLocation1_ZipCode] [nvarchar](max) NULL,
	[LCAWorkLocation1_WageRatePaid_From] [nvarchar](max) NULL,
	[LCAWorkLocation1_WageRatePaid_To] [nvarchar](max) NULL,
	[LCAWorkLocation1_WageRateType] [nvarchar](max) NULL,
	[LCAWorkLocation1_PrevailingWageRate] [nvarchar](max) NULL,
	[LCAWorkLocation1_PrevailingWageRateType] [nvarchar](max) NULL,
	[LCAWorkLocation1_PrevailingWageSource_DOL] [nvarchar](max) NULL,
	[LCAWorkLocation1_PWDTrackingNumber] [nvarchar](max) NULL,
	[LCAWorkLocation1_PrevailingWageSource_OES] [nvarchar](max) NULL,
	[LCAWorkLocation1_OESProgramWageLevel] [nvarchar](max) NULL,
	[LCAWorkLocation1_OESProgramWageSourceYear] [nvarchar](max) NULL,
	[LCAWorkLocation1_PrevailingWageSource_Other] [nvarchar](max) NULL,
	[LCAWorkLocation1_PrevailingWageSource_OtherThanOES_SourceType] [nvarchar](max) NULL,
	[LCAWorkLocation1_PrevailingWageSource_OtherThanOES_SourceYear] [nvarchar](max) NULL,
	[LCAWorkLocation1_PrevailingWageSource_Other_PWSurveyProducer_Publisher] [nvarchar](max) NULL,
	[LCAWorkLocation1_PrevailingWageSource_Other_PWSurveyTitle_Name] [nvarchar](max) NULL,
	[LCAPOEI2WorkerNumber] [nvarchar](max) NULL,
	[LCAPOEI2IsSecondaryEntity] [nvarchar](max) NULL,
	[LCAPOEI2LegalBusinessNameofBusinessEntity] [nvarchar](max) NULL,
	[LCAWorkLocation2_Address1] [nvarchar](max) NULL,
	[LCAWorkLocation2_Address2] [nvarchar](max) NULL,
	[LCAWorkLocation2_City] [nvarchar](max) NULL,
	[LCAWorkLocation2_County] [nvarchar](max) NULL,
	[LCAWorkLocation2_State] [nvarchar](max) NULL,
	[LCAWorkLocation2_ZipCode] [nvarchar](max) NULL,
	[LCAWorkLocation2_WageRatePaid_From] [nvarchar](max) NULL,
	[LCAWorkLocation2_WageRatePaid_To] [nvarchar](max) NULL,
	[LCAWorkLocation2_WageRateType] [nvarchar](max) NULL,
	[LCAWorkLocation2_PrevailingWageRate] [nvarchar](max) NULL,
	[LCAWorkLocation2_PrevailingWageRateType] [nvarchar](max) NULL,
	[LCAWorkLocation2_PrevailingWageSource_DOL] [nvarchar](max) NULL,
	[LCAWorkLocation2_PWDTrackingNumber] [nvarchar](max) NULL,
	[LCAWorkLocation2_PrevailingWageSource_OES] [nvarchar](max) NULL,
	[LCAWorkLocation2_OESProgramWageLevel] [nvarchar](max) NULL,
	[LCAWorkLocation2_OESProgramWageSourceYear] [nvarchar](max) NULL,
	[LCAWorkLocation2_PrevailingWageSource_Other] [nvarchar](max) NULL,
	[LCAWorkLocation2_PrevailingWageSource_OtherThanOES_SourceType] [nvarchar](max) NULL,
	[LCAWorkLocation2_PrevailingWageSource_OtherThanOES_SourceYear] [nvarchar](max) NULL,
	[LCAWorkLocation2_PrevailingWageSource_Other_PWSurveyProducer_Publisher] [nvarchar](max) NULL,
	[LCAWorkLocation2_PrevailingWageSource_Other_PWSurveyTitle_Name] [nvarchar](max) NULL,
	[LCAPOEI3WorkerNumber] [nvarchar](max) NULL,
	[LCAPOEI3IsSecondaryEntity] [nvarchar](max) NULL,
	[LCAPOEI3LegalBusinessNameofBusinessEntity] [nvarchar](max) NULL,
	[LCAWorkLocation3_Address1] [nvarchar](max) NULL,
	[LCAWorkLocation3_Address2] [nvarchar](max) NULL,
	[LCAWorkLocation3_City] [nvarchar](max) NULL,
	[LCAWorkLocation3_County] [nvarchar](max) NULL,
	[LCAWorkLocation3_State] [nvarchar](max) NULL,
	[LCAWorkLocation3_ZipCode] [nvarchar](max) NULL,
	[LCAWorkLocation3_WageRatePaid_From] [nvarchar](max) NULL,
	[LCAWorkLocation3_WageRatePaid_To] [nvarchar](max) NULL,
	[LCAWorkLocation3_WageRateType] [nvarchar](max) NULL,
	[LCAWorkLocation3_PrevailingWageRate] [nvarchar](max) NULL,
	[LCAWorkLocation3_PrevailingWageRateType] [nvarchar](max) NULL,
	[LCAWorkLocation3_PrevailingWageSource_DOL] [nvarchar](max) NULL,
	[LCAWorkLocation3_PWDTrackingNumber] [nvarchar](max) NULL,
	[LCAWorkLocation3_PrevailingWageSource_OES] [nvarchar](max) NULL,
	[LCAWorkLocation3_OESProgramWageLevel] [nvarchar](max) NULL,
	[LCAWorkLocation3_OESProgramWageSourceYear] [nvarchar](max) NULL,
	[LCAWorkLocation3_PrevailingWageSource_Other] [nvarchar](max) NULL,
	[LCAWorkLocation3_PrevailingWageSource_OtherThanOES_SourceType] [nvarchar](max) NULL,
	[LCAWorkLocation3_PrevailingWageSource_OtherThanOES_SourceYear] [nvarchar](max) NULL,
	[LCAWorkLocation3_PrevailingWageSource_Other_PWSurveyProducer_Publisher] [nvarchar](max) NULL,
	[LCAWorkLocation3_PrevailingWageSource_Other_PWSurveyTitle_Name] [nvarchar](max) NULL,
	[LCAPOEI4WorkerNumber] [nvarchar](max) NULL,
	[LCAPOEI4IsSecondaryEntity] [nvarchar](max) NULL,
	[LCAPOEI4LegalBusinessNameofBusinessEntity] [nvarchar](max) NULL,
	[LCAWorkLocation4_Address1] [nvarchar](max) NULL,
	[LCAWorkLocation4_Address2] [nvarchar](max) NULL,
	[LCAWorkLocation4_City] [nvarchar](max) NULL,
	[LCAWorkLocation4_County] [nvarchar](max) NULL,
	[LCAWorkLocation4_State] [nvarchar](max) NULL,
	[LCAWorkLocation4_ZipCode] [nvarchar](max) NULL,
	[LCAWorkLocation4_WageRatePaid_From] [nvarchar](max) NULL,
	[LCAWorkLocation4_WageRatePaid_To] [nvarchar](max) NULL,
	[LCAWorkLocation4_WageRateType] [nvarchar](max) NULL,
	[LCAWorkLocation4_PrevailingWageRate] [nvarchar](max) NULL,
	[LCAWorkLocation4_PrevailingWageRateType] [nvarchar](max) NULL,
	[LCAWorkLocation4_PrevailingWageSource_DOL] [nvarchar](max) NULL,
	[LCAWorkLocation4_PWDTrackingNumber] [nvarchar](max) NULL,
	[LCAWorkLocation4_PrevailingWageSource_OES] [nvarchar](max) NULL,
	[LCAWorkLocation4_OESProgramWageLevel] [nvarchar](max) NULL,
	[LCAWorkLocation4_OESProgramWageSourceYear] [nvarchar](max) NULL,
	[LCAWorkLocation4_PrevailingWageSource_Other] [nvarchar](max) NULL,
	[LCAWorkLocation4_PrevailingWageSource_OtherThanOES_SourceType] [nvarchar](max) NULL,
	[LCAWorkLocation4_PrevailingWageSource_OtherThanOES_SourceYear] [nvarchar](max) NULL,
	[LCAWorkLocation4_PrevailingWageSource_Other_PWSurveyProducer_Publisher] [nvarchar](max) NULL,
	[LCAWorkLocation4_PrevailingWageSource_Other_PWSurveyTitle_Name] [nvarchar](max) NULL,
	[LCAPOEI5WorkerNumber] [nvarchar](max) NULL,
	[LCAPOEI5IsSecondaryEntity] [nvarchar](max) NULL,
	[LCAPOEI5LegalBusinessNameofBusinessEntity] [nvarchar](max) NULL,
	[LCAWorkLocation5_Address1] [nvarchar](max) NULL,
	[LCAWorkLocation5_Address2] [nvarchar](max) NULL,
	[LCAWorkLocation5_City] [nvarchar](max) NULL,
	[LCAWorkLocation5_County] [nvarchar](max) NULL,
	[LCAWorkLocation5_State] [nvarchar](max) NULL,
	[LCAWorkLocation5_ZipCode] [nvarchar](max) NULL,
	[LCAWorkLocation5_WageRatePaid_From] [nvarchar](max) NULL,
	[LCAWorkLocation5_WageRatePaid_To] [nvarchar](max) NULL,
	[LCAWorkLocation5_WageRateType] [nvarchar](max) NULL,
	[LCAWorkLocation5_PrevailingWageRate] [nvarchar](max) NULL,
	[LCAWorkLocation5_PrevailingWageRateType] [nvarchar](max) NULL,
	[LCAWorkLocation5_PrevailingWageSource_DOL] [nvarchar](max) NULL,
	[LCAWorkLocation5_PWDTrackingNumber] [nvarchar](max) NULL,
	[LCAWorkLocation5_PrevailingWageSource_OES] [nvarchar](max) NULL,
	[LCAWorkLocation5_OESProgramWageLevel] [nvarchar](max) NULL,
	[LCAWorkLocation5_OESProgramWageSourceYear] [nvarchar](max) NULL,
	[LCAWorkLocation5_PrevailingWageSource_Other] [nvarchar](max) NULL,
	[LCAWorkLocation5_PrevailingWageSource_OtherThanOES_SourceType] [nvarchar](max) NULL,
	[LCAWorkLocation5_PrevailingWageSource_OtherThanOES_SourceYear] [nvarchar](max) NULL,
	[LCAWorkLocation5_PrevailingWageSource_Other_PWSurveyProducer_Publisher] [nvarchar](max) NULL,
	[LCAWorkLocation5_PrevailingWageSource_Other_PWSurveyTitle_Name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseMilestone]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseMilestone](
	[CaseId] [bigint] NOT NULL,
	[CaseInitiatedByPetrDate] [datetime] NULL,
	[CaseCreatedByFirmDate] [datetime] NULL,
	[WelcomeEmailSentDate] [datetime] NULL,
	[DocsChecklistSentToPetrDate] [datetime] NULL,
	[DocsChecklistSentToBnfDate] [datetime] NULL,
	[DocsReceivedFromPetrDate] [datetime] NULL,
	[DocsReceivedFromBnfDate] [datetime] NULL,
	[MinimalInfoDocsReceivedDate] [datetime] NULL,
	[AllInfoDocsReceivedDate] [datetime] NULL,
	[CaseDocsDraftedDate] [datetime] NULL,
	[InitialAttorneyReviewCompletedDate] [datetime] NULL,
	[FinalCaseDocsSentForReviewDate] [datetime] NULL,
	[SignedDocsReceivedDate] [datetime] NULL,
	[FinalAttorneyReviewCompletedDate] [datetime] NULL,
	[CasePacketSentToBnfDate] [datetime] NULL,
	[ReceiptNoticeReceivedDate] [datetime] NULL,
	[ApprovalNoticeReceivedDate] [datetime] NULL,
	[PermMinReqFinalizedDate] [datetime] NULL,
	[PermWorkExpChartSentDate] [datetime] NULL,
	[PermWorkExpChartReceivedDate] [datetime] NULL,
	[PermDraftEvlSentToBnfDate] [datetime] NULL,
	[PermEvlReceivedDate] [datetime] NULL,
	[PermPwrSubmittedDate] [datetime] NULL,
	[PermPwdIssuedDate] [datetime] NULL,
	[ApprovalReceivedFromPetrDate] [datetime] NULL,
	[Eta9089FiledDate] [datetime] NULL,
	[DolCaseNumberReceivedDate] [datetime] NULL,
	[Certified9089ReceivedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CasePerm]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CasePerm](
	[CasePermId] [bigint] IDENTITY(1,1) NOT NULL,
	[CaseId] [bigint] NOT NULL,
	[AdAgencyId] [int] NULL,
	[IsAdAgencyActive] [bit] NULL,
	[AdAgencyName] [nvarchar](255) NULL,
	[AdOrderNumber] [nvarchar](255) NULL,
	[PwrDolFiledDate] [datetime] NULL,
	[FileEta9089ReceivedApprovalDate] [datetime] NULL,
	[FirstRecruitmentStartDate] [datetime] NULL,
	[FirstEligibleFilingDate] [datetime] NULL,
	[FilingDeadline] [datetime] NULL,
	[AnticipatedFilingDate] [datetime] NULL,
	[QuietPeriodEndDate] [datetime] NULL,
	[DeadlineRequestRecruitmentReportDate] [datetime] NULL,
	[SwaJobOrderStartDate] [datetime] NULL,
	[SwaJobOrderEndDate] [datetime] NULL,
	[NoticeOfFilingPostingStartDate] [datetime] NULL,
	[NoticeOfFilingPostingEndDate] [datetime] NULL,
	[FirstSundayAdPostingDate] [datetime] NULL,
	[FirstSundayAdPublicationName] [nvarchar](255) NULL,
	[SecondSundayAdPostingDate] [datetime] NULL,
	[SecondSundayAdPublicationName] [nvarchar](255) NULL,
	[JobFairStartDate] [datetime] NULL,
	[JobFairEndDate] [datetime] NULL,
	[JobFairMediaType] [nvarchar](255) NULL,
	[EmployerWebsiteStartDate] [datetime] NULL,
	[EmployerWebsiteEndDate] [datetime] NULL,
	[JobSearchSiteStartDate] [datetime] NULL,
	[JobSearchSiteEndDate] [datetime] NULL,
	[JobSearchSiteMediaType] [nvarchar](255) NULL,
	[EmployeeReferralProgramStartDate] [datetime] NULL,
	[EmployeeReferralProgramEndDate] [datetime] NULL,
	[LocalEthnicNewspaperStartDate] [datetime] NULL,
	[LocalEthnicNewspaperEndDate] [datetime] NULL,
	[LocalEthnicNewspaperMediaType] [nvarchar](255) NULL,
	[OnCampusRecruitingStartDate] [datetime] NULL,
	[OnCampusRecruitingEndDate] [datetime] NULL,
	[OnCampusRecruitingMediaType] [nvarchar](255) NULL,
	[TradeProfessionalOrganizationStartDate] [datetime] NULL,
	[TradeProfessionalOrganizationEndDate] [datetime] NULL,
	[TradeProfessionalOrganizationMediaType] [nvarchar](255) NULL,
	[EmploymentFirmStartDate] [datetime] NULL,
	[EmploymentFirmEndDate] [datetime] NULL,
	[EmploymentFirmMediaType] [nvarchar](255) NULL,
	[CampusPlacementOfficeStartDate] [datetime] NULL,
	[CampusPlacementOfficeEndDate] [datetime] NULL,
	[CampusPlacementOfficeMediaType] [nvarchar](255) NULL,
	[RadioTVStartDate] [datetime] NULL,
	[RadioTVEndDate] [datetime] NULL,
	[RadioTVMediaType] [nvarchar](255) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CasePermId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CasePwr]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CasePwr](
	[CasePwrId] [bigint] IDENTITY(1,1) NOT NULL,
	[CaseId] [bigint] NOT NULL,
	[PwrSubmissionDate] [datetime] NULL,
	[PwrTrackingNumber] [nvarchar](20) NULL,
	[PwrSuggestedSocCode] [nvarchar](15) NULL,
	[PwrSuggestedSocOccupationTitle] [nvarchar](255) NULL,
	[PwrWageSource] [nvarchar](75) NULL,
	[PwrWageSourceOtherSurveyName] [nvarchar](255) NULL,
	[PwrWageSourceOtherSurveyPublicationYear] [int] NULL,
	[PwrDeterminationDate] [datetime] NULL,
	[PwrExpirationDate] [datetime] NULL,
	[PwrDolSocCode] [nvarchar](15) NULL,
	[PwrDolWageLevel] [char](5) NULL,
	[PwrDolWage] [int] NULL,
	[PwrDolWagePer] [char](5) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CasePwrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseStep]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseStep](
	[CaseStepId] [bigint] IDENTITY(1,1) NOT NULL,
	[CaseStepXref] [nvarchar](50) NOT NULL,
	[CaseId] [bigint] NOT NULL,
	[IsStepMilestone] [bit] NULL,
	[CaseStepName] [nvarchar](255) NULL,
	[SourceCreatedBy] [nvarchar](50) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](50) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CaseStepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientDetails]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[client_name] [varchar](255) NOT NULL,
	[clientShortName] [varchar](255) NULL,
	[organizationName] [nvarchar](255) NULL,
	[organizationXref] [varchar](255) NULL,
	[petitionerName] [nvarchar](255) NULL,
	[petitionerXref] [nvarchar](255) NULL,
	[report_name] [varchar](255) NULL,
	[cadence] [varchar](255) NULL,
	[delivery_day] [varchar](255) NULL,
	[delivery_time] [varchar](255) NULL,
	[recipient_to] [text] NULL,
	[recipient_cc] [text] NULL,
	[no_of_tabs] [int] NULL,
	[special_criteria] [nchar](10) NULL,
	[expiration_report_sent] [int] NULL,
	[expiration_report_sent_on] [varchar](30) NULL,
	[status_report_sent_on] [datetime] NULL,
 CONSTRAINT [PK_ClientDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactId] [bigint] IDENTITY(1,1) NOT NULL,
	[ContactXref] [nvarchar](50) NOT NULL,
	[ContactLevelId] [bigint] NOT NULL,
	[ContactLevel] [nvarchar](50) NULL,
	[Prefix] [char](10) NULL,
	[FirstName] [nvarchar](255) NULL,
	[MiddleName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[Suffix] [char](10) NULL,
	[Email] [nvarchar](200) NULL,
	[Address1] [nvarchar](255) NULL,
	[AptSteFlr] [char](10) NULL,
	[Address2] [nvarchar](255) NULL,
	[City] [nvarchar](75) NULL,
	[County] [nvarchar](75) NULL,
	[StateProvince] [nvarchar](75) NULL,
	[ZipCode] [nvarchar](15) NULL,
	[Country] [nvarchar](75) NULL,
	[IsBillingContact] [bit] NULL,
	[IsAdminContact] [bit] NULL,
	[IsSignatoryContact] [bit] NULL,
	[SourceCreatedBy] [nvarchar](50) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](50) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LegalResource]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LegalResource](
	[LegalResourceId] [bigint] IDENTITY(1,1) NOT NULL,
	[LegalResourceXref] [nvarchar](50) NULL,
	[EmployeeId] [nvarchar](50) NOT NULL,
	[FirmName] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[Prefix] [char](10) NULL,
	[FirstName] [nvarchar](255) NULL,
	[MiddleName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[LegalResourceType] [nvarchar](50) NULL,
	[LegalResourceRole] [nvarchar](50) NULL,
	[BarNumber] [nvarchar](50) NULL,
	[LicensingAuthority] [nvarchar](50) NULL,
	[CaseWorkTime] [int] NULL,
	[Team] [nvarchar](50) NULL,
	[OfficeLocationCity] [nvarchar](75) NULL,
	[OfficeLocationStateProvince] [nvarchar](75) NULL,
	[OfficeLocationCountry] [nvarchar](75) NULL,
	[Address1] [nvarchar](255) NULL,
	[AptSteFlr] [char](10) NULL,
	[Address2] [nvarchar](255) NULL,
	[AddressType] [nvarchar](max) NULL,
	[AddressTypeNumber] [nvarchar](max) NULL,
	[City] [nvarchar](75) NULL,
	[County] [nvarchar](75) NULL,
	[StateProvince] [nvarchar](75) NULL,
	[ZipCode] [nvarchar](15) NULL,
	[Country] [nvarchar](75) NULL,
	[PhoneNumber] [nvarchar](75) NULL,
	[PhoneNumberExt] [char](10) NULL,
	[MobileNumber] [nvarchar](75) NULL,
	[FaxNumber] [nvarchar](15) NULL,
	[Email] [nvarchar](200) NULL,
	[SourceCreatedBy] [nvarchar](50) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](50) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organization]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[OrganizationId] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationXref] [nvarchar](255) NOT NULL,
	[OpenDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[InactiveDate] [datetime] NULL,
	[FirmClientNumber] [nvarchar](50) NULL,
	[OrganizationName] [nvarchar](255) NULL,
	[OrganizationShortName] [nvarchar](255) NULL,
	[TradeDBAName] [nvarchar](255) NULL,
	[YearEstablished] [nvarchar](50) NULL,
	[BusinessType] [nvarchar](150) NULL,
	[BusinessInfo] [nvarchar](max) NULL,
	[IndustryInfo] [nvarchar](150) NULL,
	[USEmployeeCount] [int] NULL,
	[WorldwideEmployeeCount] [int] NULL,
	[GrossAnnualIncome] [int] NULL,
	[NetAnnualIncome] [int] NULL,
	[FederalEmployerId] [nvarchar](15) NULL,
	[NaicsCode] [nvarchar](15) NULL,
	[BlanketLApprovalNumber] [nvarchar](20) NULL,
	[BlanketLExpirationDate] [datetime] NULL,
	[OriginatingAttorney] [nvarchar](255) NULL,
	[OriginatingAttorneyCredit] [int] NULL,
	[ManagingAttorney] [nvarchar](255) NULL,
	[ManagingAttorneyCredit] [int] NULL,
	[Address1] [nvarchar](255) NULL,
	[AptSteFlr] [char](10) NULL,
	[Address2] [nvarchar](255) NULL,
	[City] [nvarchar](75) NULL,
	[County] [nvarchar](75) NULL,
	[StateProvince] [nvarchar](75) NULL,
	[ZipCode] [nvarchar](15) NULL,
	[Country] [nvarchar](75) NULL,
	[PhoneNumber1] [nvarchar](15) NULL,
	[PhoneNumber1Ext] [char](10) NULL,
	[PhoneNumber2] [nvarchar](15) NULL,
	[PhoneNumber2Ext] [char](10) NULL,
	[MobileNumber] [nvarchar](15) NULL,
	[FaxNumber] [nvarchar](15) NULL,
	[ImmigrationBudgetCurrentYear] [int] NULL,
	[ImmigrationSpendCurrentYear] [int] NULL,
	[ImmigrationBudgetPreviousYear1] [int] NULL,
	[ImmigrationSpendPreviousYear1] [int] NULL,
	[ImmigrationBudgetPreviousYear2] [int] NULL,
	[ImmigrationSpendPreviousYear2] [int] NULL,
	[SourceCreatedBy] [nvarchar](50) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](50) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Organiza__CADB0B123FFE6FD4] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Petitioner]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Petitioner](
	[PetitionerId] [bigint] IDENTITY(1,1) NOT NULL,
	[PetitionerXref] [nvarchar](50) NOT NULL,
	[OrganizationId] [bigint] NULL,
	[OpenedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[InactiveDate] [datetime] NULL,
	[FirmClientNumber] [nvarchar](50) NULL,
	[PetitionerName] [nvarchar](255) NULL,
	[PetitionerShortName] [nvarchar](255) NULL,
	[PetitionerNameOnForm] [nvarchar](255) NULL,
	[PetitionerEmail] [nvarchar](200) NULL,
	[TradeDBAName] [nvarchar](255) NULL,
	[YearEstablished] [int] NULL,
	[BusinessType] [nvarchar](150) NULL,
	[BusinessInfo] [nvarchar](max) NULL,
	[IndustryType] [nvarchar](150) NULL,
	[USEmployeeCount] [int] NULL,
	[WorldwideEmployeeCount] [int] NULL,
	[GrossAnnualIncome] [nvarchar](200) NULL,
	[NetAnnualIncome] [nvarchar](200) NULL,
	[BlanketLApprovalNumber] [nvarchar](20) NULL,
	[BlanketLExpirationDate] [datetime] NULL,
	[IsPetitionerOnBlanketL] [bit] NULL,
	[IsPetitionerH1bDependent] [bit] NULL,
	[IsPetitionerWillfulViolator] [bit] NULL,
	[IsOver50PctEEH1bL1aL1bStatus] [bit] NULL,
	[IsHigherEducationInstitution] [bit] NULL,
	[IsNonprofitOrganizationEntity] [bit] NULL,
	[IsNonprofitGovernmentResearch] [bit] NULL,
	[IsPrimarySecondaryEducationInstitution] [bit] NULL,
	[IsNonprofitCurriculumRelatedTraining] [bit] NULL,
	[IsPetitionerGuamCnmiCapExempt] [bit] NULL,
	[FederalEmployerId] [nvarchar](15) NULL,
	[NaicsCode] [nvarchar](15) NULL,
	[Address1] [nvarchar](255) NULL,
	[AptSteFlr] [char](10) NULL,
	[Address2] [nvarchar](255) NULL,
	[City] [nvarchar](75) NULL,
	[County] [nvarchar](75) NULL,
	[StateProvince] [nvarchar](75) NULL,
	[ZipCode] [nvarchar](15) NULL,
	[Country] [nvarchar](75) NULL,
	[PhoneNumber1] [nvarchar](15) NULL,
	[PhoneNumber1Ext] [char](10) NULL,
	[PhoneNumber2] [nvarchar](15) NULL,
	[PhoneNumber2Ext] [char](10) NULL,
	[MobileNumber] [nvarchar](15) NULL,
	[FaxNumber] [nvarchar](15) NULL,
	[OriginatingAttorney] [nvarchar](255) NULL,
	[OriginatingAttorneyCredit] [int] NULL,
	[ManagingAttorney] [nvarchar](255) NULL,
	[ManagingAttorneyCredit] [int] NULL,
	[WorkingAttorney] [nvarchar](255) NULL,
	[WorkingAttorneyCredit] [int] NULL,
	[SourceCreatedBy] [nvarchar](50) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](50) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Petition__178BDCF09C3D0DE2] PRIMARY KEY CLUSTERED 
(
	[PetitionerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PetitionerAuthorizedSignatory]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PetitionerAuthorizedSignatory](
	[SignatoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[PetitionerId] [bigint] NOT NULL,
	[SignatoryType] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[MiddleName] [nvarchar](max) NULL,
	[Address1] [nvarchar](max) NULL,
	[AddressType] [nvarchar](max) NULL,
	[AddressTypeNumber] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[JobTitle] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[MobilePhone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_PetitionerAuthorizedSignatory] PRIMARY KEY CLUSTERED 
(
	[SignatoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[processed_form_details]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[processed_form_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[last_processed_form_id] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisaBulletinData]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisaBulletinData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[VisaBulletinId] [int] NOT NULL,
	[col1] [text] NULL,
	[col2] [text] NULL,
	[col3] [text] NULL,
	[col4] [text] NULL,
	[col5] [text] NULL,
	[col6] [text] NULL,
	[col7] [text] NULL,
	[table_info] [nchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisaBulletinHeader]    Script Date: 4/26/2022 10:22:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisaBulletinHeader](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[month] [nvarchar](50) NULL,
	[year] [int] NULL,
	[text] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Beneficiary] ADD  CONSTRAINT [DF_Beneficiary_is_primary_beneficiary]  DEFAULT ((1)) FOR [is_primary_beneficiary]
GO
ALTER TABLE [dbo].[ClientDetails] ADD  CONSTRAINT [DF_ClientDetails_expiration_report_sent]  DEFAULT ((0)) FOR [expiration_report_sent]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'US/Foreign' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BeneficiaryAddress', @level2type=N'COLUMN',@level2name=N'AddressCountry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Residence Address/ Work Address/ Mailing Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BeneficiaryAddress', @level2type=N'COLUMN',@level2name=N'AddressType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Flr/Street/Building' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BeneficiaryAddress', @level2type=N'COLUMN',@level2name=N'AddressUnitType'
GO
USE [master]
GO
ALTER DATABASE [KILP] SET  READ_WRITE 
GO
