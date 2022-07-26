USE [Hastane24]
GO
/****** Object:  Table [dbo].[Ameliyat]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ameliyat](
	[AmeliyatID] [int] IDENTITY(1,1) NOT NULL,
	[MuayeneID] [int] NOT NULL,
	[OdaID] [smallint] NOT NULL,
	[BaslamaTarigi] [smalldatetime] NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__Ameliyat__13A099E55F39CA95] PRIMARY KEY CLUSTERED 
(
	[AmeliyatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmeliyatDetay]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmeliyatDetay](
	[AmeliyatID] [int] NOT NULL,
	[DoktorID] [int] NOT NULL,
	[HemsireID] [int] NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK_AmeliyatDetay_1] PRIMARY KEY CLUSTERED 
(
	[AmeliyatID] ASC,
	[DoktorID] ASC,
	[HemsireID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmeliyatRandevu]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmeliyatRandevu](
	[AmeliyatRandevuID] [int] IDENTITY(1,1) NOT NULL,
	[MuayeneID] [int] NOT NULL,
	[AmeliyatTarihi] [date] NOT NULL,
	[Saat] [time](7) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AmeliyatRandevuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doktor]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doktor](
	[DoktorID] [int] IDENTITY(1,1) NOT NULL,
	[PersonelID] [int] NOT NULL,
	[PoliklinikID] [tinyint] NOT NULL,
	[DoktorAdi] [nvarchar](50) NOT NULL,
	[DoktorSoyadi] [nvarchar](50) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__Doktor__77AFB941F21C8AB0] PRIMARY KEY CLUSTERED 
(
	[DoktorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoktorIdariPersonel]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoktorIdariPersonel](
	[DoktorID] [int] NOT NULL,
	[IdariPersonelID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DoktorID] ASC,
	[IdariPersonelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EKGCekimiSonuclari]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EKGCekimiSonuclari](
	[EKGCekimiID] [int] NOT NULL,
	[Aciklama] [nvarchar](200) NOT NULL,
	[EKGResmi] [nvarchar](200) NOT NULL,
	[SonucTarigi] [date] NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__EKGCekim__FD3E854D37C7DB97] PRIMARY KEY CLUSTERED 
(
	[EKGCekimiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EKGCekimleri]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EKGCekimleri](
	[EKGCekimiID] [int] IDENTITY(1,1) NOT NULL,
	[GeriHizmetPersonelID] [int] NOT NULL,
	[MuayeneID] [int] NOT NULL,
	[Tarih] [date] NOT NULL,
	[Saat] [time](7) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__EKGCekim__FD3E854DD791EBF3] PRIMARY KEY CLUSTERED 
(
	[EKGCekimiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GeriHizmetPersonel]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeriHizmetPersonel](
	[GeriHizmetPersonelID] [int] IDENTITY(1,1) NOT NULL,
	[PersonelID] [int] NOT NULL,
	[GeriHizmetPersonelAdi] [nvarchar](50) NOT NULL,
	[GeriHizmetPersonelSoyadi] [nvarchar](50) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__GeriHizm__1EED3DDED4F60C3C] PRIMARY KEY CLUSTERED 
(
	[GeriHizmetPersonelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GogusFilmiSonuclari]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GogusFilmiSonuclari](
	[GogusFilmiID] [int] NOT NULL,
	[Aciklama] [nvarchar](200) NOT NULL,
	[GogusFilmiResmi] [nvarchar](200) NOT NULL,
	[SonucTarigi] [date] NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__GogusFil__F67573FA881799A3] PRIMARY KEY CLUSTERED 
(
	[GogusFilmiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GogusFilmleri]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GogusFilmleri](
	[GogusFilmiID] [int] IDENTITY(1,1) NOT NULL,
	[GeriHizmetPersonelID] [int] NOT NULL,
	[MuayeneID] [int] NOT NULL,
	[Tarih] [date] NOT NULL,
	[Saat] [time](7) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__GogusFil__F67573FA850F81C2] PRIMARY KEY CLUSTERED 
(
	[GogusFilmiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hasta]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hasta](
	[HastaID] [int] IDENTITY(1,1) NOT NULL,
	[HastaAdi] [nvarchar](50) NOT NULL,
	[HastaSoyadi] [nvarchar](50) NOT NULL,
	[HastaCinsiyet] [bit] NULL,
	[KanGrubuID] [tinyint] NOT NULL,
	[SilindiMi] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HastaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HastaDetayBilgileri]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HastaDetayBilgileri](
	[HastaID] [int] NOT NULL,
	[HastaTCveyaPasaportNo] [nvarchar](11) NOT NULL,
	[HastaDogumTarihi] [date] NOT NULL,
	[HastaDogumYeri] [nvarchar](30) NOT NULL,
	[HastaBabaAdi] [nvarchar](50) NOT NULL,
	[HastaAdres] [nvarchar](80) NOT NULL,
	[IlceID] [smallint] NOT NULL,
	[IlID] [tinyint] NOT NULL,
	[HastaCepTel] [nvarchar](15) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__HastaDet__114C5CAB589E5AC4] PRIMARY KEY CLUSTERED 
(
	[HastaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HastaKabul]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HastaKabul](
	[HastaKabulID] [int] IDENTITY(1,1) NOT NULL,
	[DoktorID] [int] NOT NULL,
	[HastaID] [int] NOT NULL,
	[HastaKayitTarihi] [date] NOT NULL,
	[HastaSikayeti] [nvarchar](50) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HastaKabulID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HastaOdeme]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HastaOdeme](
	[OdemeID] [int] IDENTITY(1,1) NOT NULL,
	[HastaID] [int] NOT NULL,
	[OdemeTuruID] [tinyint] NOT NULL,
	[Tarih] [date] NOT NULL,
	[SilindiMi] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OdemeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HastaOdemeDetay]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HastaOdemeDetay](
	[OdemeID] [int] NOT NULL,
	[HizmetID] [tinyint] NOT NULL,
	[Indirim] [decimal](14, 2) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__HastaOde__7C425B6C8DF90EE5] PRIMARY KEY CLUSTERED 
(
	[OdemeID] ASC,
	[HizmetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hemsire]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hemsire](
	[HemsireID] [int] IDENTITY(1,1) NOT NULL,
	[PersonelID] [int] NOT NULL,
	[PoliklinikID] [tinyint] NOT NULL,
	[HemsireAdi] [nvarchar](50) NOT NULL,
	[HemsireSoyadi] [nvarchar](50) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__Hemsire__E6E25414DBCB80AB] PRIMARY KEY CLUSTERED 
(
	[HemsireID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HizmetUcretleri]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HizmetUcretleri](
	[HizmetID] [tinyint] IDENTITY(1,1) NOT NULL,
	[HizmetAdi] [nvarchar](50) NOT NULL,
	[HizmetUcreti] [decimal](14, 2) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__HizmetUc__D593DC1DE996BED5] PRIMARY KEY CLUSTERED 
(
	[HizmetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdariPersonel]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdariPersonel](
	[IdariPersonelID] [int] IDENTITY(1,1) NOT NULL,
	[PersonelID] [int] NOT NULL,
	[IdariPersonelAdi] [nvarchar](50) NOT NULL,
	[IdariPersonelSoyadi] [nvarchar](50) NOT NULL,
	[OdaID] [smallint] NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__IdariPer__E327E34A9F0B3F5A] PRIMARY KEY CLUSTERED 
(
	[IdariPersonelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdrarTahlilleri]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdrarTahlilleri](
	[IdrarTahlilID] [int] IDENTITY(1,1) NOT NULL,
	[GeriHizmetPersonelID] [int] NOT NULL,
	[MuayeneID] [int] NOT NULL,
	[Tarih] [date] NOT NULL,
	[Saat] [time](7) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__IdrarTah__3DE81C3D51A2E126] PRIMARY KEY CLUSTERED 
(
	[IdrarTahlilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdrarTahlilSonuclari]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdrarTahlilSonuclari](
	[IdrarTahlilID] [int] NOT NULL,
	[IdrarTestID] [tinyint] NOT NULL,
	[Sonuc] [nvarchar](25) NOT NULL,
	[Birim] [nvarchar](25) NULL,
	[Referansaraligi] [nvarchar](25) NULL,
	[SonucTarihi] [date] NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK_IdrarTahlilSonuclari] PRIMARY KEY CLUSTERED 
(
	[IdrarTahlilID] ASC,
	[IdrarTestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdrarTestleri]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdrarTestleri](
	[IdrarTestID] [tinyint] IDENTITY(1,1) NOT NULL,
	[IdrarTestAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_IdrarTestleri] PRIMARY KEY CLUSTERED 
(
	[IdrarTestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Il]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Il](
	[IlID] [tinyint] IDENTITY(1,1) NOT NULL,
	[IlAdi] [nvarchar](20) NULL,
	[SilindiMi] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IlID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ilce]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ilce](
	[IlceID] [smallint] IDENTITY(1,1) NOT NULL,
	[IlceAdi] [nvarchar](20) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IlceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KanGrubu]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KanGrubu](
	[KanGrubuID] [tinyint] IDENTITY(1,1) NOT NULL,
	[KanGrubu] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK__KanGrubu__D241CC867E2AB9B4] PRIMARY KEY CLUSTERED 
(
	[KanGrubuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KanTahlilleri]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KanTahlilleri](
	[KanTahlilID] [int] IDENTITY(1,1) NOT NULL,
	[GeriHizmetPersonelID] [int] NOT NULL,
	[MuayeneID] [int] NOT NULL,
	[Tarih] [date] NOT NULL,
	[Saat] [time](7) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__KanTahli__A0D90260D9D0E527] PRIMARY KEY CLUSTERED 
(
	[KanTahlilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KanTahlilSonuclari]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KanTahlilSonuclari](
	[KanTahlilID] [int] NOT NULL,
	[KanTestiID] [tinyint] NOT NULL,
	[Sonuc] [nvarchar](25) NOT NULL,
	[Birim] [nvarchar](25) NOT NULL,
	[Referansaraligi] [nvarchar](25) NOT NULL,
	[SonucTarigi] [date] NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__KanTahli__A0D902604C55E682] PRIMARY KEY CLUSTERED 
(
	[KanTahlilID] ASC,
	[KanTestiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KanTahlilTestleri]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KanTahlilTestleri](
	[KanTestiID] [tinyint] IDENTITY(1,1) NOT NULL,
	[TestAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KanTahlilTestleri] PRIMARY KEY CLUSTERED 
(
	[KanTestiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanıcılar]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanıcılar](
	[PersonelID] [int] NOT NULL,
	[KullaniciKodu] [nvarchar](9) NOT NULL,
	[Sifre] [nvarchar](50) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__Kullanıc__0F0C57518D89E757] PRIMARY KEY CLUSTERED 
(
	[PersonelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaasOdemeleri]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaasOdemeleri](
	[MaasOdemeID] [int] IDENTITY(1,1) NOT NULL,
	[PersonelID] [int] NOT NULL,
	[OdenenTarih] [date] NOT NULL,
	[KesintilerToplam] [decimal](14, 2) NOT NULL,
	[Maas] [decimal](14, 2) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaasOdemeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRUltrasonCekimileri]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRUltrasonCekimileri](
	[MRUltrasyonCekimiID] [int] IDENTITY(1,1) NOT NULL,
	[GeriHizmetPersonelID] [int] NOT NULL,
	[MuayeneID] [int] NOT NULL,
	[Tarih] [date] NOT NULL,
	[Saat] [time](7) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__MRUltras__940EEE410E440C37] PRIMARY KEY CLUSTERED 
(
	[MRUltrasyonCekimiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRUltrasonCekimiSonuclari]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRUltrasonCekimiSonuclari](
	[MRUltrasonCekimiID] [int] NOT NULL,
	[Aciklama] [nvarchar](200) NOT NULL,
	[MRUltrasonResmi] [nvarchar](200) NOT NULL,
	[SonucTarigi] [date] NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__MRUltras__32E5C0476885F98E] PRIMARY KEY CLUSTERED 
(
	[MRUltrasonCekimiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Muayeneler]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Muayeneler](
	[MuayeneID] [int] IDENTITY(1,1) NOT NULL,
	[HastaKabulID] [int] NOT NULL,
	[Saat] [time](7) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__Muayenel__FCCEDA4CBE26E554] PRIMARY KEY CLUSTERED 
(
	[MuayeneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MuayeneSonuc]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MuayeneSonuc](
	[MuayeneID] [int] NOT NULL,
	[Aciklama] [nvarchar](1000) NOT NULL,
	[IdararTahlil] [bit] NOT NULL,
	[KanTahlil] [bit] NOT NULL,
	[EKGCekimi] [bit] NOT NULL,
	[GogusFilmi] [bit] NOT NULL,
	[MRUltrasonCekimi] [bit] NOT NULL,
	[Ameliyat] [bit] NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__MuayeneS__FCCEDA4CDA6F10A4] PRIMARY KEY CLUSTERED 
(
	[MuayeneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odalar]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odalar](
	[OdaID] [smallint] IDENTITY(1,1) NOT NULL,
	[OdaAdi] [nvarchar](50) NOT NULL,
	[OdaTuruID] [tinyint] NOT NULL,
	[silindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__Odalar__190B1E09B28314F1] PRIMARY KEY CLUSTERED 
(
	[OdaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OdaTurleri]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OdaTurleri](
	[OdaTuruID] [tinyint] IDENTITY(1,1) NOT NULL,
	[TurAdi] [nvarchar](20) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__OdaTurle__A3D1C8BF59CB1CC6] PRIMARY KEY CLUSTERED 
(
	[OdaTuruID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OdemeTuru]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OdemeTuru](
	[OdemeTuruID] [tinyint] IDENTITY(1,1) NOT NULL,
	[OdemeTuru] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OdemeTuruID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[PersonelID] [int] IDENTITY(1,1) NOT NULL,
	[UnvanID] [tinyint] NOT NULL,
	[PersonelCepTel] [nvarchar](50) NOT NULL,
	[PersonelEmail] [nvarchar](50) NOT NULL,
	[PersonelAdres] [nvarchar](80) NOT NULL,
	[IlceID] [smallint] NOT NULL,
	[IlID] [tinyint] NOT NULL,
	[GoreveBaslamaTarihi] [date] NOT NULL,
	[GorevdenCikisTarihi] [date] NULL,
	[PersonelNotu] [tinyint] NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__Personel__0F0C5751ADE26402] PRIMARY KEY CLUSTERED 
(
	[PersonelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonelKimlik]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonelKimlik](
	[PersonelID] [int] NOT NULL,
	[TCveyaPasaportNo] [nvarchar](11) NOT NULL,
	[Cinsiyet] [bit] NOT NULL,
	[KanGrubuID] [tinyint] NOT NULL,
	[DogumTarigi] [date] NOT NULL,
	[DogumYeri] [nvarchar](50) NOT NULL,
	[BabaAdi] [nvarchar](50) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__Personel__0F0C575112974545] PRIMARY KEY CLUSTERED 
(
	[PersonelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Poliklinikler]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Poliklinikler](
	[PoliklinikID] [tinyint] IDENTITY(1,1) NOT NULL,
	[PoliklinikAdi] [nvarchar](50) NOT NULL,
	[OdaID1] [smallint] NULL,
	[OdaID2] [smallint] NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__Poliklin__145A8A3721C5E7C7] PRIMARY KEY CLUSTERED 
(
	[PoliklinikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Randevular]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Randevular](
	[RandevuID] [int] IDENTITY(1,1) NOT NULL,
	[HastaID] [int] NOT NULL,
	[DoktorID] [int] NOT NULL,
	[Tarih] [date] NOT NULL,
	[Saat] [time](7) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__Randevul__B795F36B2F2F484D] PRIMARY KEY CLUSTERED 
(
	[RandevuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receteler]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receteler](
	[ReceteID] [int] IDENTITY(1,1) NOT NULL,
	[MuayeneID] [int] NOT NULL,
	[IlaclarınAdi_Dozu_Kullanımı] [nvarchar](1000) NOT NULL,
	[SilindiMi] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ReceteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unvan]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unvan](
	[UnvanID] [tinyint] IDENTITY(1,1) NOT NULL,
	[UnvanAdi] [nvarchar](50) NULL,
	[SilindiMi] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UnvanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YatanHasta]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YatanHasta](
	[YatanHastaID] [int] IDENTITY(1,1) NOT NULL,
	[AmeliyatID] [int] NOT NULL,
	[OdaID] [smallint] NOT NULL,
	[YatisTarihi] [date] NOT NULL,
	[TaburcuTarihi] [date] NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK_YatanHasta] PRIMARY KEY CLUSTERED 
(
	[YatanHastaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YatanHastaDetay]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YatanHastaDetay](
	[YatanHastaID] [int] NOT NULL,
	[HemsireID] [int] NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK_YatanHastaDetay] PRIMARY KEY CLUSTERED 
(
	[YatanHastaID] ASC,
	[HemsireID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YogunBakim]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YogunBakim](
	[YogunBakimID] [int] IDENTITY(1,1) NOT NULL,
	[AmeliyatID] [int] NOT NULL,
	[OdaID] [smallint] NOT NULL,
	[BaslamaTarigi] [smalldatetime] NOT NULL,
	[BitisTarigi] [smalldatetime] NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK__YogunBak__FFA2DA39E4E18D50] PRIMARY KEY CLUSTERED 
(
	[YogunBakimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YogunBakimDetay]    Script Date: 24.02.2022 13:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YogunBakimDetay](
	[YogunBakimID] [int] NOT NULL,
	[HemsireID] [int] NOT NULL,
	[SilindiMi] [bit] NOT NULL,
 CONSTRAINT [PK_YogunBakimDatay_1] PRIMARY KEY CLUSTERED 
(
	[YogunBakimID] ASC,
	[HemsireID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ameliyat] ON 

INSERT [dbo].[Ameliyat] ([AmeliyatID], [MuayeneID], [OdaID], [BaslamaTarigi], [SilindiMi]) VALUES (1, 8, 1, CAST(N'2020-11-01T00:00:00' AS SmallDateTime), 0)
INSERT [dbo].[Ameliyat] ([AmeliyatID], [MuayeneID], [OdaID], [BaslamaTarigi], [SilindiMi]) VALUES (2, 14, 2, CAST(N'2020-11-01T00:00:00' AS SmallDateTime), 0)
INSERT [dbo].[Ameliyat] ([AmeliyatID], [MuayeneID], [OdaID], [BaslamaTarigi], [SilindiMi]) VALUES (3, 15, 3, CAST(N'2020-11-01T00:00:00' AS SmallDateTime), 0)
INSERT [dbo].[Ameliyat] ([AmeliyatID], [MuayeneID], [OdaID], [BaslamaTarigi], [SilindiMi]) VALUES (4, 19, 4, CAST(N'2020-11-01T00:00:00' AS SmallDateTime), 0)
INSERT [dbo].[Ameliyat] ([AmeliyatID], [MuayeneID], [OdaID], [BaslamaTarigi], [SilindiMi]) VALUES (5, 35, 1, CAST(N'2020-11-05T00:00:00' AS SmallDateTime), 0)
SET IDENTITY_INSERT [dbo].[Ameliyat] OFF
GO
INSERT [dbo].[AmeliyatDetay] ([AmeliyatID], [DoktorID], [HemsireID], [SilindiMi]) VALUES (1, 8, 1, 0)
INSERT [dbo].[AmeliyatDetay] ([AmeliyatID], [DoktorID], [HemsireID], [SilindiMi]) VALUES (1, 9, 10, 0)
INSERT [dbo].[AmeliyatDetay] ([AmeliyatID], [DoktorID], [HemsireID], [SilindiMi]) VALUES (1, 10, 11, 0)
INSERT [dbo].[AmeliyatDetay] ([AmeliyatID], [DoktorID], [HemsireID], [SilindiMi]) VALUES (2, 2, 9, 0)
INSERT [dbo].[AmeliyatDetay] ([AmeliyatID], [DoktorID], [HemsireID], [SilindiMi]) VALUES (2, 3, 8, 0)
INSERT [dbo].[AmeliyatDetay] ([AmeliyatID], [DoktorID], [HemsireID], [SilindiMi]) VALUES (2, 14, 2, 0)
INSERT [dbo].[AmeliyatDetay] ([AmeliyatID], [DoktorID], [HemsireID], [SilindiMi]) VALUES (3, 3, 5, 0)
INSERT [dbo].[AmeliyatDetay] ([AmeliyatID], [DoktorID], [HemsireID], [SilindiMi]) VALUES (3, 8, 7, 0)
INSERT [dbo].[AmeliyatDetay] ([AmeliyatID], [DoktorID], [HemsireID], [SilindiMi]) VALUES (3, 15, 1, 0)
INSERT [dbo].[AmeliyatDetay] ([AmeliyatID], [DoktorID], [HemsireID], [SilindiMi]) VALUES (4, 6, 3, 0)
INSERT [dbo].[AmeliyatDetay] ([AmeliyatID], [DoktorID], [HemsireID], [SilindiMi]) VALUES (4, 19, 1, 0)
INSERT [dbo].[AmeliyatDetay] ([AmeliyatID], [DoktorID], [HemsireID], [SilindiMi]) VALUES (4, 20, 12, 0)
INSERT [dbo].[AmeliyatDetay] ([AmeliyatID], [DoktorID], [HemsireID], [SilindiMi]) VALUES (5, 3, 13, 0)
INSERT [dbo].[AmeliyatDetay] ([AmeliyatID], [DoktorID], [HemsireID], [SilindiMi]) VALUES (5, 11, 1, 0)
INSERT [dbo].[AmeliyatDetay] ([AmeliyatID], [DoktorID], [HemsireID], [SilindiMi]) VALUES (5, 12, 14, 0)
GO
SET IDENTITY_INSERT [dbo].[AmeliyatRandevu] ON 

INSERT [dbo].[AmeliyatRandevu] ([AmeliyatRandevuID], [MuayeneID], [AmeliyatTarihi], [Saat], [SilindiMi]) VALUES (2, 8, CAST(N'2020-11-01' AS Date), CAST(N'09:30:00' AS Time), 0)
INSERT [dbo].[AmeliyatRandevu] ([AmeliyatRandevuID], [MuayeneID], [AmeliyatTarihi], [Saat], [SilindiMi]) VALUES (3, 14, CAST(N'2020-11-01' AS Date), CAST(N'09:30:00' AS Time), 0)
INSERT [dbo].[AmeliyatRandevu] ([AmeliyatRandevuID], [MuayeneID], [AmeliyatTarihi], [Saat], [SilindiMi]) VALUES (4, 15, CAST(N'2020-11-01' AS Date), CAST(N'11:30:00' AS Time), 0)
INSERT [dbo].[AmeliyatRandevu] ([AmeliyatRandevuID], [MuayeneID], [AmeliyatTarihi], [Saat], [SilindiMi]) VALUES (5, 19, CAST(N'2020-11-01' AS Date), CAST(N'04:30:00' AS Time), 0)
INSERT [dbo].[AmeliyatRandevu] ([AmeliyatRandevuID], [MuayeneID], [AmeliyatTarihi], [Saat], [SilindiMi]) VALUES (6, 35, CAST(N'2020-11-05' AS Date), CAST(N'09:30:00' AS Time), 0)
SET IDENTITY_INSERT [dbo].[AmeliyatRandevu] OFF
GO
SET IDENTITY_INSERT [dbo].[Doktor] ON 

INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (1, 1, 1, N'AYTAC', N'KARDAS', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (2, 2, 1, N'NAZ', N'SARAN', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (3, 3, 2, N'YAHYA', N'OZVEREN', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (4, 4, 2, N'ZEHRA', N'BINICI', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (5, 5, 3, N'HAYDAR', N'UGUR', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (6, 6, 3, N'SELIN', N'GEYIK', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (7, 7, 4, N'HALIL', N'GOKKAYA', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (8, 8, 4, N'AYSE', N'OZLU', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (9, 9, 5, N'INANC', N'ESER', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (10, 10, 5, N'OZLEM', N'DOGRU', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (11, 11, 6, N'MURATCAN', N'AKASYA', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (12, 12, 6, N'DEFNE', N'PEKEL', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (13, 13, 7, N'MURAT', N'BASER', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (14, 14, 7, N'IKLIM', N'GORDUK', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (15, 15, 8, N'NURI', N'KARTAL', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (16, 16, 8, N'SEVTAP', N'OZKURT', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (17, 17, 9, N'AVNI', N'YUCESU', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (18, 18, 9, N'FEYZA', N'CENGIZ', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (19, 19, 10, N'YAVUZ', N'OZTURKMEN', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (20, 20, 10, N'NILAY', N'ALPASLAN', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (21, 21, 11, N'CAN', N'MAZLUM', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (22, 22, 11, N'NILGUN', N'SIL', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (23, 23, 12, N'SANCAR', N'KURU', 0)
INSERT [dbo].[Doktor] ([DoktorID], [PersonelID], [PoliklinikID], [DoktorAdi], [DoktorSoyadi], [SilindiMi]) VALUES (24, 24, 12, N'KUMSAL', N'BELDEK', 0)
SET IDENTITY_INSERT [dbo].[Doktor] OFF
GO
INSERT [dbo].[DoktorIdariPersonel] ([DoktorID], [IdariPersonelID]) VALUES (1, 1)
INSERT [dbo].[DoktorIdariPersonel] ([DoktorID], [IdariPersonelID]) VALUES (4, 2)
INSERT [dbo].[DoktorIdariPersonel] ([DoktorID], [IdariPersonelID]) VALUES (9, 3)
GO
INSERT [dbo].[EKGCekimiSonuclari] ([EKGCekimiID], [Aciklama], [EKGResmi], [SonucTarigi], [SilindiMi]) VALUES (1, N'aciklam EKG', N'https://www.tarikkiziltan.com/Admin/Media/Blog/adana-ekg-cekimi.jpg', CAST(N'2020-10-15' AS Date), 0)
INSERT [dbo].[EKGCekimiSonuclari] ([EKGCekimiID], [Aciklama], [EKGResmi], [SonucTarigi], [SilindiMi]) VALUES (2, N'aciklam EKG', N'https://www.tarikkiziltan.com/Admin/Media/Blog/adana-ekg-cekimi.jpg', CAST(N'2020-10-15' AS Date), 0)
INSERT [dbo].[EKGCekimiSonuclari] ([EKGCekimiID], [Aciklama], [EKGResmi], [SonucTarigi], [SilindiMi]) VALUES (3, N'aciklam EKG', N'https://www.tarikkiziltan.com/Admin/Media/Blog/adana-ekg-cekimi.jpg', CAST(N'2020-10-15' AS Date), 0)
INSERT [dbo].[EKGCekimiSonuclari] ([EKGCekimiID], [Aciklama], [EKGResmi], [SonucTarigi], [SilindiMi]) VALUES (4, N'aciklam EKG', N'https://www.tarikkiziltan.com/Admin/Media/Blog/adana-ekg-cekimi.jpg', CAST(N'2020-10-15' AS Date), 0)
INSERT [dbo].[EKGCekimiSonuclari] ([EKGCekimiID], [Aciklama], [EKGResmi], [SonucTarigi], [SilindiMi]) VALUES (5, N'aciklam EKG', N'https://www.tarikkiziltan.com/Admin/Media/Blog/adana-ekg-cekimi.jpg', CAST(N'2020-10-15' AS Date), 0)
INSERT [dbo].[EKGCekimiSonuclari] ([EKGCekimiID], [Aciklama], [EKGResmi], [SonucTarigi], [SilindiMi]) VALUES (6, N'aciklam EKG', N'https://www.tarikkiziltan.com/Admin/Media/Blog/adana-ekg-cekimi.jpg', CAST(N'2020-10-15' AS Date), 0)
INSERT [dbo].[EKGCekimiSonuclari] ([EKGCekimiID], [Aciklama], [EKGResmi], [SonucTarigi], [SilindiMi]) VALUES (7, N'aciklam EKG', N'https://www.tarikkiziltan.com/Admin/Media/Blog/adana-ekg-cekimi.jpg', CAST(N'2020-10-15' AS Date), 0)
INSERT [dbo].[EKGCekimiSonuclari] ([EKGCekimiID], [Aciklama], [EKGResmi], [SonucTarigi], [SilindiMi]) VALUES (8, N'aciklam EKG', N'https://www.tarikkiziltan.com/Admin/Media/Blog/adana-ekg-cekimi.jpg', CAST(N'2020-10-15' AS Date), 0)
INSERT [dbo].[EKGCekimiSonuclari] ([EKGCekimiID], [Aciklama], [EKGResmi], [SonucTarigi], [SilindiMi]) VALUES (9, N'aciklam EKG', N'https://www.tarikkiziltan.com/Admin/Media/Blog/adana-ekg-cekimi.jpg', CAST(N'2020-10-15' AS Date), 0)
INSERT [dbo].[EKGCekimiSonuclari] ([EKGCekimiID], [Aciklama], [EKGResmi], [SonucTarigi], [SilindiMi]) VALUES (10, N'aciklam EKG', N'https://www.tarikkiziltan.com/Admin/Media/Blog/adana-ekg-cekimi.jpg', CAST(N'2020-10-15' AS Date), 0)
INSERT [dbo].[EKGCekimiSonuclari] ([EKGCekimiID], [Aciklama], [EKGResmi], [SonucTarigi], [SilindiMi]) VALUES (11, N'aciklam EKG', N'https://www.tarikkiziltan.com/Admin/Media/Blog/adana-ekg-cekimi.jpg', CAST(N'2020-10-15' AS Date), 0)
INSERT [dbo].[EKGCekimiSonuclari] ([EKGCekimiID], [Aciklama], [EKGResmi], [SonucTarigi], [SilindiMi]) VALUES (12, N'aciklam EKG', N'https://www.tarikkiziltan.com/Admin/Media/Blog/adana-ekg-cekimi.jpg', CAST(N'2020-10-15' AS Date), 0)
INSERT [dbo].[EKGCekimiSonuclari] ([EKGCekimiID], [Aciklama], [EKGResmi], [SonucTarigi], [SilindiMi]) VALUES (13, N'aciklam EKG', N'https://www.tarikkiziltan.com/Admin/Media/Blog/adana-ekg-cekimi.jpg', CAST(N'2020-10-15' AS Date), 0)
INSERT [dbo].[EKGCekimiSonuclari] ([EKGCekimiID], [Aciklama], [EKGResmi], [SonucTarigi], [SilindiMi]) VALUES (14, N'aciklam EKG', N'https://www.tarikkiziltan.com/Admin/Media/Blog/adana-ekg-cekimi.jpg', CAST(N'2020-10-15' AS Date), 0)
INSERT [dbo].[EKGCekimiSonuclari] ([EKGCekimiID], [Aciklama], [EKGResmi], [SonucTarigi], [SilindiMi]) VALUES (15, N'aciklam EKG', N'https://www.tarikkiziltan.com/Admin/Media/Blog/adana-ekg-cekimi.jpg', CAST(N'2020-10-15' AS Date), 0)
INSERT [dbo].[EKGCekimiSonuclari] ([EKGCekimiID], [Aciklama], [EKGResmi], [SonucTarigi], [SilindiMi]) VALUES (16, N'aciklam EKG', N'https://www.tarikkiziltan.com/Admin/Media/Blog/adana-ekg-cekimi.jpg', CAST(N'2020-10-15' AS Date), 0)
INSERT [dbo].[EKGCekimiSonuclari] ([EKGCekimiID], [Aciklama], [EKGResmi], [SonucTarigi], [SilindiMi]) VALUES (17, N'aciklam EKG', N'https://www.tarikkiziltan.com/Admin/Media/Blog/adana-ekg-cekimi.jpg', CAST(N'2020-10-15' AS Date), 0)
INSERT [dbo].[EKGCekimiSonuclari] ([EKGCekimiID], [Aciklama], [EKGResmi], [SonucTarigi], [SilindiMi]) VALUES (18, N'aciklam EKG', N'https://www.tarikkiziltan.com/Admin/Media/Blog/adana-ekg-cekimi.jpg', CAST(N'2020-10-15' AS Date), 0)
INSERT [dbo].[EKGCekimiSonuclari] ([EKGCekimiID], [Aciklama], [EKGResmi], [SonucTarigi], [SilindiMi]) VALUES (19, N'aciklam EKG', N'https://www.tarikkiziltan.com/Admin/Media/Blog/adana-ekg-cekimi.jpg', CAST(N'2020-10-15' AS Date), 0)
GO
SET IDENTITY_INSERT [dbo].[EKGCekimleri] ON 

INSERT [dbo].[EKGCekimleri] ([EKGCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (1, 23, 3, CAST(N'2020-10-10' AS Date), CAST(N'01:00:00' AS Time), 0)
INSERT [dbo].[EKGCekimleri] ([EKGCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (2, 23, 4, CAST(N'2020-10-10' AS Date), CAST(N'01:00:00' AS Time), 0)
INSERT [dbo].[EKGCekimleri] ([EKGCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (3, 23, 6, CAST(N'2020-10-10' AS Date), CAST(N'01:00:00' AS Time), 0)
INSERT [dbo].[EKGCekimleri] ([EKGCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (4, 23, 8, CAST(N'2020-10-10' AS Date), CAST(N'01:00:00' AS Time), 0)
INSERT [dbo].[EKGCekimleri] ([EKGCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (5, 23, 9, CAST(N'2020-10-10' AS Date), CAST(N'01:00:00' AS Time), 0)
INSERT [dbo].[EKGCekimleri] ([EKGCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (6, 23, 10, CAST(N'2020-10-10' AS Date), CAST(N'01:00:00' AS Time), 0)
INSERT [dbo].[EKGCekimleri] ([EKGCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (7, 23, 14, CAST(N'2020-10-10' AS Date), CAST(N'01:00:00' AS Time), 0)
INSERT [dbo].[EKGCekimleri] ([EKGCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (8, 23, 15, CAST(N'2020-10-10' AS Date), CAST(N'01:00:00' AS Time), 0)
INSERT [dbo].[EKGCekimleri] ([EKGCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (9, 23, 16, CAST(N'2020-10-10' AS Date), CAST(N'01:00:00' AS Time), 0)
INSERT [dbo].[EKGCekimleri] ([EKGCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (10, 23, 18, CAST(N'2020-10-10' AS Date), CAST(N'01:00:00' AS Time), 0)
INSERT [dbo].[EKGCekimleri] ([EKGCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (11, 23, 20, CAST(N'2020-10-10' AS Date), CAST(N'01:00:00' AS Time), 0)
INSERT [dbo].[EKGCekimleri] ([EKGCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (12, 23, 24, CAST(N'2020-10-10' AS Date), CAST(N'01:00:00' AS Time), 0)
INSERT [dbo].[EKGCekimleri] ([EKGCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (13, 23, 25, CAST(N'2020-10-10' AS Date), CAST(N'01:00:00' AS Time), 0)
INSERT [dbo].[EKGCekimleri] ([EKGCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (14, 23, 26, CAST(N'2020-10-10' AS Date), CAST(N'01:00:00' AS Time), 0)
INSERT [dbo].[EKGCekimleri] ([EKGCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (15, 23, 27, CAST(N'2020-10-10' AS Date), CAST(N'01:00:00' AS Time), 0)
INSERT [dbo].[EKGCekimleri] ([EKGCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (16, 23, 28, CAST(N'2020-10-10' AS Date), CAST(N'01:00:00' AS Time), 0)
INSERT [dbo].[EKGCekimleri] ([EKGCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (17, 23, 35, CAST(N'2020-10-10' AS Date), CAST(N'01:00:00' AS Time), 0)
INSERT [dbo].[EKGCekimleri] ([EKGCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (18, 23, 36, CAST(N'2020-10-10' AS Date), CAST(N'01:00:00' AS Time), 0)
INSERT [dbo].[EKGCekimleri] ([EKGCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (19, 23, 38, CAST(N'2020-10-10' AS Date), CAST(N'01:00:00' AS Time), 0)
SET IDENTITY_INSERT [dbo].[EKGCekimleri] OFF
GO
SET IDENTITY_INSERT [dbo].[GeriHizmetPersonel] ON 

INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (1, 40, N'BESTE', N'OKANT', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (2, 41, N'YILDIRIM', N'EKINCI', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (3, 42, N'IZEL', N'LIZILCIK', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (4, 43, N'FERHAT', N'SAFA', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (5, 44, N'RUMEYSA', N'KOSE', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (6, 45, N'MUSTAFA', N'UN', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (7, 46, N'SUNA', N'ERGE', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (8, 47, N'HAMDI', N'OFLAZ', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (9, 48, N'TUGCE', N'ARGA', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (10, 49, N'HABIP', N'GELEGEN', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (11, 50, N'ZEYNEP', N'AKMESE', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (12, 51, N'VOLKAN', N'KEMIK', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (13, 52, N'GULSEREN', N'GORGULU', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (14, 53, N'SAMI', N'AKDUMAN', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (15, 54, N'PAPATYA', N'ACIL', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (16, 55, N'CETIN', N'KARTAL', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (17, 56, N'BIRSEN', N'HEDIK', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (18, 57, N'SINAN', N'NUMAN', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (19, 58, N'ISIK', N'YOYRAN', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (20, 59, N'BURKAY', N'GOCER', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (21, 60, N'PELINSU', N'OLPAK', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (22, 61, N'METIN', N'KASAP', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (23, 62, N'KUBRA', N'AYDINCI', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (24, 63, N'SERTAC', N'ISTEK', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (25, 64, N'JALE', N'AYSEN', 0)
INSERT [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID], [PersonelID], [GeriHizmetPersonelAdi], [GeriHizmetPersonelSoyadi], [SilindiMi]) VALUES (26, 65, N'TEYFIK', N'ALTINSOY', 0)
SET IDENTITY_INSERT [dbo].[GeriHizmetPersonel] OFF
GO
INSERT [dbo].[GogusFilmiSonuclari] ([GogusFilmiID], [Aciklama], [GogusFilmiResmi], [SonucTarigi], [SilindiMi]) VALUES (1, N'Aciklama', N'https://www.ahmetakgul.com.tr/images/stories/gs1.jpg', CAST(N'2020-10-10' AS Date), 0)
INSERT [dbo].[GogusFilmiSonuclari] ([GogusFilmiID], [Aciklama], [GogusFilmiResmi], [SonucTarigi], [SilindiMi]) VALUES (2, N'Aciklama', N'https://www.ahmetakgul.com.tr/images/stories/gs1.jpg', CAST(N'2020-10-10' AS Date), 0)
INSERT [dbo].[GogusFilmiSonuclari] ([GogusFilmiID], [Aciklama], [GogusFilmiResmi], [SonucTarigi], [SilindiMi]) VALUES (3, N'Aciklama', N'https://www.ahmetakgul.com.tr/images/stories/gs1.jpg', CAST(N'2020-10-10' AS Date), 0)
INSERT [dbo].[GogusFilmiSonuclari] ([GogusFilmiID], [Aciklama], [GogusFilmiResmi], [SonucTarigi], [SilindiMi]) VALUES (4, N'Aciklama', N'https://www.ahmetakgul.com.tr/images/stories/gs1.jpg', CAST(N'2020-10-10' AS Date), 0)
INSERT [dbo].[GogusFilmiSonuclari] ([GogusFilmiID], [Aciklama], [GogusFilmiResmi], [SonucTarigi], [SilindiMi]) VALUES (5, N'Aciklama', N'https://www.ahmetakgul.com.tr/images/stories/gs1.jpg', CAST(N'2020-10-10' AS Date), 0)
INSERT [dbo].[GogusFilmiSonuclari] ([GogusFilmiID], [Aciklama], [GogusFilmiResmi], [SonucTarigi], [SilindiMi]) VALUES (6, N'Aciklama', N'https://www.ahmetakgul.com.tr/images/stories/gs1.jpg', CAST(N'2020-10-10' AS Date), 0)
INSERT [dbo].[GogusFilmiSonuclari] ([GogusFilmiID], [Aciklama], [GogusFilmiResmi], [SonucTarigi], [SilindiMi]) VALUES (7, N'Aciklama', N'https://www.ahmetakgul.com.tr/images/stories/gs1.jpg', CAST(N'2020-10-10' AS Date), 0)
INSERT [dbo].[GogusFilmiSonuclari] ([GogusFilmiID], [Aciklama], [GogusFilmiResmi], [SonucTarigi], [SilindiMi]) VALUES (8, N'Aciklama', N'https://www.ahmetakgul.com.tr/images/stories/gs1.jpg', CAST(N'2020-10-10' AS Date), 0)
INSERT [dbo].[GogusFilmiSonuclari] ([GogusFilmiID], [Aciklama], [GogusFilmiResmi], [SonucTarigi], [SilindiMi]) VALUES (9, N'Aciklama', N'https://www.ahmetakgul.com.tr/images/stories/gs1.jpg', CAST(N'2020-10-10' AS Date), 0)
INSERT [dbo].[GogusFilmiSonuclari] ([GogusFilmiID], [Aciklama], [GogusFilmiResmi], [SonucTarigi], [SilindiMi]) VALUES (10, N'Aciklama', N'https://www.ahmetakgul.com.tr/images/stories/gs1.jpg', CAST(N'2020-10-10' AS Date), 0)
INSERT [dbo].[GogusFilmiSonuclari] ([GogusFilmiID], [Aciklama], [GogusFilmiResmi], [SonucTarigi], [SilindiMi]) VALUES (11, N'Aciklama', N'https://www.ahmetakgul.com.tr/images/stories/gs1.jpg', CAST(N'2020-10-10' AS Date), 0)
INSERT [dbo].[GogusFilmiSonuclari] ([GogusFilmiID], [Aciklama], [GogusFilmiResmi], [SonucTarigi], [SilindiMi]) VALUES (12, N'Aciklama', N'https://www.ahmetakgul.com.tr/images/stories/gs1.jpg', CAST(N'2020-10-10' AS Date), 0)
INSERT [dbo].[GogusFilmiSonuclari] ([GogusFilmiID], [Aciklama], [GogusFilmiResmi], [SonucTarigi], [SilindiMi]) VALUES (13, N'Aciklama', N'https://www.ahmetakgul.com.tr/images/stories/gs1.jpg', CAST(N'2020-10-10' AS Date), 0)
INSERT [dbo].[GogusFilmiSonuclari] ([GogusFilmiID], [Aciklama], [GogusFilmiResmi], [SonucTarigi], [SilindiMi]) VALUES (14, N'Aciklama', N'https://www.ahmetakgul.com.tr/images/stories/gs1.jpg', CAST(N'2020-10-10' AS Date), 0)
INSERT [dbo].[GogusFilmiSonuclari] ([GogusFilmiID], [Aciklama], [GogusFilmiResmi], [SonucTarigi], [SilindiMi]) VALUES (15, N'Aciklama', N'https://www.ahmetakgul.com.tr/images/stories/gs1.jpg', CAST(N'2020-10-10' AS Date), 0)
INSERT [dbo].[GogusFilmiSonuclari] ([GogusFilmiID], [Aciklama], [GogusFilmiResmi], [SonucTarigi], [SilindiMi]) VALUES (16, N'Aciklama', N'https://www.ahmetakgul.com.tr/images/stories/gs1.jpg', CAST(N'2020-10-10' AS Date), 0)
INSERT [dbo].[GogusFilmiSonuclari] ([GogusFilmiID], [Aciklama], [GogusFilmiResmi], [SonucTarigi], [SilindiMi]) VALUES (17, N'Aciklama', N'https://www.ahmetakgul.com.tr/images/stories/gs1.jpg', CAST(N'2020-10-10' AS Date), 0)
GO
SET IDENTITY_INSERT [dbo].[GogusFilmleri] ON 

INSERT [dbo].[GogusFilmleri] ([GogusFilmiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (1, 24, 1, CAST(N'2020-10-05' AS Date), CAST(N'04:00:00' AS Time), 0)
INSERT [dbo].[GogusFilmleri] ([GogusFilmiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (2, 24, 3, CAST(N'2020-10-05' AS Date), CAST(N'04:00:00' AS Time), 0)
INSERT [dbo].[GogusFilmleri] ([GogusFilmiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (3, 24, 4, CAST(N'2020-10-05' AS Date), CAST(N'04:00:00' AS Time), 0)
INSERT [dbo].[GogusFilmleri] ([GogusFilmiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (4, 24, 10, CAST(N'2020-10-05' AS Date), CAST(N'04:00:00' AS Time), 0)
INSERT [dbo].[GogusFilmleri] ([GogusFilmiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (5, 24, 11, CAST(N'2020-10-05' AS Date), CAST(N'04:00:00' AS Time), 0)
INSERT [dbo].[GogusFilmleri] ([GogusFilmiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (6, 24, 12, CAST(N'2020-10-05' AS Date), CAST(N'04:00:00' AS Time), 0)
INSERT [dbo].[GogusFilmleri] ([GogusFilmiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (7, 24, 13, CAST(N'2020-10-05' AS Date), CAST(N'04:00:00' AS Time), 0)
INSERT [dbo].[GogusFilmleri] ([GogusFilmiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (8, 24, 15, CAST(N'2020-10-05' AS Date), CAST(N'04:00:00' AS Time), 0)
INSERT [dbo].[GogusFilmleri] ([GogusFilmiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (9, 24, 16, CAST(N'2020-10-05' AS Date), CAST(N'04:00:00' AS Time), 0)
INSERT [dbo].[GogusFilmleri] ([GogusFilmiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (10, 24, 17, CAST(N'2020-10-05' AS Date), CAST(N'04:00:00' AS Time), 0)
INSERT [dbo].[GogusFilmleri] ([GogusFilmiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (11, 24, 22, CAST(N'2020-10-05' AS Date), CAST(N'04:00:00' AS Time), 0)
INSERT [dbo].[GogusFilmleri] ([GogusFilmiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (12, 24, 27, CAST(N'2020-10-05' AS Date), CAST(N'04:00:00' AS Time), 0)
INSERT [dbo].[GogusFilmleri] ([GogusFilmiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (13, 24, 30, CAST(N'2020-10-05' AS Date), CAST(N'04:00:00' AS Time), 0)
INSERT [dbo].[GogusFilmleri] ([GogusFilmiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (14, 24, 31, CAST(N'2020-10-05' AS Date), CAST(N'04:00:00' AS Time), 0)
INSERT [dbo].[GogusFilmleri] ([GogusFilmiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (15, 24, 32, CAST(N'2020-10-05' AS Date), CAST(N'04:00:00' AS Time), 0)
INSERT [dbo].[GogusFilmleri] ([GogusFilmiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (16, 24, 33, CAST(N'2020-10-05' AS Date), CAST(N'04:00:00' AS Time), 0)
INSERT [dbo].[GogusFilmleri] ([GogusFilmiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (17, 24, 35, CAST(N'2020-10-05' AS Date), CAST(N'04:00:00' AS Time), 0)
SET IDENTITY_INSERT [dbo].[GogusFilmleri] OFF
GO
SET IDENTITY_INSERT [dbo].[Hasta] ON 

INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (1, N'GÖKHAN', N'DİNÇ', 0, 1, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (2, N'KASIM', N'KOL', 0, 2, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (3, N'BEDRİ ', N'KAYLAN', 0, 3, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (4, N'SONGÜL', N'BAK', 1, 4, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (5, N'MAKBULE', N'SİMSER', 1, 5, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (6, N'TAYYAR', N'ÖLMEZ', 0, 6, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (7, N'NAZ', N'BURUNKAYA', 1, 7, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (8, N'HALİL', N'ERTEKİN', 0, 8, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (9, N'CEMİLE ', N'GEZEK', 1, 1, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (10, N'CEYDA ', N'GÖLCÜK', 1, 2, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (11, N'ASENA ', N'GİDER', 1, 3, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (12, N'SABRİ ', N'KONAR', 0, 4, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (13, N'İLYAS ', N'ATBAŞ', 0, 5, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (14, N'SEZGİN ', N'CENGİZ', 0, 6, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (15, N'SERPİL ', N'BOZKUŞ', 1, 7, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (16, N'KÜBRA ', N'KARAPINAR', 1, 8, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (17, N'KORAY ', N'ÇİÇEK', 0, 1, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (18, N'EMİR ', N'ÇELEN', 0, 2, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (19, N'CEYLİN ', N'PEKEL', 1, 3, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (20, N'MERYEM ', N'DERYA', 1, 4, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (21, N'GÜLCE ', N'KURTOĞLU', 1, 5, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (22, N'HAKKI ', N'GÜL', 0, 6, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (23, N'SİBEL ', N'ONARAN', 1, 7, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (24, N'SAVAŞ ', N'DİVARCI', 0, 8, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (25, N'ÜMİT ', N'DUMAN', 0, 1, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (26, N'ERGÜN ', N'TIRIN', 0, 2, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (27, N'GÖKTEN ', N'PAMPAL', 0, 3, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (28, N'AYNUR ', N'CİNBİZ', 1, 4, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (29, N'OKAN ', N'TUNCALI', 0, 5, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (30, N'YAKUP ', N'BULUT', 0, 6, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (31, N'KAMİL ', N'KOÇYİĞİT', 0, 7, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (32, N'TUĞÇE ', N'AYVA', 1, 8, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (33, N'NURCAN ', N'YAŞA', 1, 1, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (34, N'AYDAN ', N'ÇÖL', 1, 2, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (35, N'NEZİH ', N'KALAY', 1, 3, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (36, N'ÖZHAN ', N'KILINÇ', 0, 4, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (37, N'Christoph', N'Kenelin', 0, 5, 0)
INSERT [dbo].[Hasta] ([HastaID], [HastaAdi], [HastaSoyadi], [HastaCinsiyet], [KanGrubuID], [SilindiMi]) VALUES (38, N'Daniel', N'Welden', 0, 6, 0)
SET IDENTITY_INSERT [dbo].[Hasta] OFF
GO
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (1, N'5466037974', CAST(N'1981-12-30' AS Date), N'1', N'HÜSEYİN ', N'Mah 3 Cad 1 Sok 2', 1, 34, N'8627526389', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (2, N'7167204609', CAST(N'1971-02-26' AS Date), N'2', N'MEHMET ', N'Mah 3 Cad 1 Sok 2', 2, 34, N'6982250849', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (3, N'8463715834', CAST(N'1978-11-11' AS Date), N'3', N'NECMİ ', N'Mah 3 Cad 1 Sok 2', 3, 34, N'0997663480', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (4, N'3729588613', CAST(N'1975-11-26' AS Date), N'4', N'BAHRİ ', N'Mah 3 Cad 1 Sok 2', 4, 34, N'3283731926', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (5, N'3093082080', CAST(N'1987-08-08' AS Date), N'5', N'SAYGIN ', N'Mah 3 Cad 1 Sok 2', 5, 34, N'6018020793', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (6, N'0580304582', CAST(N'1989-04-16' AS Date), N'6', N'BARIŞ ', N'Mah 3 Cad 1 Sok 2', 6, 34, N'7852964079', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (7, N'5260563905', CAST(N'1970-11-04' AS Date), N'7', N'SAİD ', N'Mah 3 Cad 1 Sok 2', 7, 34, N'9921103105', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (8, N'4041526736', CAST(N'1981-03-03' AS Date), N'8', N'BAHADIR', N'Mah 3 Cad 1 Sok 2', 8, 34, N'6878013291', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (9, N'5495591038', CAST(N'1992-11-22' AS Date), N'9', N'MUSTAFA ', N'Mah 3 Cad 1 Sok 2', 9, 34, N'9104719565', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (10, N'1533065225', CAST(N'1983-07-30' AS Date), N'10', N'CEM ', N'Mah 3 Cad 1 Sok 2', 10, 34, N'3698597667', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (11, N'2164341589', CAST(N'1971-03-02' AS Date), N'11', N'TUNA ', N'Mah 3 Cad 1 Sok 2', 11, 34, N'8652842418', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (12, N'0853275467', CAST(N'1984-11-09' AS Date), N'12', N'MEHMET ', N'Mah 3 Cad 1 Sok 2', 12, 34, N'9992037962', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (13, N'1156496071', CAST(N'1983-10-28' AS Date), N'13', N'ONUR ', N'Mah 3 Cad 1 Sok 2', 13, 34, N'6471575858', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (14, N'7123787048', CAST(N'1986-04-29' AS Date), N'14', N'RESUL ', N'Mah 3 Cad 1 Sok 2', 14, 34, N'8515415224', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (15, N'0587193921', CAST(N'1997-03-24' AS Date), N'15', N'MERTAY ', N'Mah 3 Cad 1 Sok 2', 15, 34, N'1366686101', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (16, N'7698775410', CAST(N'1975-11-19' AS Date), N'16', N'ABİDİN ', N'Mah 3 Cad 1 Sok 2', 16, 34, N'2002253080', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (17, N'1244937401', CAST(N'1974-06-04' AS Date), N'17', N'MUHAMMET ', N'Mah 3 Cad 1 Sok 2', 17, 34, N'4585584404', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (18, N'7545446828', CAST(N'1974-11-28' AS Date), N'18', N'NEBİ ', N'Mah 3 Cad 1 Sok 2', 18, 34, N'4303218502', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (19, N'9895037090', CAST(N'1976-11-20' AS Date), N'19', N'BARTU ', N'Mah 3 Cad 1 Sok 2', 19, 34, N'1652161643', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (20, N'7254841747', CAST(N'1992-02-20' AS Date), N'20', N'TURGAY ', N'Mah 3 Cad 1 Sok 2', 20, 34, N'2097777171', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (21, N'8372977984', CAST(N'1976-01-26' AS Date), N'21', N'KORHAN ', N'Mah 3 Cad 1 Sok 2', 21, 34, N'2179299389', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (22, N'2817953916', CAST(N'1993-08-06' AS Date), N'22', N'ASLAN ', N'Mah 3 Cad 1 Sok 2', 2, 34, N'7576822929', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (23, N'1726108724', CAST(N'1990-06-11' AS Date), N'23', N'ÖMER ', N'Mah 3 Cad 1 Sok 2', 3, 34, N'2948320186', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (24, N'9263123268', CAST(N'1985-02-25' AS Date), N'24', N'AZİZ ', N'Mah 3 Cad 1 Sok 2', 4, 34, N'6759565096', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (25, N'0354407465', CAST(N'1991-07-19' AS Date), N'25', N'ŞERİF ', N'Mah 3 Cad 1 Sok 2', 5, 34, N'6948740421', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (26, N'6969895025', CAST(N'1975-06-19' AS Date), N'26', N'CAFER', N'Mah 3 Cad 1 Sok 2', 2, 34, N'1530775647', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (27, N'2242333100', CAST(N'1980-04-14' AS Date), N'27', N'İSA ', N'Mah 3 Cad 1 Sok 2', 7, 34, N'4462843541', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (28, N'2746571404', CAST(N'1988-07-23' AS Date), N'28', N'TEVFİK ', N'Mah 3 Cad 1 Sok 2', 8, 34, N'8474160324', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (29, N'9127386864', CAST(N'1974-10-13' AS Date), N'29', N'HAYATİ ', N'Mah 3 Cad 1 Sok 2', 2, 34, N'3679396503', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (30, N'6462539445', CAST(N'1994-05-02' AS Date), N'30', N'HAKKI ', N'Mah 3 Cad 1 Sok 2', 1, 34, N'5422496337', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (31, N'3383073181', CAST(N'1995-03-04' AS Date), N'31', N'MEVLÜT', N'Mah 3 Cad 1 Sok 2', 1, 34, N'2187773531', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (32, N'6328939396', CAST(N'1971-10-28' AS Date), N'32', N'MAHMUT ', N'Mah 3 Cad 1 Sok 2', 2, 34, N'7494608702', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (33, N'9337344467', CAST(N'1997-01-09' AS Date), N'33', N'MELİH ', N'Mah 3 Cad 1 Sok 2', 3, 34, N'4802506252', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (34, N'1807730867', CAST(N'1999-06-30' AS Date), N'34', N'CEYHUN ', N'Mah 3 Cad 1 Sok 2', 3, 34, N'5184583343', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (35, N'8217314470', CAST(N'1971-11-15' AS Date), N'35', N'BÜNYAMİN', N'Mah 3 Cad 1 Sok 2', 5, 34, N'4013746034', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (36, N'9122262911', CAST(N'1976-04-05' AS Date), N'36', N'OZAN ', N'Mah 3 Cad 1 Sok 2', 6, 34, N'7803146104', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (37, N'5438454825', CAST(N'1977-02-20' AS Date), N'37', N'Moe', N'Mah 3 Cad 1 Sok 2', 21, 34, N'1810396549', 0)
INSERT [dbo].[HastaDetayBilgileri] ([HastaID], [HastaTCveyaPasaportNo], [HastaDogumTarihi], [HastaDogumYeri], [HastaBabaAdi], [HastaAdres], [IlceID], [IlID], [HastaCepTel], [SilindiMi]) VALUES (38, N'4844880527', CAST(N'1975-06-28' AS Date), N'38', N'Lorne', N'Mah 3 Cad 1 Sok 2', 21, 34, N'0676160778', 0)
GO
SET IDENTITY_INSERT [dbo].[HastaKabul] ON 

INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (1, 1, 1, CAST(N'2022-02-08' AS Date), N'Şiddetli Baş Ağrısı', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (2, 2, 2, CAST(N'2022-02-18' AS Date), N'Mide Ağrısı', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (3, 3, 3, CAST(N'2022-02-02' AS Date), N'Boğaz Ağrısı', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (4, 4, 4, CAST(N'2022-05-06' AS Date), N'Kulak Ağrısı', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (5, 5, 5, CAST(N'2022-05-14' AS Date), N'Göz Bozukluğu', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (6, 6, 6, CAST(N'2022-04-26' AS Date), N'Kafamın içinde şaka yapan biri var dedi', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (7, 7, 7, CAST(N'2022-04-15' AS Date), N'Mide Yanması', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (8, 8, 8, CAST(N'2022-04-15' AS Date), N'Burun Akıntısı', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (9, 9, 9, CAST(N'2022-05-23' AS Date), N'Bel Ağrısı', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (10, 10, 10, CAST(N'2022-04-22' AS Date), N'Ayak Burkulması', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (11, 11, 11, CAST(N'2022-02-09' AS Date), N'El Yanığı', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (12, 12, 12, CAST(N'2022-04-15' AS Date), N'Deride Kabarma', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (13, 13, 13, CAST(N'2022-06-04' AS Date), N'Aşırı Terleme', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (14, 14, 14, CAST(N'2022-04-08' AS Date), N'Tırnak Batması', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (15, 15, 15, CAST(N'2022-05-19' AS Date), N'Diş Ağrısı', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (16, 16, 16, CAST(N'2022-05-16' AS Date), N'Baş Dönmesi', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (17, 17, 17, CAST(N'2022-02-10' AS Date), N'Diz Ağrısı', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (18, 18, 18, CAST(N'2022-04-12' AS Date), N'Egzama Şikayeti', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (19, 19, 19, CAST(N'2022-02-21' AS Date), N'Şiddetli Öksürük Covid olabilir', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (20, 20, 20, CAST(N'2022-02-07' AS Date), N'Böbrek Hastalığı', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (21, 21, 21, CAST(N'2022-02-08' AS Date), N'Mide Ağrısı', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (22, 22, 22, CAST(N'2022-03-03' AS Date), N'Bulanık Görme', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (23, 23, 23, CAST(N'2022-02-03' AS Date), N'Panik Atak', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (24, 24, 24, CAST(N'2022-05-18' AS Date), N'Göğüs Ağrısı', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (25, 1, 25, CAST(N'2022-03-21' AS Date), N'Batın Ağrısı', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (26, 2, 26, CAST(N'2022-03-11' AS Date), N'Kalp Ritim Bozukluğu', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (27, 3, 27, CAST(N'2022-04-16' AS Date), N'Kol Kırılması', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (28, 4, 28, CAST(N'2022-05-31' AS Date), N'Burun Akıntısı', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (29, 5, 29, CAST(N'2022-04-28' AS Date), N'Boğaz Ağrısı', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (30, 6, 30, CAST(N'2022-03-13' AS Date), N'Bel Ağrısı', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (31, 7, 31, CAST(N'2022-06-02' AS Date), N'Baş Dönmesi', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (32, 8, 32, CAST(N'2022-04-19' AS Date), N'Böbrek Hastalığı', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (33, 9, 33, CAST(N'2022-04-01' AS Date), N'Bulanık Görme', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (34, 10, 34, CAST(N'2022-03-29' AS Date), N'Panik Atak', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (35, 11, 35, CAST(N'2022-05-05' AS Date), N'Kalp Ritim Bozukluğu', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (36, 12, 36, CAST(N'2022-04-10' AS Date), N'Batın Ağrısı', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (37, 13, 37, CAST(N'2022-02-18' AS Date), N'Bel Ağrısı', 0)
INSERT [dbo].[HastaKabul] ([HastaKabulID], [DoktorID], [HastaID], [HastaKayitTarihi], [HastaSikayeti], [SilindiMi]) VALUES (38, 14, 38, CAST(N'2022-04-13' AS Date), N'Soğuk Algınlığı', 0)
SET IDENTITY_INSERT [dbo].[HastaKabul] OFF
GO
SET IDENTITY_INSERT [dbo].[HastaOdeme] ON 

INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (1, 1, 1, CAST(N'2020-01-09' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (2, 2, 3, CAST(N'2020-01-03' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (3, 3, 1, CAST(N'2020-01-11' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (4, 4, 2, CAST(N'2020-01-14' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (5, 5, 1, CAST(N'2020-01-03' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (6, 6, 1, CAST(N'2020-01-16' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (7, 7, 2, CAST(N'2020-01-04' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (8, 8, 3, CAST(N'2020-01-19' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (9, 9, 2, CAST(N'2020-01-15' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (10, 10, 1, CAST(N'2020-01-08' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (11, 11, 1, CAST(N'2020-01-16' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (12, 12, 3, CAST(N'2020-01-11' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (13, 13, 1, CAST(N'2020-01-15' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (14, 14, 1, CAST(N'2020-01-04' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (15, 15, 3, CAST(N'2020-01-08' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (16, 16, 2, CAST(N'2020-01-14' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (17, 17, 1, CAST(N'2020-01-18' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (18, 18, 1, CAST(N'2020-01-13' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (19, 19, 2, CAST(N'2020-01-06' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (20, 20, 3, CAST(N'2020-01-03' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (21, 21, 2, CAST(N'2020-01-06' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (22, 22, 3, CAST(N'2020-01-13' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (23, 23, 3, CAST(N'2020-01-16' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (24, 24, 3, CAST(N'2020-01-08' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (25, 25, 3, CAST(N'2020-01-09' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (26, 26, 1, CAST(N'2020-01-13' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (27, 27, 3, CAST(N'2020-01-10' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (28, 28, 1, CAST(N'2020-01-07' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (29, 29, 2, CAST(N'2020-01-08' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (30, 30, 3, CAST(N'2020-01-05' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (31, 31, 1, CAST(N'2020-01-03' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (32, 32, 2, CAST(N'2020-01-03' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (33, 33, 2, CAST(N'2020-01-11' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (34, 34, 3, CAST(N'2020-01-02' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (35, 35, 1, CAST(N'2020-01-08' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (36, 36, 3, CAST(N'2020-01-16' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (37, 37, 2, CAST(N'2020-01-01' AS Date), 0)
INSERT [dbo].[HastaOdeme] ([OdemeID], [HastaID], [OdemeTuruID], [Tarih], [SilindiMi]) VALUES (38, 38, 2, CAST(N'2020-01-07' AS Date), 0)
SET IDENTITY_INSERT [dbo].[HastaOdeme] OFF
GO
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (1, 1, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (1, 6, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (1, 9, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (2, 1, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (2, 3, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (2, 7, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (3, 6, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (3, 7, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (3, 11, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (4, 3, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (4, 7, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (4, 10, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (5, 3, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (5, 6, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (5, 11, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (6, 7, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (6, 9, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (6, 10, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (7, 1, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (7, 6, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (7, 9, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (8, 3, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (8, 7, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (8, 8, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (9, 2, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (9, 3, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (9, 5, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (10, 4, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (10, 7, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (10, 11, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (11, 4, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (11, 5, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (12, 4, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (12, 6, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (12, 8, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (13, 1, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (13, 6, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (13, 11, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (14, 1, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (14, 4, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (14, 11, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (15, 3, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (15, 8, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (15, 10, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (16, 5, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (16, 10, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (17, 9, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (17, 11, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (18, 2, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (18, 10, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (18, 11, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (19, 2, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (19, 6, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (19, 10, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (20, 2, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (20, 8, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (20, 10, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (21, 6, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (21, 9, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (21, 10, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (22, 2, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (22, 3, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (22, 6, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (23, 4, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (23, 5, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (23, 7, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (24, 4, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (24, 10, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (24, 11, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (25, 5, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (25, 6, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (25, 10, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (26, 3, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (26, 4, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (26, 8, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (27, 1, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (27, 2, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (27, 3, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (28, 7, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (28, 9, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (29, 1, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (29, 3, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (29, 7, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (30, 1, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (30, 3, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (30, 4, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (31, 7, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (31, 10, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (31, 11, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (32, 10, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (33, 2, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (33, 3, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (34, 4, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (34, 6, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (34, 7, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (35, 1, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (35, 2, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (36, 2, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (37, 2, CAST(0.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HastaOdemeDetay] ([OdemeID], [HizmetID], [Indirim], [SilindiMi]) VALUES (38, 2, CAST(0.00 AS Decimal(14, 2)), 0)
GO
SET IDENTITY_INSERT [dbo].[Hemsire] ON 

INSERT [dbo].[Hemsire] ([HemsireID], [PersonelID], [PoliklinikID], [HemsireAdi], [HemsireSoyadi], [SilindiMi]) VALUES (1, 25, 1, N'IRFAN', N'DINCER', 0)
INSERT [dbo].[Hemsire] ([HemsireID], [PersonelID], [PoliklinikID], [HemsireAdi], [HemsireSoyadi], [SilindiMi]) VALUES (2, 26, 2, N'MELTEM', N'ATABAY', 0)
INSERT [dbo].[Hemsire] ([HemsireID], [PersonelID], [PoliklinikID], [HemsireAdi], [HemsireSoyadi], [SilindiMi]) VALUES (3, 27, 3, N'MERT', N'SUVARI', 0)
INSERT [dbo].[Hemsire] ([HemsireID], [PersonelID], [PoliklinikID], [HemsireAdi], [HemsireSoyadi], [SilindiMi]) VALUES (4, 28, 4, N'BINNUR', N'BAK', 0)
INSERT [dbo].[Hemsire] ([HemsireID], [PersonelID], [PoliklinikID], [HemsireAdi], [HemsireSoyadi], [SilindiMi]) VALUES (5, 29, 5, N'RAIF', N'ERMEMEK', 0)
INSERT [dbo].[Hemsire] ([HemsireID], [PersonelID], [PoliklinikID], [HemsireAdi], [HemsireSoyadi], [SilindiMi]) VALUES (6, 30, 6, N'BURCIN', N'GOKCE', 0)
INSERT [dbo].[Hemsire] ([HemsireID], [PersonelID], [PoliklinikID], [HemsireAdi], [HemsireSoyadi], [SilindiMi]) VALUES (7, 31, 7, N'ERAY', N'SEBIT', 0)
INSERT [dbo].[Hemsire] ([HemsireID], [PersonelID], [PoliklinikID], [HemsireAdi], [HemsireSoyadi], [SilindiMi]) VALUES (8, 32, 8, N'SEVGI', N'OZUGU', 0)
INSERT [dbo].[Hemsire] ([HemsireID], [PersonelID], [PoliklinikID], [HemsireAdi], [HemsireSoyadi], [SilindiMi]) VALUES (9, 33, 9, N'ONDER', N'SIVIS', 0)
INSERT [dbo].[Hemsire] ([HemsireID], [PersonelID], [PoliklinikID], [HemsireAdi], [HemsireSoyadi], [SilindiMi]) VALUES (10, 34, 10, N'SEVIM', N'ALPAYCI', 0)
INSERT [dbo].[Hemsire] ([HemsireID], [PersonelID], [PoliklinikID], [HemsireAdi], [HemsireSoyadi], [SilindiMi]) VALUES (11, 35, 11, N'BERKAY', N'OZMEN', 0)
INSERT [dbo].[Hemsire] ([HemsireID], [PersonelID], [PoliklinikID], [HemsireAdi], [HemsireSoyadi], [SilindiMi]) VALUES (12, 36, 12, N'HALE', N'ISTAR', 0)
INSERT [dbo].[Hemsire] ([HemsireID], [PersonelID], [PoliklinikID], [HemsireAdi], [HemsireSoyadi], [SilindiMi]) VALUES (13, 37, 1, N'HAKKI', N'KOCA', 0)
INSERT [dbo].[Hemsire] ([HemsireID], [PersonelID], [PoliklinikID], [HemsireAdi], [HemsireSoyadi], [SilindiMi]) VALUES (14, 38, 2, N'AYSU', N'DUZEL', 0)
INSERT [dbo].[Hemsire] ([HemsireID], [PersonelID], [PoliklinikID], [HemsireAdi], [HemsireSoyadi], [SilindiMi]) VALUES (15, 39, 3, N'SABRI', N'BAL', 0)
SET IDENTITY_INSERT [dbo].[Hemsire] OFF
GO
SET IDENTITY_INSERT [dbo].[HizmetUcretleri] ON 

INSERT [dbo].[HizmetUcretleri] ([HizmetID], [HizmetAdi], [HizmetUcreti], [SilindiMi]) VALUES (1, N'Prof.Dr. Muayene', CAST(800.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HizmetUcretleri] ([HizmetID], [HizmetAdi], [HizmetUcreti], [SilindiMi]) VALUES (2, N'Doc. Dr. Muayene', CAST(500.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HizmetUcretleri] ([HizmetID], [HizmetAdi], [HizmetUcreti], [SilindiMi]) VALUES (3, N'Uzm. Dr. Muayene', CAST(200.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HizmetUcretleri] ([HizmetID], [HizmetAdi], [HizmetUcreti], [SilindiMi]) VALUES (4, N'Ameliyat', CAST(10000.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HizmetUcretleri] ([HizmetID], [HizmetAdi], [HizmetUcreti], [SilindiMi]) VALUES (5, N'Idrar Tahlil', CAST(100.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HizmetUcretleri] ([HizmetID], [HizmetAdi], [HizmetUcreti], [SilindiMi]) VALUES (6, N'Kan Tahlil', CAST(100.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HizmetUcretleri] ([HizmetID], [HizmetAdi], [HizmetUcreti], [SilindiMi]) VALUES (7, N'Gogus Filmi Cekimi', CAST(400.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HizmetUcretleri] ([HizmetID], [HizmetAdi], [HizmetUcreti], [SilindiMi]) VALUES (8, N'EKG Cekimi', CAST(200.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HizmetUcretleri] ([HizmetID], [HizmetAdi], [HizmetUcreti], [SilindiMi]) VALUES (9, N'MR Ultrasyon Cekimi', CAST(500.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HizmetUcretleri] ([HizmetID], [HizmetAdi], [HizmetUcreti], [SilindiMi]) VALUES (10, N'Yogun Bakim Gunluk', CAST(1000.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[HizmetUcretleri] ([HizmetID], [HizmetAdi], [HizmetUcreti], [SilindiMi]) VALUES (11, N'Yatan Hasta Gunluk', CAST(600.00 AS Decimal(14, 2)), 0)
SET IDENTITY_INSERT [dbo].[HizmetUcretleri] OFF
GO
SET IDENTITY_INSERT [dbo].[IdariPersonel] ON 

INSERT [dbo].[IdariPersonel] ([IdariPersonelID], [PersonelID], [IdariPersonelAdi], [IdariPersonelSoyadi], [OdaID], [SilindiMi]) VALUES (1, 1, N'AYTAC', N'KARDAS', 34, 0)
INSERT [dbo].[IdariPersonel] ([IdariPersonelID], [PersonelID], [IdariPersonelAdi], [IdariPersonelSoyadi], [OdaID], [SilindiMi]) VALUES (2, 4, N'ZEHRA', N'BINICI', 35, 0)
INSERT [dbo].[IdariPersonel] ([IdariPersonelID], [PersonelID], [IdariPersonelAdi], [IdariPersonelSoyadi], [OdaID], [SilindiMi]) VALUES (3, 9, N'INANC', N'ESER', 36, 0)
SET IDENTITY_INSERT [dbo].[IdariPersonel] OFF
GO
SET IDENTITY_INSERT [dbo].[IdrarTahlilleri] ON 

INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (1, 26, 1, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (2, 26, 2, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (3, 26, 6, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (4, 26, 8, CAST(N'2020-07-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (5, 26, 19, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (6, 26, 11, CAST(N'2020-03-01' AS Date), CAST(N'04:30:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (7, 26, 12, CAST(N'2020-03-04' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (8, 26, 13, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (9, 26, 14, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (10, 26, 15, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (11, 26, 16, CAST(N'2020-03-01' AS Date), CAST(N'05:30:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (12, 26, 17, CAST(N'2020-03-01' AS Date), CAST(N'09:30:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (13, 26, 19, CAST(N'2020-05-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (14, 26, 21, CAST(N'2020-03-01' AS Date), CAST(N'03:00:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (15, 26, 25, CAST(N'2020-03-01' AS Date), CAST(N'03:00:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (16, 26, 26, CAST(N'2020-03-05' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (17, 26, 27, CAST(N'2020-05-01' AS Date), CAST(N'08:30:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (18, 26, 29, CAST(N'2020-03-01' AS Date), CAST(N'03:00:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (19, 26, 31, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (20, 26, 33, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[IdrarTahlilleri] ([IdrarTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (21, 26, 37, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
SET IDENTITY_INSERT [dbo].[IdrarTahlilleri] OFF
GO
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (1, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (1, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (1, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (1, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (1, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (2, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (2, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (2, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (2, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (2, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (3, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (3, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (3, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (3, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (3, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (4, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (4, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (4, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (4, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (4, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (5, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (5, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (5, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (5, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (5, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (6, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (6, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (6, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (6, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (6, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (7, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (7, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (7, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (7, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (7, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (8, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (8, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (8, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (8, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (8, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (9, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (9, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (9, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (9, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (9, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (10, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (10, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (10, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (10, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (10, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (11, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (11, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (11, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (11, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (11, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (12, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (12, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (12, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (12, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (12, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (13, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (13, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (13, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (13, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (13, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (14, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (14, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (14, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (14, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (14, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (15, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (15, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (15, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (15, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (15, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (16, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (16, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (16, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (16, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (16, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (17, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (17, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (17, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (17, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (17, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (18, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (18, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (18, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (18, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (18, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (19, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (19, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (19, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (19, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (19, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (20, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (20, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (20, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (20, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (20, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
GO
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (21, 1, N'sari', NULL, N'sari', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (21, 2, N'bulanik', NULL, N'berrak', CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (21, 3, N'1020', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (21, 4, N'0.5', NULL, NULL, CAST(N'2020-09-01' AS Date), 0)
INSERT [dbo].[IdrarTahlilSonuclari] ([IdrarTahlilID], [IdrarTestID], [Sonuc], [Birim], [Referansaraligi], [SonucTarihi], [SilindiMi]) VALUES (21, 5, N'negatif', N'mg/dl', N'negatif', CAST(N'2020-09-01' AS Date), 0)
GO
SET IDENTITY_INSERT [dbo].[IdrarTestleri] ON 

INSERT [dbo].[IdrarTestleri] ([IdrarTestID], [IdrarTestAdi]) VALUES (1, N'Renk')
INSERT [dbo].[IdrarTestleri] ([IdrarTestID], [IdrarTestAdi]) VALUES (2, N'Gorunum')
INSERT [dbo].[IdrarTestleri] ([IdrarTestID], [IdrarTestAdi]) VALUES (3, N'Dansite')
INSERT [dbo].[IdrarTestleri] ([IdrarTestID], [IdrarTestAdi]) VALUES (4, N'pH')
INSERT [dbo].[IdrarTestleri] ([IdrarTestID], [IdrarTestAdi]) VALUES (5, N'Potein')
INSERT [dbo].[IdrarTestleri] ([IdrarTestID], [IdrarTestAdi]) VALUES (6, N'Glukoz')
INSERT [dbo].[IdrarTestleri] ([IdrarTestID], [IdrarTestAdi]) VALUES (7, N'Keton')
INSERT [dbo].[IdrarTestleri] ([IdrarTestID], [IdrarTestAdi]) VALUES (8, N'Nitrit')
SET IDENTITY_INSERT [dbo].[IdrarTestleri] OFF
GO
SET IDENTITY_INSERT [dbo].[Il] ON 

INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (1, N'ADANA', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (2, N'ADIYAMAN', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (3, N'AFYON', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (4, N'AĞRI', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (5, N'AMASYA', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (6, N'ANKARA', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (7, N'ANTALYA', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (8, N'ARTVİN', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (9, N'AYDIN', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (10, N'BALIKESİR', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (11, N'BİLECİK', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (12, N'BİNGÖL', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (13, N'BİTLİS', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (14, N'BOLU', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (15, N'BURDUR', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (16, N'BURSA', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (17, N'ÇANAKKALE', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (18, N'ÇANKIRI', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (19, N'ÇORUM', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (20, N'DENİZLİ', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (21, N'DİYARBAKIR', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (22, N'EDİRNE', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (23, N'ELAZIĞ', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (24, N'ERZİNCAN', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (25, N'ERZURUM', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (26, N'ESKİŞEHİR', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (27, N'GAZİANTEP', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (28, N'GİRESUN', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (29, N'GÜMÜŞHANE', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (30, N'HAKKARİ', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (31, N'HATAY', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (32, N'ISPARTA', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (33, N'İÇEL', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (34, N'İSTANBUL', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (35, N'İZMİR', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (36, N'KARS', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (37, N'KASTAMONU', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (38, N'KAYSERİ', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (39, N'KIRKLARELİ', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (40, N'KIRŞEHİR', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (41, N'KOCAELİ', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (42, N'KONYA', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (43, N'KÜTAHYA', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (44, N'MALATYA', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (45, N'MANİSA', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (46, N'KAHRAMANMARAŞ', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (47, N'MARDİN', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (48, N'MUĞLA', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (49, N'MUŞ', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (50, N'NEVŞEHİR', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (51, N'NİĞDE', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (52, N'ORDU', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (53, N'RİZE', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (54, N'SAKARYA', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (55, N'SAMSUN', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (56, N'SİİRT', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (57, N'SİNOP', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (58, N'SİVAS', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (59, N'TEKİRDAĞ', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (60, N'TOKAT', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (61, N'TRABZON', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (62, N'TUNCELİ', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (63, N'ŞANLIURFA', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (64, N'UŞAK', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (65, N'VAN', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (66, N'YOZGAT', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (67, N'ZONGULDAK', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (68, N'AKSARAY', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (69, N'BAYBURT', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (70, N'KARAMAN', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (71, N'KIRIKKALE', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (72, N'BATMAN', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (73, N'ŞIRNAK', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (74, N'BARTIN', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (75, N'ARDAHAN', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (76, N'IĞDIR', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (77, N'YALOVA', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (78, N'KARABÜK', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (79, N'KİLİS', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (80, N'OSMANİYE', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (81, N'DÜZCE', 0)
INSERT [dbo].[Il] ([IlID], [IlAdi], [SilindiMi]) VALUES (82, N'YABANCI', 0)
SET IDENTITY_INSERT [dbo].[Il] OFF
GO
SET IDENTITY_INSERT [dbo].[Ilce] ON 

INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (1, N'Ilce_1', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (2, N'Ilce_2', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (3, N'Ilce_3', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (4, N'Ilce_4', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (5, N'Ilce_5', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (6, N'Ilce_6', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (7, N'Ilce_7', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (8, N'Ilce_8', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (9, N'Ilce_9', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (10, N'Ilce_10', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (11, N'Ilce_11', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (12, N'Ilce_12', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (13, N'Ilce_13', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (14, N'Ilce_14', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (15, N'Ilce_15', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (16, N'Ilce_16', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (17, N'Ilce_17', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (18, N'Ilce_18', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (19, N'Ilce_19', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (20, N'Ilce_20', 0)
INSERT [dbo].[Ilce] ([IlceID], [IlceAdi], [SilindiMi]) VALUES (21, N'YABANCI_ilce', 0)
SET IDENTITY_INSERT [dbo].[Ilce] OFF
GO
SET IDENTITY_INSERT [dbo].[KanGrubu] ON 

INSERT [dbo].[KanGrubu] ([KanGrubuID], [KanGrubu]) VALUES (1, N'0 Rh(-)')
INSERT [dbo].[KanGrubu] ([KanGrubuID], [KanGrubu]) VALUES (2, N'0 Rh(+)')
INSERT [dbo].[KanGrubu] ([KanGrubuID], [KanGrubu]) VALUES (3, N'A Rh(-)')
INSERT [dbo].[KanGrubu] ([KanGrubuID], [KanGrubu]) VALUES (4, N'A Rh(+)')
INSERT [dbo].[KanGrubu] ([KanGrubuID], [KanGrubu]) VALUES (5, N'B Rh(-)')
INSERT [dbo].[KanGrubu] ([KanGrubuID], [KanGrubu]) VALUES (6, N'B Rh(+)')
INSERT [dbo].[KanGrubu] ([KanGrubuID], [KanGrubu]) VALUES (7, N'AB Rh(-)')
INSERT [dbo].[KanGrubu] ([KanGrubuID], [KanGrubu]) VALUES (8, N'AB Rh(+)')
SET IDENTITY_INSERT [dbo].[KanGrubu] OFF
GO
SET IDENTITY_INSERT [dbo].[KanTahlilleri] ON 

INSERT [dbo].[KanTahlilleri] ([KanTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (1, 25, 3, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[KanTahlilleri] ([KanTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (2, 25, 4, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[KanTahlilleri] ([KanTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (3, 25, 5, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[KanTahlilleri] ([KanTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (4, 25, 8, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[KanTahlilleri] ([KanTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (5, 25, 11, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[KanTahlilleri] ([KanTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (6, 25, 12, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[KanTahlilleri] ([KanTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (7, 25, 15, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[KanTahlilleri] ([KanTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (8, 25, 16, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[KanTahlilleri] ([KanTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (9, 25, 18, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[KanTahlilleri] ([KanTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (10, 25, 21, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[KanTahlilleri] ([KanTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (11, 25, 22, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[KanTahlilleri] ([KanTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (12, 25, 23, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[KanTahlilleri] ([KanTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (13, 25, 24, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[KanTahlilleri] ([KanTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (14, 25, 25, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[KanTahlilleri] ([KanTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (15, 25, 26, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[KanTahlilleri] ([KanTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (16, 25, 27, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[KanTahlilleri] ([KanTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (17, 25, 29, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[KanTahlilleri] ([KanTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (18, 25, 35, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
INSERT [dbo].[KanTahlilleri] ([KanTahlilID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (19, 25, 36, CAST(N'2020-03-01' AS Date), CAST(N'03:30:00' AS Time), 0)
SET IDENTITY_INSERT [dbo].[KanTahlilleri] OFF
GO
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (1, 1, N'H216', N'ug/dL', N'33-193', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (1, 2, N'H33.6', N'mg/L', N'0-5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (1, 3, N'H10.8', N'10^3/uL', N'0.1-1.5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (1, 4, N'10.9', N'%', N'2-15', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (2, 1, N'H216', N'ug/dL', N'33-193', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (2, 2, N'H33.6', N'mg/L', N'0-5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (2, 3, N'H10.8', N'10^3/uL', N'0.1-1.5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (2, 4, N'10.9', N'%', N'2-15', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (3, 1, N'H216', N'ug/dL', N'33-193', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (3, 2, N'H33.6', N'mg/L', N'0-5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (3, 3, N'H10.8', N'10^3/uL', N'0.1-1.5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (3, 4, N'10.9', N'%', N'2-15', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (4, 1, N'H216', N'ug/dL', N'33-193', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (4, 2, N'H33.6', N'mg/L', N'0-5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (4, 3, N'H10.8', N'10^3/uL', N'0.1-1.5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (4, 4, N'10.9', N'%', N'2-15', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (5, 1, N'H216', N'ug/dL', N'33-193', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (5, 2, N'H33.6', N'mg/L', N'0-5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (5, 3, N'H10.8', N'10^3/uL', N'0.1-1.5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (5, 4, N'10.9', N'%', N'2-15', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (6, 1, N'H216', N'ug/dL', N'33-193', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (6, 2, N'H33.6', N'mg/L', N'0-5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (6, 3, N'H10.8', N'10^3/uL', N'0.1-1.5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (6, 4, N'10.9', N'%', N'2-15', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (7, 1, N'H216', N'ug/dL', N'33-193', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (7, 2, N'H33.6', N'mg/L', N'0-5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (7, 3, N'H10.8', N'10^3/uL', N'0.1-1.5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (7, 4, N'10.9', N'%', N'2-15', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (8, 1, N'H216', N'ug/dL', N'33-193', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (8, 2, N'H33.6', N'mg/L', N'0-5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (8, 3, N'H10.8', N'10^3/uL', N'0.1-1.5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (8, 4, N'10.9', N'%', N'2-15', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (9, 1, N'H216', N'ug/dL', N'33-193', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (9, 2, N'H33.6', N'mg/L', N'0-5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (9, 3, N'H10.8', N'10^3/uL', N'0.1-1.5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (9, 4, N'10.9', N'%', N'2-15', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (10, 1, N'H216', N'ug/dL', N'33-193', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (10, 2, N'H33.6', N'mg/L', N'0-5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (10, 3, N'H10.8', N'10^3/uL', N'0.1-1.5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (10, 4, N'10.9', N'%', N'2-15', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (11, 1, N'H216', N'ug/dL', N'33-193', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (11, 2, N'H33.6', N'mg/L', N'0-5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (11, 3, N'H10.8', N'10^3/uL', N'0.1-1.5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (11, 4, N'10.9', N'%', N'2-15', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (12, 1, N'H216', N'ug/dL', N'33-193', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (12, 2, N'H33.6', N'mg/L', N'0-5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (12, 3, N'H10.8', N'10^3/uL', N'0.1-1.5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (12, 4, N'10.9', N'%', N'2-15', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (13, 1, N'H216', N'ug/dL', N'33-193', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (13, 2, N'H33.6', N'mg/L', N'0-5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (13, 3, N'H10.8', N'10^3/uL', N'0.1-1.5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (13, 4, N'10.9', N'%', N'2-15', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (14, 1, N'H216', N'ug/dL', N'33-193', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (14, 2, N'H33.6', N'mg/L', N'0-5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (14, 3, N'H10.8', N'10^3/uL', N'0.1-1.5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (14, 4, N'10.9', N'%', N'2-15', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (15, 1, N'H216', N'ug/dL', N'33-193', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (15, 2, N'H33.6', N'mg/L', N'0-5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (15, 3, N'H10.8', N'10^3/uL', N'0.1-1.5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (15, 4, N'10.9', N'%', N'2-15', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (16, 1, N'H216', N'ug/dL', N'33-193', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (16, 2, N'H33.6', N'mg/L', N'0-5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (16, 3, N'H10.8', N'10^3/uL', N'0.1-1.5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (16, 4, N'10.9', N'%', N'2-15', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (17, 1, N'H216', N'ug/dL', N'33-193', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (17, 2, N'H33.6', N'mg/L', N'0-5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (17, 3, N'H10.8', N'10^3/uL', N'0.1-1.5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (17, 4, N'10.9', N'%', N'2-15', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (18, 1, N'H216', N'ug/dL', N'33-193', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (18, 2, N'H33.6', N'mg/L', N'0-5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (18, 3, N'H10.8', N'10^3/uL', N'0.1-1.5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (18, 4, N'10.9', N'%', N'2-15', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (19, 1, N'H216', N'ug/dL', N'33-193', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (19, 2, N'H33.6', N'mg/L', N'0-5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (19, 3, N'H10.8', N'10^3/uL', N'0.1-1.5', CAST(N'2020-10-01' AS Date), 0)
INSERT [dbo].[KanTahlilSonuclari] ([KanTahlilID], [KanTestiID], [Sonuc], [Birim], [Referansaraligi], [SonucTarigi], [SilindiMi]) VALUES (19, 4, N'10.9', N'%', N'2-15', CAST(N'2020-10-01' AS Date), 0)
GO
SET IDENTITY_INSERT [dbo].[KanTahlilTestleri] ON 

INSERT [dbo].[KanTahlilTestleri] ([KanTestiID], [TestAdi]) VALUES (1, N'Demir')
INSERT [dbo].[KanTahlilTestleri] ([KanTestiID], [TestAdi]) VALUES (2, N'CRP')
INSERT [dbo].[KanTahlilTestleri] ([KanTestiID], [TestAdi]) VALUES (3, N'OrtaBoyutluHucrler')
INSERT [dbo].[KanTahlilTestleri] ([KanTestiID], [TestAdi]) VALUES (4, N'OrtaBoyutluHucrelerOrani')
SET IDENTITY_INSERT [dbo].[KanTahlilTestleri] OFF
GO
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (1, N'Dr001', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (2, N'Dr002', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (3, N'Dr003', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (4, N'Dr004', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (5, N'Dr005', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (6, N'Dr006', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (7, N'Dr007', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (8, N'Dr008', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (9, N'Dr009', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (10, N'Dr010', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (11, N'Dr011', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (12, N'Dr012', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (13, N'Dr013', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (14, N'Dr014', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (15, N'Dr015', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (16, N'Dr016', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (17, N'Dr017', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (18, N'Dr018', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (19, N'Dr019', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (20, N'Dr020', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (21, N'Dr021', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (22, N'Dr022', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (23, N'Dr023', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (24, N'Dr024', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (25, N'H001', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (26, N'H002', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (27, N'H003', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (28, N'H004', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (29, N'H005', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (30, N'H006', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (31, N'H007', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (32, N'H008', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (33, N'H009', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (34, N'H010', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (35, N'H011', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (36, N'H012', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (37, N'H013', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (38, N'H014', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (39, N'H015', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (40, N'HB001', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (41, N'HB002', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (42, N'HB003', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (43, N'HB004', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (44, N'TS001', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (45, N'TS002', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (46, N'TS003', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (47, N'TS004', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (48, N'TS005', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (49, N'D001', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (50, N'D002', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (51, N'D003', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (52, N'G001', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (53, N'G002', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (54, N'G003', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (55, N'Hi001', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (56, N'Hi002', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (57, N'Hi003', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (58, N'Hi004', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (59, N'Hi005', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (60, N'Hi006', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (61, N'L001', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (62, N'L002', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (63, N'L003', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (64, N'L004', N'12345', 0)
INSERT [dbo].[Kullanıcılar] ([PersonelID], [KullaniciKodu], [Sifre], [SilindiMi]) VALUES (65, N'L005', N'12345', 0)
GO
SET IDENTITY_INSERT [dbo].[MaasOdemeleri] ON 

INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (1, 1, CAST(N'2022-02-17' AS Date), CAST(514.00 AS Decimal(14, 2)), CAST(14313.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (2, 2, CAST(N'2021-06-21' AS Date), CAST(775.00 AS Decimal(14, 2)), CAST(13531.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (3, 3, CAST(N'2021-04-04' AS Date), CAST(690.00 AS Decimal(14, 2)), CAST(9581.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (4, 4, CAST(N'2021-03-15' AS Date), CAST(749.00 AS Decimal(14, 2)), CAST(7284.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (5, 5, CAST(N'2021-04-07' AS Date), CAST(636.00 AS Decimal(14, 2)), CAST(7804.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (6, 6, CAST(N'2021-10-28' AS Date), CAST(773.00 AS Decimal(14, 2)), CAST(10551.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (7, 7, CAST(N'2021-09-25' AS Date), CAST(481.00 AS Decimal(14, 2)), CAST(8822.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (8, 8, CAST(N'2021-12-30' AS Date), CAST(791.00 AS Decimal(14, 2)), CAST(12385.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (9, 9, CAST(N'2022-01-02' AS Date), CAST(493.00 AS Decimal(14, 2)), CAST(9190.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (10, 10, CAST(N'2021-07-15' AS Date), CAST(532.00 AS Decimal(14, 2)), CAST(11485.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (11, 11, CAST(N'2021-06-21' AS Date), CAST(544.00 AS Decimal(14, 2)), CAST(11074.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (12, 12, CAST(N'2021-03-15' AS Date), CAST(413.00 AS Decimal(14, 2)), CAST(9765.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (13, 13, CAST(N'2021-10-12' AS Date), CAST(708.00 AS Decimal(14, 2)), CAST(13543.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (14, 14, CAST(N'2021-05-13' AS Date), CAST(709.00 AS Decimal(14, 2)), CAST(10456.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (15, 15, CAST(N'2021-04-03' AS Date), CAST(620.00 AS Decimal(14, 2)), CAST(8157.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (16, 16, CAST(N'2021-04-25' AS Date), CAST(485.00 AS Decimal(14, 2)), CAST(10797.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (17, 17, CAST(N'2021-12-03' AS Date), CAST(617.00 AS Decimal(14, 2)), CAST(9114.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (18, 18, CAST(N'2021-05-01' AS Date), CAST(443.00 AS Decimal(14, 2)), CAST(9145.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (19, 19, CAST(N'2021-10-15' AS Date), CAST(747.00 AS Decimal(14, 2)), CAST(6428.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (20, 20, CAST(N'2021-03-31' AS Date), CAST(584.00 AS Decimal(14, 2)), CAST(14250.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (21, 21, CAST(N'2021-03-29' AS Date), CAST(417.00 AS Decimal(14, 2)), CAST(8208.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (22, 22, CAST(N'2021-09-24' AS Date), CAST(586.00 AS Decimal(14, 2)), CAST(5189.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (23, 23, CAST(N'2022-01-11' AS Date), CAST(492.00 AS Decimal(14, 2)), CAST(12526.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (24, 24, CAST(N'2022-01-04' AS Date), CAST(744.00 AS Decimal(14, 2)), CAST(9946.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (25, 25, CAST(N'2022-01-18' AS Date), CAST(441.00 AS Decimal(14, 2)), CAST(7312.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (26, 26, CAST(N'2022-01-25' AS Date), CAST(780.00 AS Decimal(14, 2)), CAST(8693.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (27, 27, CAST(N'2021-09-10' AS Date), CAST(726.00 AS Decimal(14, 2)), CAST(11274.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (28, 28, CAST(N'2022-02-23' AS Date), CAST(683.00 AS Decimal(14, 2)), CAST(10672.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (29, 29, CAST(N'2021-03-24' AS Date), CAST(495.00 AS Decimal(14, 2)), CAST(11407.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (30, 30, CAST(N'2021-12-02' AS Date), CAST(510.00 AS Decimal(14, 2)), CAST(5105.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (31, 31, CAST(N'2021-11-13' AS Date), CAST(418.00 AS Decimal(14, 2)), CAST(9698.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (32, 32, CAST(N'2022-01-08' AS Date), CAST(750.00 AS Decimal(14, 2)), CAST(9616.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (33, 33, CAST(N'2022-02-16' AS Date), CAST(637.00 AS Decimal(14, 2)), CAST(8865.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (34, 34, CAST(N'2021-08-04' AS Date), CAST(475.00 AS Decimal(14, 2)), CAST(13394.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (35, 35, CAST(N'2021-11-07' AS Date), CAST(514.00 AS Decimal(14, 2)), CAST(12715.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (36, 36, CAST(N'2021-08-14' AS Date), CAST(618.00 AS Decimal(14, 2)), CAST(8040.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (37, 37, CAST(N'2021-09-10' AS Date), CAST(440.00 AS Decimal(14, 2)), CAST(11120.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (38, 38, CAST(N'2021-11-15' AS Date), CAST(444.00 AS Decimal(14, 2)), CAST(9782.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (39, 39, CAST(N'2022-01-15' AS Date), CAST(612.00 AS Decimal(14, 2)), CAST(10513.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (40, 40, CAST(N'2021-11-14' AS Date), CAST(784.00 AS Decimal(14, 2)), CAST(6122.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (41, 41, CAST(N'2021-10-02' AS Date), CAST(664.00 AS Decimal(14, 2)), CAST(7339.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (42, 42, CAST(N'2021-09-01' AS Date), CAST(674.00 AS Decimal(14, 2)), CAST(9579.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (43, 43, CAST(N'2021-06-21' AS Date), CAST(519.00 AS Decimal(14, 2)), CAST(12475.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (44, 44, CAST(N'2021-09-23' AS Date), CAST(482.00 AS Decimal(14, 2)), CAST(7894.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (45, 45, CAST(N'2021-02-24' AS Date), CAST(620.00 AS Decimal(14, 2)), CAST(13881.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (46, 46, CAST(N'2021-07-18' AS Date), CAST(505.00 AS Decimal(14, 2)), CAST(13883.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (47, 47, CAST(N'2021-02-27' AS Date), CAST(641.00 AS Decimal(14, 2)), CAST(12107.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (48, 48, CAST(N'2021-06-21' AS Date), CAST(779.00 AS Decimal(14, 2)), CAST(9685.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (49, 49, CAST(N'2021-04-10' AS Date), CAST(731.00 AS Decimal(14, 2)), CAST(6035.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (50, 50, CAST(N'2021-05-29' AS Date), CAST(761.00 AS Decimal(14, 2)), CAST(8401.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (51, 51, CAST(N'2021-08-31' AS Date), CAST(482.00 AS Decimal(14, 2)), CAST(5018.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (52, 52, CAST(N'2021-06-26' AS Date), CAST(475.00 AS Decimal(14, 2)), CAST(14373.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (53, 53, CAST(N'2021-10-22' AS Date), CAST(771.00 AS Decimal(14, 2)), CAST(13209.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (54, 54, CAST(N'2021-07-31' AS Date), CAST(562.00 AS Decimal(14, 2)), CAST(11200.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (55, 55, CAST(N'2021-11-18' AS Date), CAST(748.00 AS Decimal(14, 2)), CAST(5177.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (56, 56, CAST(N'2021-10-21' AS Date), CAST(695.00 AS Decimal(14, 2)), CAST(11946.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (57, 57, CAST(N'2021-03-12' AS Date), CAST(575.00 AS Decimal(14, 2)), CAST(13161.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (58, 58, CAST(N'2021-07-06' AS Date), CAST(678.00 AS Decimal(14, 2)), CAST(14995.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (59, 59, CAST(N'2021-12-20' AS Date), CAST(447.00 AS Decimal(14, 2)), CAST(8937.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (60, 60, CAST(N'2021-05-31' AS Date), CAST(519.00 AS Decimal(14, 2)), CAST(7109.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (61, 61, CAST(N'2021-07-20' AS Date), CAST(538.00 AS Decimal(14, 2)), CAST(9044.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (62, 62, CAST(N'2022-02-15' AS Date), CAST(499.00 AS Decimal(14, 2)), CAST(9823.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (63, 63, CAST(N'2021-11-19' AS Date), CAST(562.00 AS Decimal(14, 2)), CAST(8599.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (64, 64, CAST(N'2021-12-09' AS Date), CAST(484.00 AS Decimal(14, 2)), CAST(13314.00 AS Decimal(14, 2)), 0)
INSERT [dbo].[MaasOdemeleri] ([MaasOdemeID], [PersonelID], [OdenenTarih], [KesintilerToplam], [Maas], [SilindiMi]) VALUES (65, 65, CAST(N'2021-09-27' AS Date), CAST(744.00 AS Decimal(14, 2)), CAST(6594.00 AS Decimal(14, 2)), 0)
SET IDENTITY_INSERT [dbo].[MaasOdemeleri] OFF
GO
SET IDENTITY_INSERT [dbo].[MRUltrasonCekimileri] ON 

INSERT [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (1, 22, 1, CAST(N'2020-11-10' AS Date), CAST(N'10:00:00' AS Time), 0)
INSERT [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (2, 22, 5, CAST(N'2020-11-10' AS Date), CAST(N'10:00:00' AS Time), 0)
INSERT [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (3, 22, 6, CAST(N'2020-11-10' AS Date), CAST(N'10:00:00' AS Time), 0)
INSERT [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (4, 22, 8, CAST(N'2020-11-10' AS Date), CAST(N'10:00:00' AS Time), 0)
INSERT [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (5, 22, 10, CAST(N'2020-11-10' AS Date), CAST(N'10:00:00' AS Time), 0)
INSERT [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (6, 22, 11, CAST(N'2020-11-10' AS Date), CAST(N'10:00:00' AS Time), 0)
INSERT [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (7, 22, 14, CAST(N'2020-11-10' AS Date), CAST(N'10:00:00' AS Time), 0)
INSERT [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (8, 22, 15, CAST(N'2020-11-10' AS Date), CAST(N'10:00:00' AS Time), 0)
INSERT [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (9, 22, 19, CAST(N'2020-11-10' AS Date), CAST(N'10:00:00' AS Time), 0)
INSERT [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (10, 22, 21, CAST(N'2020-11-10' AS Date), CAST(N'10:00:00' AS Time), 0)
INSERT [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (11, 22, 24, CAST(N'2020-11-10' AS Date), CAST(N'10:00:00' AS Time), 0)
INSERT [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (12, 22, 25, CAST(N'2020-11-10' AS Date), CAST(N'10:00:00' AS Time), 0)
INSERT [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (13, 22, 27, CAST(N'2020-11-10' AS Date), CAST(N'10:00:00' AS Time), 0)
INSERT [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (14, 22, 30, CAST(N'2020-11-10' AS Date), CAST(N'10:00:00' AS Time), 0)
INSERT [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (15, 22, 32, CAST(N'2020-11-10' AS Date), CAST(N'10:00:00' AS Time), 0)
INSERT [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (16, 22, 33, CAST(N'2020-11-10' AS Date), CAST(N'10:00:00' AS Time), 0)
INSERT [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (17, 22, 35, CAST(N'2020-11-10' AS Date), CAST(N'10:00:00' AS Time), 0)
INSERT [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (18, 22, 37, CAST(N'2020-11-10' AS Date), CAST(N'10:00:00' AS Time), 0)
INSERT [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID], [GeriHizmetPersonelID], [MuayeneID], [Tarih], [Saat], [SilindiMi]) VALUES (19, 22, 38, CAST(N'2020-11-10' AS Date), CAST(N'10:00:00' AS Time), 0)
SET IDENTITY_INSERT [dbo].[MRUltrasonCekimileri] OFF
GO
INSERT [dbo].[MRUltrasonCekimiSonuclari] ([MRUltrasonCekimiID], [Aciklama], [MRUltrasonResmi], [SonucTarigi], [SilindiMi]) VALUES (1, N'aciklam MR', N'https://www.safirgoruntuleme.com/wp-content/uploads/2020/05/Fetal-MR.png', CAST(N'2020-11-15' AS Date), 0)
INSERT [dbo].[MRUltrasonCekimiSonuclari] ([MRUltrasonCekimiID], [Aciklama], [MRUltrasonResmi], [SonucTarigi], [SilindiMi]) VALUES (2, N'aciklam MR', N'https://www.safirgoruntuleme.com/wp-content/uploads/2020/05/Fetal-MR.png', CAST(N'2020-11-15' AS Date), 0)
INSERT [dbo].[MRUltrasonCekimiSonuclari] ([MRUltrasonCekimiID], [Aciklama], [MRUltrasonResmi], [SonucTarigi], [SilindiMi]) VALUES (3, N'aciklam MR', N'https://www.safirgoruntuleme.com/wp-content/uploads/2020/05/Fetal-MR.png', CAST(N'2020-11-15' AS Date), 0)
INSERT [dbo].[MRUltrasonCekimiSonuclari] ([MRUltrasonCekimiID], [Aciklama], [MRUltrasonResmi], [SonucTarigi], [SilindiMi]) VALUES (4, N'aciklam MR', N'https://www.safirgoruntuleme.com/wp-content/uploads/2020/05/Fetal-MR.png', CAST(N'2020-11-15' AS Date), 0)
INSERT [dbo].[MRUltrasonCekimiSonuclari] ([MRUltrasonCekimiID], [Aciklama], [MRUltrasonResmi], [SonucTarigi], [SilindiMi]) VALUES (5, N'aciklam MR', N'https://www.safirgoruntuleme.com/wp-content/uploads/2020/05/Fetal-MR.png', CAST(N'2020-11-15' AS Date), 0)
INSERT [dbo].[MRUltrasonCekimiSonuclari] ([MRUltrasonCekimiID], [Aciklama], [MRUltrasonResmi], [SonucTarigi], [SilindiMi]) VALUES (6, N'aciklam MR', N'https://www.safirgoruntuleme.com/wp-content/uploads/2020/05/Fetal-MR.png', CAST(N'2020-11-15' AS Date), 0)
INSERT [dbo].[MRUltrasonCekimiSonuclari] ([MRUltrasonCekimiID], [Aciklama], [MRUltrasonResmi], [SonucTarigi], [SilindiMi]) VALUES (7, N'aciklam MR', N'https://www.safirgoruntuleme.com/wp-content/uploads/2020/05/Fetal-MR.png', CAST(N'2020-11-15' AS Date), 0)
INSERT [dbo].[MRUltrasonCekimiSonuclari] ([MRUltrasonCekimiID], [Aciklama], [MRUltrasonResmi], [SonucTarigi], [SilindiMi]) VALUES (8, N'aciklam MR', N'https://www.safirgoruntuleme.com/wp-content/uploads/2020/05/Fetal-MR.png', CAST(N'2020-11-15' AS Date), 0)
INSERT [dbo].[MRUltrasonCekimiSonuclari] ([MRUltrasonCekimiID], [Aciklama], [MRUltrasonResmi], [SonucTarigi], [SilindiMi]) VALUES (9, N'aciklam MR', N'https://www.safirgoruntuleme.com/wp-content/uploads/2020/05/Fetal-MR.png', CAST(N'2020-11-15' AS Date), 0)
INSERT [dbo].[MRUltrasonCekimiSonuclari] ([MRUltrasonCekimiID], [Aciklama], [MRUltrasonResmi], [SonucTarigi], [SilindiMi]) VALUES (10, N'aciklam MR', N'https://www.safirgoruntuleme.com/wp-content/uploads/2020/05/Fetal-MR.png', CAST(N'2020-11-15' AS Date), 0)
INSERT [dbo].[MRUltrasonCekimiSonuclari] ([MRUltrasonCekimiID], [Aciklama], [MRUltrasonResmi], [SonucTarigi], [SilindiMi]) VALUES (11, N'aciklam MR', N'https://www.safirgoruntuleme.com/wp-content/uploads/2020/05/Fetal-MR.png', CAST(N'2020-11-15' AS Date), 0)
INSERT [dbo].[MRUltrasonCekimiSonuclari] ([MRUltrasonCekimiID], [Aciklama], [MRUltrasonResmi], [SonucTarigi], [SilindiMi]) VALUES (12, N'aciklam MR', N'https://www.safirgoruntuleme.com/wp-content/uploads/2020/05/Fetal-MR.png', CAST(N'2020-11-15' AS Date), 0)
INSERT [dbo].[MRUltrasonCekimiSonuclari] ([MRUltrasonCekimiID], [Aciklama], [MRUltrasonResmi], [SonucTarigi], [SilindiMi]) VALUES (13, N'aciklam MR', N'https://www.safirgoruntuleme.com/wp-content/uploads/2020/05/Fetal-MR.png', CAST(N'2020-11-15' AS Date), 0)
INSERT [dbo].[MRUltrasonCekimiSonuclari] ([MRUltrasonCekimiID], [Aciklama], [MRUltrasonResmi], [SonucTarigi], [SilindiMi]) VALUES (14, N'aciklam MR', N'https://www.safirgoruntuleme.com/wp-content/uploads/2020/05/Fetal-MR.png', CAST(N'2020-11-15' AS Date), 0)
INSERT [dbo].[MRUltrasonCekimiSonuclari] ([MRUltrasonCekimiID], [Aciklama], [MRUltrasonResmi], [SonucTarigi], [SilindiMi]) VALUES (15, N'aciklam MR', N'https://www.safirgoruntuleme.com/wp-content/uploads/2020/05/Fetal-MR.png', CAST(N'2020-11-15' AS Date), 0)
INSERT [dbo].[MRUltrasonCekimiSonuclari] ([MRUltrasonCekimiID], [Aciklama], [MRUltrasonResmi], [SonucTarigi], [SilindiMi]) VALUES (16, N'aciklam MR', N'https://www.safirgoruntuleme.com/wp-content/uploads/2020/05/Fetal-MR.png', CAST(N'2020-11-15' AS Date), 0)
INSERT [dbo].[MRUltrasonCekimiSonuclari] ([MRUltrasonCekimiID], [Aciklama], [MRUltrasonResmi], [SonucTarigi], [SilindiMi]) VALUES (17, N'aciklam MR', N'https://www.safirgoruntuleme.com/wp-content/uploads/2020/05/Fetal-MR.png', CAST(N'2020-11-15' AS Date), 0)
INSERT [dbo].[MRUltrasonCekimiSonuclari] ([MRUltrasonCekimiID], [Aciklama], [MRUltrasonResmi], [SonucTarigi], [SilindiMi]) VALUES (18, N'aciklam MR', N'https://www.safirgoruntuleme.com/wp-content/uploads/2020/05/Fetal-MR.png', CAST(N'2020-11-15' AS Date), 0)
INSERT [dbo].[MRUltrasonCekimiSonuclari] ([MRUltrasonCekimiID], [Aciklama], [MRUltrasonResmi], [SonucTarigi], [SilindiMi]) VALUES (19, N'aciklam MR', N'https://www.safirgoruntuleme.com/wp-content/uploads/2020/05/Fetal-MR.png', CAST(N'2020-11-15' AS Date), 0)
GO
SET IDENTITY_INSERT [dbo].[Muayeneler] ON 

INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (1, 1, CAST(N'13:30:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (2, 2, CAST(N'13:43:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (3, 3, CAST(N'11:36:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (4, 4, CAST(N'10:26:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (5, 5, CAST(N'13:41:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (6, 6, CAST(N'14:32:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (7, 7, CAST(N'16:28:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (8, 8, CAST(N'13:39:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (9, 9, CAST(N'11:42:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (10, 10, CAST(N'09:12:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (11, 11, CAST(N'12:55:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (12, 12, CAST(N'14:24:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (13, 13, CAST(N'09:47:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (14, 14, CAST(N'09:16:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (15, 15, CAST(N'14:33:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (16, 16, CAST(N'09:09:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (17, 17, CAST(N'12:46:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (18, 18, CAST(N'15:19:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (19, 19, CAST(N'09:57:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (20, 20, CAST(N'11:26:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (21, 21, CAST(N'13:12:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (22, 22, CAST(N'10:33:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (23, 23, CAST(N'14:52:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (24, 24, CAST(N'14:56:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (25, 25, CAST(N'15:27:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (26, 26, CAST(N'16:05:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (27, 27, CAST(N'12:41:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (28, 28, CAST(N'10:11:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (29, 29, CAST(N'09:04:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (30, 30, CAST(N'10:53:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (31, 31, CAST(N'10:53:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (32, 32, CAST(N'15:39:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (33, 33, CAST(N'10:10:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (34, 34, CAST(N'11:27:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (35, 35, CAST(N'09:17:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (36, 36, CAST(N'14:44:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (37, 37, CAST(N'15:07:00' AS Time), 0)
INSERT [dbo].[Muayeneler] ([MuayeneID], [HastaKabulID], [Saat], [SilindiMi]) VALUES (38, 38, CAST(N'16:11:00' AS Time), 0)
SET IDENTITY_INSERT [dbo].[Muayeneler] OFF
GO
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (1, N'Böbrek Yetmezliği', 1, 0, 0, 1, 1, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (2, N'İdrar Yolu Enfeksiyonu', 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (3, N'Covid 19', 0, 1, 1, 1, 0, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (4, N'Gribal Enfeksiyon', 0, 1, 1, 1, 0, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (5, N'Solunum Yolu Enfeksiyonu', 0, 1, 0, 0, 1, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (6, N'Meme Kanser', 1, 0, 1, 0, 1, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (7, N'Prostat', 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (8, N'Apandist Ameliyat', 1, 1, 1, 0, 1, 1, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (9, N'Bacak Kırığı Alçı', 1, 0, 1, 0, 0, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (10, N'Gribal Enfeksiyon', 0, 0, 1, 1, 1, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (11, N'Prostat', 1, 1, 0, 1, 1, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (12, N'Kas Yırtığı İlaç Tedavisi', 1, 1, 0, 1, 0, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (13, N'Egzama Başlangıcı İlaç Tedavisi', 1, 0, 0, 1, 0, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (14, N'Pankreas Kanseri', 1, 0, 1, 0, 1, 1, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (15, N'Akciğer Kanseri', 1, 1, 1, 1, 1, 1, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (16, N'Sinüzit Başlangıcı İlaç Tedavisi', 1, 1, 1, 1, 0, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (17, N'Kulak Temizleme', 1, 0, 0, 1, 0, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (18, N'Göz Numarası Büyütüldü', 0, 1, 1, 0, 0, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (19, N'Beyin Tümör', 1, 0, 0, 0, 1, 1, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (20, N'Mantar Tedavisi', 0, 0, 1, 0, 0, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (21, N'Covid 19', 1, 1, 0, 0, 1, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (22, N'Covid 19', 0, 1, 0, 1, 0, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (23, N'İdrar Yolu Enfeksiyonu', 0, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (24, N'İdrar Yolu Enfeksiyonu', 0, 1, 1, 0, 1, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (25, N'Kas Yırtığı İlaç Tedavisi', 1, 1, 1, 0, 1, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (26, N'Covid 19', 1, 1, 1, 0, 0, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (27, N'Kulak Temizleme', 1, 1, 1, 1, 1, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (28, N'Solunum Yolu Enfeksiyonu', 0, 0, 1, 0, 0, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (29, N'Kulak Temizleme', 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (30, N'Kulak Temizleme', 0, 0, 0, 1, 1, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (31, N'Covid 19', 1, 0, 0, 1, 0, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (32, N'Prostat', 0, 0, 0, 1, 1, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (33, N'Prostat', 1, 0, 0, 1, 1, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (34, N'Solunum Yolu Enfeksiyonu', 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (35, N'Apandist Ameliyat', 0, 1, 1, 1, 1, 1, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (36, N'İdrar Yolu Enfeksiyonu', 0, 1, 1, 0, 0, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (37, N'Solunum Yolu Enfeksiyonu', 1, 0, 0, 0, 1, 0, 0)
INSERT [dbo].[MuayeneSonuc] ([MuayeneID], [Aciklama], [IdararTahlil], [KanTahlil], [EKGCekimi], [GogusFilmi], [MRUltrasonCekimi], [Ameliyat], [SilindiMi]) VALUES (38, N'Psikolojik Rahatsızlık', 0, 0, 1, 0, 1, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Odalar] ON 

INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (1, N'A1', 1, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (2, N'A2', 1, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (3, N'A3', 1, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (4, N'A4', 1, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (5, N'M101', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (6, N'M102', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (7, N'M103', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (8, N'M104', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (9, N'M105', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (10, N'M106', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (11, N'M107', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (12, N'M108', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (13, N'M201', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (14, N'M202', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (15, N'M203', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (16, N'M204', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (17, N'M205', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (18, N'M206', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (19, N'M207', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (20, N'M208', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (21, N'M301', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (22, N'M302', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (23, N'M303', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (24, N'M304', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (25, N'M305', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (26, N'M306', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (27, N'M307', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (28, N'M308', 2, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (29, N'YB1', 3, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (30, N'YB2', 3, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (31, N'YB3', 3, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (32, N'YB4', 3, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (33, N'YB5', 3, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (34, N'IP501', 4, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (35, N'IP502', 4, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (36, N'IP503', 4, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (37, N'YH401', 5, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (38, N'YH402', 5, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (39, N'YH403', 5, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (40, N'YH404', 5, 0)
INSERT [dbo].[Odalar] ([OdaID], [OdaAdi], [OdaTuruID], [silindiMi]) VALUES (41, N'YH405', 5, 0)
SET IDENTITY_INSERT [dbo].[Odalar] OFF
GO
SET IDENTITY_INSERT [dbo].[OdaTurleri] ON 

INSERT [dbo].[OdaTurleri] ([OdaTuruID], [TurAdi], [SilindiMi]) VALUES (1, N'Ameliyathane', 0)
INSERT [dbo].[OdaTurleri] ([OdaTuruID], [TurAdi], [SilindiMi]) VALUES (2, N'Muayenehane', 0)
INSERT [dbo].[OdaTurleri] ([OdaTuruID], [TurAdi], [SilindiMi]) VALUES (3, N'Yogun Bakim', 0)
INSERT [dbo].[OdaTurleri] ([OdaTuruID], [TurAdi], [SilindiMi]) VALUES (4, N'Idari Personel', 0)
INSERT [dbo].[OdaTurleri] ([OdaTuruID], [TurAdi], [SilindiMi]) VALUES (5, N'Yatan Hasta Odasi', 0)
SET IDENTITY_INSERT [dbo].[OdaTurleri] OFF
GO
SET IDENTITY_INSERT [dbo].[OdemeTuru] ON 

INSERT [dbo].[OdemeTuru] ([OdemeTuruID], [OdemeTuru]) VALUES (1, N'Nakit')
INSERT [dbo].[OdemeTuru] ([OdemeTuruID], [OdemeTuru]) VALUES (2, N'Kredi Karti')
INSERT [dbo].[OdemeTuru] ([OdemeTuruID], [OdemeTuru]) VALUES (3, N'Havale')
SET IDENTITY_INSERT [dbo].[OdemeTuru] OFF
GO
SET IDENTITY_INSERT [dbo].[Personel] ON 

INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (1, 1, N'111111111', N'b@shifthospital.com', N'Mah 2 cad 2 sok 2', 4, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (2, 1, N'111111112', N'c@shifthospital.com', N'Mah 3 cad 2 sok 2', 2, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (3, 1, N'111111113', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (4, 1, N'111111114', N'e@shifthospital.com', N'Mah 5 cad 2 sok 2', 10, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (5, 1, N'111111115', N'f@shifthospital.com', N'Mah 6 cad 2 sok 2', 7, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (6, 1, N'111111115', N'f@shifthospital.com', N'Mah 6 cad 2 sok 2', 7, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (7, 2, N'111111116', N'g@shifthospital.com', N'Mah 7 cad 2 sok 2', 7, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (8, 2, N'111111117', N'h@shifthospital.com', N'Mah 8 cad 2 sok 2', 7, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (9, 2, N'111111118', N'j@shifthospital.com', N'Mah 9 cad 2 sok 2', 7, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (10, 2, N'111111119', N'k@shifthospital.com', N'Mah 10 cad 2 sok 2', 7, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (11, 2, N'111111110', N'l@shifthospital.com', N'Mah 11 cad 2 sok 2', 7, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (12, 2, N'111111215', N'i@shifthospital.com', N'Mah 12 cad 2 sok 2', 7, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (13, 3, N'111111111', N'b@shifthospital.com', N'Mah 2 cad 2 sok 2', 4, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (14, 3, N'111111112', N'c@shifthospital.com', N'Mah 3 cad 2 sok 2', 2, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (15, 3, N'111111113', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (16, 3, N'111111114', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (17, 3, N'111111115', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (18, 3, N'111111116', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (19, 3, N'111111117', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (20, 3, N'111111118', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (21, 3, N'111111119', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (22, 3, N'111111110', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (23, 3, N'111111111', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (24, 3, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (25, 4, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (26, 4, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (27, 4, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (28, 5, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (29, 5, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (30, 5, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (31, 5, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (32, 5, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (33, 5, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (34, 5, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (35, 5, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (36, 5, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (37, 5, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (38, 5, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (39, 5, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (40, 6, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (41, 6, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (42, 6, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (43, 6, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (44, 7, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (45, 7, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (46, 7, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (47, 7, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (48, 7, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (49, 8, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (50, 8, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (51, 8, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (52, 9, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (53, 9, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (54, 9, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (55, 10, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (56, 10, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (57, 10, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (58, 10, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (59, 10, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (60, 10, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (61, 11, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (62, 11, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (63, 11, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (64, 11, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
INSERT [dbo].[Personel] ([PersonelID], [UnvanID], [PersonelCepTel], [PersonelEmail], [PersonelAdres], [IlceID], [IlID], [GoreveBaslamaTarihi], [GorevdenCikisTarihi], [PersonelNotu], [SilindiMi]) VALUES (65, 11, N'111111112', N'd@shifthospital.com', N'Mah 4 cad 2 sok 2', 5, 34, CAST(N'2020-01-01' AS Date), NULL, 98, 0)
SET IDENTITY_INSERT [dbo].[Personel] OFF
GO
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (1, N'123456789', 0, 4, CAST(N'1990-01-01' AS Date), N'Istanbul', N'Hakan', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (2, N'123456789', 1, 3, CAST(N'1991-01-01' AS Date), N'Izmir', N'Mustafa', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (3, N'123456789', 0, 8, CAST(N'1993-01-01' AS Date), N'Istanbul', N'Mehmet', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (4, N'123456789', 1, 1, CAST(N'1995-01-01' AS Date), N'Izmir', N'Murat', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (5, N'123456789', 0, 2, CAST(N'1994-01-01' AS Date), N'Istanbul', N'Hakan', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (6, N'123456789', 1, 7, CAST(N'1981-01-01' AS Date), N'Izmir', N'Mustafa', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (7, N'123456789', 0, 6, CAST(N'1982-01-01' AS Date), N'Istanbul', N'Mehmet', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (8, N'123456789', 1, 5, CAST(N'1983-01-01' AS Date), N'Izmir', N'Murat', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (9, N'123456789', 0, 4, CAST(N'1984-01-01' AS Date), N'Istanbul', N'Hakan', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (10, N'123456789', 1, 3, CAST(N'1985-01-01' AS Date), N'Izmir', N'Mustafa', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (11, N'123456789', 0, 4, CAST(N'1990-01-01' AS Date), N'Istanbul', N'Hakan', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (12, N'123456789', 1, 3, CAST(N'1991-01-01' AS Date), N'Izmir', N'Mustafa', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (13, N'123456789', 0, 8, CAST(N'1993-01-01' AS Date), N'Istanbul', N'Mehmet', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (14, N'123456789', 1, 1, CAST(N'1995-01-01' AS Date), N'Izmir', N'Murat', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (15, N'123456789', 0, 2, CAST(N'1994-01-01' AS Date), N'Istanbul', N'Hakan', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (16, N'123456789', 1, 7, CAST(N'1981-01-01' AS Date), N'Izmir', N'Mustafa', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (17, N'123456789', 0, 6, CAST(N'1982-01-01' AS Date), N'Istanbul', N'Mehmet', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (18, N'123456789', 1, 5, CAST(N'1983-01-01' AS Date), N'Izmir', N'Murat', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (19, N'123456789', 0, 4, CAST(N'1984-01-01' AS Date), N'Istanbul', N'Hakan', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (20, N'123456789', 1, 3, CAST(N'1985-01-01' AS Date), N'Izmir', N'Mustafa', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (21, N'123456789', 0, 4, CAST(N'1990-01-01' AS Date), N'Istanbul', N'Hakan', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (22, N'123456789', 1, 3, CAST(N'1991-01-01' AS Date), N'Izmir', N'Mustafa', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (23, N'123456789', 0, 8, CAST(N'1993-01-01' AS Date), N'Istanbul', N'Mehmet', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (24, N'123456789', 1, 1, CAST(N'1995-01-01' AS Date), N'Izmir', N'Murat', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (25, N'123456789', 0, 2, CAST(N'1994-01-01' AS Date), N'Istanbul', N'Hakan', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (26, N'123456789', 1, 7, CAST(N'1981-01-01' AS Date), N'Izmir', N'Mustafa', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (27, N'123456789', 0, 6, CAST(N'1982-01-01' AS Date), N'Istanbul', N'Mehmet', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (28, N'123456789', 1, 5, CAST(N'1983-01-01' AS Date), N'Izmir', N'Murat', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (29, N'123456789', 0, 4, CAST(N'1984-01-01' AS Date), N'Istanbul', N'Hakan', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (30, N'123456789', 1, 3, CAST(N'1985-01-01' AS Date), N'Izmir', N'Mustafa', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (31, N'123456789', 0, 4, CAST(N'1990-01-01' AS Date), N'Istanbul', N'Hakan', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (32, N'123456789', 1, 3, CAST(N'1991-01-01' AS Date), N'Izmir', N'Mustafa', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (33, N'123456789', 0, 8, CAST(N'1993-01-01' AS Date), N'Istanbul', N'Mehmet', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (34, N'123456789', 1, 1, CAST(N'1995-01-01' AS Date), N'Izmir', N'Murat', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (35, N'123456789', 0, 2, CAST(N'1994-01-01' AS Date), N'Istanbul', N'Hakan', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (36, N'123456789', 1, 7, CAST(N'1981-01-01' AS Date), N'Izmir', N'Mustafa', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (37, N'123456789', 0, 6, CAST(N'1982-01-01' AS Date), N'Istanbul', N'Mehmet', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (38, N'123456789', 1, 5, CAST(N'1983-01-01' AS Date), N'Izmir', N'Murat', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (39, N'123456789', 0, 4, CAST(N'1984-01-01' AS Date), N'Istanbul', N'Hakan', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (40, N'123456789', 1, 3, CAST(N'1985-01-01' AS Date), N'Izmir', N'Mustafa', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (41, N'123456789', 0, 4, CAST(N'1990-01-01' AS Date), N'Istanbul', N'Hakan', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (42, N'123456789', 1, 3, CAST(N'1991-01-01' AS Date), N'Izmir', N'Mustafa', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (43, N'123456789', 0, 8, CAST(N'1993-01-01' AS Date), N'Istanbul', N'Mehmet', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (44, N'123456789', 1, 1, CAST(N'1995-01-01' AS Date), N'Izmir', N'Murat', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (45, N'123456789', 0, 2, CAST(N'1994-01-01' AS Date), N'Istanbul', N'Hakan', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (46, N'123456789', 1, 7, CAST(N'1981-01-01' AS Date), N'Izmir', N'Mustafa', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (47, N'123456789', 0, 6, CAST(N'1982-01-01' AS Date), N'Istanbul', N'Mehmet', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (48, N'123456789', 1, 5, CAST(N'1983-01-01' AS Date), N'Izmir', N'Murat', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (49, N'123456789', 0, 4, CAST(N'1984-01-01' AS Date), N'Istanbul', N'Hakan', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (50, N'123456789', 1, 3, CAST(N'1985-01-01' AS Date), N'Izmir', N'Mustafa', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (51, N'123456789', 0, 4, CAST(N'1990-01-01' AS Date), N'Istanbul', N'Hakan', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (52, N'123456789', 1, 3, CAST(N'1991-01-01' AS Date), N'Izmir', N'Mustafa', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (53, N'123456789', 0, 8, CAST(N'1993-01-01' AS Date), N'Istanbul', N'Mehmet', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (54, N'123456789', 1, 1, CAST(N'1995-01-01' AS Date), N'Izmir', N'Murat', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (55, N'123456789', 0, 2, CAST(N'1994-01-01' AS Date), N'Istanbul', N'Hakan', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (56, N'123456789', 1, 7, CAST(N'1981-01-01' AS Date), N'Izmir', N'Mustafa', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (57, N'123456789', 0, 6, CAST(N'1982-01-01' AS Date), N'Istanbul', N'Mehmet', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (58, N'123456789', 1, 5, CAST(N'1983-01-01' AS Date), N'Izmir', N'Murat', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (59, N'123456789', 0, 4, CAST(N'1984-01-01' AS Date), N'Istanbul', N'Hakan', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (60, N'123456789', 1, 3, CAST(N'1985-01-01' AS Date), N'Izmir', N'Mustafa', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (61, N'123456789', 0, 4, CAST(N'1990-01-01' AS Date), N'Istanbul', N'Hakan', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (62, N'123456789', 1, 3, CAST(N'1991-01-01' AS Date), N'Izmir', N'Mustafa', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (63, N'123456789', 0, 8, CAST(N'1993-01-01' AS Date), N'Istanbul', N'Mehmet', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (64, N'123456789', 1, 1, CAST(N'1995-01-01' AS Date), N'Izmir', N'Murat', 0)
INSERT [dbo].[PersonelKimlik] ([PersonelID], [TCveyaPasaportNo], [Cinsiyet], [KanGrubuID], [DogumTarigi], [DogumYeri], [BabaAdi], [SilindiMi]) VALUES (65, N'123456789', 0, 2, CAST(N'1994-01-01' AS Date), N'Istanbul', N'Hakan', 0)
GO
SET IDENTITY_INSERT [dbo].[Poliklinikler] ON 

INSERT [dbo].[Poliklinikler] ([PoliklinikID], [PoliklinikAdi], [OdaID1], [OdaID2], [SilindiMi]) VALUES (1, N'Dahiliye', 5, 6, 0)
INSERT [dbo].[Poliklinikler] ([PoliklinikID], [PoliklinikAdi], [OdaID1], [OdaID2], [SilindiMi]) VALUES (2, N'Genel Cerrahi', 7, 8, 0)
INSERT [dbo].[Poliklinikler] ([PoliklinikID], [PoliklinikAdi], [OdaID1], [OdaID2], [SilindiMi]) VALUES (3, N'Göğüs Hastalıkları', 9, 10, 0)
INSERT [dbo].[Poliklinikler] ([PoliklinikID], [PoliklinikAdi], [OdaID1], [OdaID2], [SilindiMi]) VALUES (4, N'Kulak Burun Boğaz', 11, 12, 0)
INSERT [dbo].[Poliklinikler] ([PoliklinikID], [PoliklinikAdi], [OdaID1], [OdaID2], [SilindiMi]) VALUES (5, N'Kardiyoloji', 13, 14, 0)
INSERT [dbo].[Poliklinikler] ([PoliklinikID], [PoliklinikAdi], [OdaID1], [OdaID2], [SilindiMi]) VALUES (6, N'Göz Hastalıkları', 15, 16, 0)
INSERT [dbo].[Poliklinikler] ([PoliklinikID], [PoliklinikAdi], [OdaID1], [OdaID2], [SilindiMi]) VALUES (7, N'Beyin Cerrahi', 17, 18, 0)
INSERT [dbo].[Poliklinikler] ([PoliklinikID], [PoliklinikAdi], [OdaID1], [OdaID2], [SilindiMi]) VALUES (8, N'Dermatoloji', 19, 20, 0)
INSERT [dbo].[Poliklinikler] ([PoliklinikID], [PoliklinikAdi], [OdaID1], [OdaID2], [SilindiMi]) VALUES (9, N'Fizik Tedavi', 21, 22, 0)
INSERT [dbo].[Poliklinikler] ([PoliklinikID], [PoliklinikAdi], [OdaID1], [OdaID2], [SilindiMi]) VALUES (10, N'Ortopedi', 23, 24, 0)
INSERT [dbo].[Poliklinikler] ([PoliklinikID], [PoliklinikAdi], [OdaID1], [OdaID2], [SilindiMi]) VALUES (11, N'Uroloji', 25, 26, 0)
INSERT [dbo].[Poliklinikler] ([PoliklinikID], [PoliklinikAdi], [OdaID1], [OdaID2], [SilindiMi]) VALUES (12, N'Plastik Cerrahi', 27, 28, 0)
SET IDENTITY_INSERT [dbo].[Poliklinikler] OFF
GO
SET IDENTITY_INSERT [dbo].[Randevular] ON 

INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [Tarih], [Saat], [SilindiMi]) VALUES (4, 6, 6, CAST(N'2022-04-26' AS Date), CAST(N'14:30:00' AS Time), 0)
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [Tarih], [Saat], [SilindiMi]) VALUES (5, 9, 9, CAST(N'2022-04-22' AS Date), CAST(N'11:30:00' AS Time), 0)
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [Tarih], [Saat], [SilindiMi]) VALUES (6, 31, 7, CAST(N'2022-06-02' AS Date), CAST(N'10:30:00' AS Time), 0)
SET IDENTITY_INSERT [dbo].[Randevular] OFF
GO
SET IDENTITY_INSERT [dbo].[Receteler] ON 

INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (1, 1, N'olanzapine', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (2, 2, N'Thalidomide', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (3, 3, N'Hydroxychloroquine Sulfate', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (4, 4, N'Mixture of Eight Standardized Grasses', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (5, 5, N'MENTHOL', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (6, 6, N'OCTINOXATE, OCTISALATE, AVOBENZONE, HOMOSALATE', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (7, 7, N'Chloroxylenol', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (8, 8, N'Carboxymethylcellulose Sodium', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (9, 9, N'Baclofen', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (10, 10, N'Baptisia tinctoria, Echinacea, Allium cepa, Ambrosia artemisiaefolia, Arsenicum album, Euphrasia officinalis, Natrum sulphuricum, Nux vomica,', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (11, 11, N'Citalopram Hydrobromide', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (12, 12, N'Estazolam', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (13, 13, N'BENZYL ALCOHOL, LIDOCAINE HYDROCHLORIDE', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (14, 14, N' Cobaltum Met, Lithium Carb, Mag Phos, Mang Acet, Kali Phos, Selenium Met, Zinc Met.', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (15, 15, N'PANCRELIPASE', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (16, 16, N'Dextromethorphan HBr', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (17, 17, N'Avobenzone, Octisalate, Octocrylene, and Oxybenzone', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (18, 18, N'diphenhydramine hcl', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (19, 19, N'Tadalafil', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (20, 20, N'Pussy Willow', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (21, 21, N'ACTIVATED CHARCOAL', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (22, 22, N'Alcohol', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (23, 23, N'Selenium Sulfide', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (24, 24, N'Enalapril maleate and hydrochlorothiazide', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (25, 25, N'Loratadine', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (26, 26, N'Haloperidol', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (27, 27, N'Lanolin and Petrolatum', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (28, 28, N'Escitalopram Oxalate', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (29, 29, N'Lidocaine Hydrochloride and Epinephrine', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (30, 30, N'OCTINOXATE TITANIUM DIOXIDE', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (31, 31, N'Dimethicone', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (32, 32, N'Hydroquinone', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (33, 33, N'Dantrolene Sodium', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (34, 34, N'Stemphylium botryosum', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (35, 35, N'acetaminophen, dextromethorphan Hbr, Phenylephrine HCl', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (36, 36, N'Lachesis, Lycopodium, Nux vom., Phosphoricum ac., Pulsatilla, Ruta, Sabal, Selenium, Zinc. met., Ginkgo', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (37, 37, N'Sertraline hydrochloride', 0)
INSERT [dbo].[Receteler] ([ReceteID], [MuayeneID], [IlaclarınAdi_Dozu_Kullanımı], [SilindiMi]) VALUES (38, 38, N'alcohol', 0)
SET IDENTITY_INSERT [dbo].[Receteler] OFF
GO
SET IDENTITY_INSERT [dbo].[Unvan] ON 

INSERT [dbo].[Unvan] ([UnvanID], [UnvanAdi], [SilindiMi]) VALUES (1, N'Prof. Doktor', 0)
INSERT [dbo].[Unvan] ([UnvanID], [UnvanAdi], [SilindiMi]) VALUES (2, N'Doc. Doktor', 0)
INSERT [dbo].[Unvan] ([UnvanID], [UnvanAdi], [SilindiMi]) VALUES (3, N'Uzm. Doktor', 0)
INSERT [dbo].[Unvan] ([UnvanID], [UnvanAdi], [SilindiMi]) VALUES (4, N'Bas Hemsire', 0)
INSERT [dbo].[Unvan] ([UnvanID], [UnvanAdi], [SilindiMi]) VALUES (5, N'Hemsire', 0)
INSERT [dbo].[Unvan] ([UnvanID], [UnvanAdi], [SilindiMi]) VALUES (6, N'Hasta Bakici', 0)
INSERT [dbo].[Unvan] ([UnvanID], [UnvanAdi], [SilindiMi]) VALUES (7, N'Tibbi Sekreter', 0)
INSERT [dbo].[Unvan] ([UnvanID], [UnvanAdi], [SilindiMi]) VALUES (8, N'Danisman', 0)
INSERT [dbo].[Unvan] ([UnvanID], [UnvanAdi], [SilindiMi]) VALUES (9, N'Guvenlik', 0)
INSERT [dbo].[Unvan] ([UnvanID], [UnvanAdi], [SilindiMi]) VALUES (10, N'Hizmetli', 0)
INSERT [dbo].[Unvan] ([UnvanID], [UnvanAdi], [SilindiMi]) VALUES (11, N'Laborantlar', 0)
SET IDENTITY_INSERT [dbo].[Unvan] OFF
GO
SET IDENTITY_INSERT [dbo].[YatanHasta] ON 

INSERT [dbo].[YatanHasta] ([YatanHastaID], [AmeliyatID], [OdaID], [YatisTarihi], [TaburcuTarihi], [SilindiMi]) VALUES (1, 1, 37, CAST(N'2020-11-03' AS Date), CAST(N'2020-11-05' AS Date), 0)
INSERT [dbo].[YatanHasta] ([YatanHastaID], [AmeliyatID], [OdaID], [YatisTarihi], [TaburcuTarihi], [SilindiMi]) VALUES (2, 2, 38, CAST(N'2020-11-01' AS Date), CAST(N'2020-11-03' AS Date), 0)
INSERT [dbo].[YatanHasta] ([YatanHastaID], [AmeliyatID], [OdaID], [YatisTarihi], [TaburcuTarihi], [SilindiMi]) VALUES (3, 5, 39, CAST(N'2020-11-05' AS Date), CAST(N'2020-11-07' AS Date), 0)
SET IDENTITY_INSERT [dbo].[YatanHasta] OFF
GO
INSERT [dbo].[YatanHastaDetay] ([YatanHastaID], [HemsireID], [SilindiMi]) VALUES (1, 5, 0)
INSERT [dbo].[YatanHastaDetay] ([YatanHastaID], [HemsireID], [SilindiMi]) VALUES (1, 9, 0)
INSERT [dbo].[YatanHastaDetay] ([YatanHastaID], [HemsireID], [SilindiMi]) VALUES (2, 3, 0)
INSERT [dbo].[YatanHastaDetay] ([YatanHastaID], [HemsireID], [SilindiMi]) VALUES (2, 12, 0)
INSERT [dbo].[YatanHastaDetay] ([YatanHastaID], [HemsireID], [SilindiMi]) VALUES (3, 8, 0)
INSERT [dbo].[YatanHastaDetay] ([YatanHastaID], [HemsireID], [SilindiMi]) VALUES (3, 9, 0)
GO
SET IDENTITY_INSERT [dbo].[YogunBakim] ON 

INSERT [dbo].[YogunBakim] ([YogunBakimID], [AmeliyatID], [OdaID], [BaslamaTarigi], [BitisTarigi], [SilindiMi]) VALUES (1, 1, 29, CAST(N'2020-11-01T00:00:00' AS SmallDateTime), CAST(N'2020-11-03T00:00:00' AS SmallDateTime), 0)
INSERT [dbo].[YogunBakim] ([YogunBakimID], [AmeliyatID], [OdaID], [BaslamaTarigi], [BitisTarigi], [SilindiMi]) VALUES (2, 3, 30, CAST(N'2020-11-01T00:00:00' AS SmallDateTime), CAST(N'2020-11-02T00:00:00' AS SmallDateTime), 0)
SET IDENTITY_INSERT [dbo].[YogunBakim] OFF
GO
INSERT [dbo].[YogunBakimDetay] ([YogunBakimID], [HemsireID], [SilindiMi]) VALUES (1, 1, 0)
INSERT [dbo].[YogunBakimDetay] ([YogunBakimID], [HemsireID], [SilindiMi]) VALUES (1, 14, 0)
INSERT [dbo].[YogunBakimDetay] ([YogunBakimID], [HemsireID], [SilindiMi]) VALUES (1, 15, 0)
INSERT [dbo].[YogunBakimDetay] ([YogunBakimID], [HemsireID], [SilindiMi]) VALUES (2, 2, 0)
INSERT [dbo].[YogunBakimDetay] ([YogunBakimID], [HemsireID], [SilindiMi]) VALUES (2, 11, 0)
INSERT [dbo].[YogunBakimDetay] ([YogunBakimID], [HemsireID], [SilindiMi]) VALUES (2, 12, 0)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Kullanıc__B5DFDAF54048F5A0]    Script Date: 24.02.2022 13:10:44 ******/
ALTER TABLE [dbo].[Kullanıcılar] ADD  CONSTRAINT [UQ__Kullanıc__B5DFDAF54048F5A0] UNIQUE NONCLUSTERED 
(
	[KullaniciKodu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Odalar__9B3340633538EE83]    Script Date: 24.02.2022 13:10:44 ******/
ALTER TABLE [dbo].[Odalar] ADD  CONSTRAINT [UQ__Odalar__9B3340633538EE83] UNIQUE NONCLUSTERED 
(
	[OdaAdi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ameliyat] ADD  CONSTRAINT [DF_Ameliyat_SilindiMi]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[AmeliyatDetay] ADD  CONSTRAINT [DF_AmeliyatDetay_SilindiMi]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[AmeliyatRandevu] ADD  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[Doktor] ADD  CONSTRAINT [DF__Doktor__SilindiM__5AEE82B9]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[EKGCekimiSonuclari] ADD  CONSTRAINT [DF__EKGCekimi__Silin__09A971A2]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[EKGCekimleri] ADD  CONSTRAINT [DF__EKGCekiml__Silin__0A9D95DB]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[GeriHizmetPersonel] ADD  CONSTRAINT [DF__GeriHizme__Silin__6383C8BA]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[GogusFilmiSonuclari] ADD  CONSTRAINT [DF__GogusFilm__Silin__0C85DE4D]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[GogusFilmleri] ADD  CONSTRAINT [DF__GogusFilm__Silin__0D7A0286]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[Hasta] ADD  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[HastaDetayBilgileri] ADD  CONSTRAINT [DF__HastaDeta__Silin__0F624AF8]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[HastaKabul] ADD  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[HastaOdeme] ADD  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[HastaOdemeDetay] ADD  CONSTRAINT [DF__HastaOdem__Silin__123EB7A3]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[Hemsire] ADD  CONSTRAINT [DF__Hemsire__Silindi__5DCAEF64]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[HizmetUcretleri] ADD  CONSTRAINT [DF__HizmetUcr__Silin__14270015]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[IdariPersonel] ADD  CONSTRAINT [DF__IdariPers__Silin__76969D2E]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[IdrarTahlilleri] ADD  CONSTRAINT [DF__IdrarTahl__Silin__160F4887]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[IdrarTahlilSonuclari] ADD  CONSTRAINT [DF__IdrarTahl__Silin__17036CC0]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[Il] ADD  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[Ilce] ADD  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[KanTahlilleri] ADD  CONSTRAINT [DF__KanTahlil__Silin__19DFD96B]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[KanTahlilSonuclari] ADD  CONSTRAINT [DF__KanTahlil__Silin__1AD3FDA4]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[Kullanıcılar] ADD  CONSTRAINT [DF__Kullanıcı__Kulla__7D439ABD]  DEFAULT (substring(CONVERT([nvarchar](50),newid()),(5),(9))) FOR [KullaniciKodu]
GO
ALTER TABLE [dbo].[Kullanıcılar] ADD  CONSTRAINT [DF__Kullanıcı__Silin__7E37BEF6]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[MaasOdemeleri] ADD  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[MRUltrasonCekimileri] ADD  CONSTRAINT [DF__MRUltraso__Silin__1EA48E88]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[MRUltrasonCekimiSonuclari] ADD  CONSTRAINT [DF__MRUltraso__Silin__1F98B2C1]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[Muayeneler] ADD  CONSTRAINT [DF__Muayenele__Silin__02084FDA]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[MuayeneSonuc] ADD  CONSTRAINT [DF__MuayeneSo__Idara__2180FB33]  DEFAULT ((0)) FOR [IdararTahlil]
GO
ALTER TABLE [dbo].[MuayeneSonuc] ADD  CONSTRAINT [DF__MuayeneSo__KanTa__22751F6C]  DEFAULT ((0)) FOR [KanTahlil]
GO
ALTER TABLE [dbo].[MuayeneSonuc] ADD  CONSTRAINT [DF__MuayeneSo__EKGCe__236943A5]  DEFAULT ((0)) FOR [EKGCekimi]
GO
ALTER TABLE [dbo].[MuayeneSonuc] ADD  CONSTRAINT [DF__MuayeneSo__Gogus__245D67DE]  DEFAULT ((0)) FOR [GogusFilmi]
GO
ALTER TABLE [dbo].[MuayeneSonuc] ADD  CONSTRAINT [DF__MuayeneSo__MRUlt__25518C17]  DEFAULT ((0)) FOR [MRUltrasonCekimi]
GO
ALTER TABLE [dbo].[MuayeneSonuc] ADD  CONSTRAINT [DF_MuayeneSonuc_Ameliyat]  DEFAULT ((0)) FOR [Ameliyat]
GO
ALTER TABLE [dbo].[MuayeneSonuc] ADD  CONSTRAINT [DF__MuayeneSo__Silin__2645B050]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[Odalar] ADD  CONSTRAINT [DF_Odalar_silindiMi]  DEFAULT ((0)) FOR [silindiMi]
GO
ALTER TABLE [dbo].[OdaTurleri] ADD  CONSTRAINT [DF_OdaTurleri_SilindiMi]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[Personel] ADD  CONSTRAINT [DF__Personel__Silind__08B54D69]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[PersonelKimlik] ADD  CONSTRAINT [DF__PersonelK__Silin__09A971A2]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[Poliklinikler] ADD  CONSTRAINT [DF__Poliklini__Silin__3F466844]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[Randevular] ADD  CONSTRAINT [DF__Randevula__Silin__0B91BA14]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[Receteler] ADD  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[Unvan] ADD  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[YatanHasta] ADD  CONSTRAINT [DF_YatanHasta_SilindiMi]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[YatanHastaDetay] ADD  CONSTRAINT [DF_YatanHastaDetay_SilindiMi]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[YogunBakim] ADD  CONSTRAINT [DF_YogunBakim_SilindiMi]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[YogunBakimDetay] ADD  CONSTRAINT [DF_YogunBakimDatay_SilindiMi]  DEFAULT ((0)) FOR [SilindiMi]
GO
ALTER TABLE [dbo].[Ameliyat]  WITH CHECK ADD  CONSTRAINT [FK_Ameliyat_MuayeneSonuc] FOREIGN KEY([MuayeneID])
REFERENCES [dbo].[MuayeneSonuc] ([MuayeneID])
GO
ALTER TABLE [dbo].[Ameliyat] CHECK CONSTRAINT [FK_Ameliyat_MuayeneSonuc]
GO
ALTER TABLE [dbo].[Ameliyat]  WITH CHECK ADD  CONSTRAINT [FK_Ameliyat_Odalar] FOREIGN KEY([OdaID])
REFERENCES [dbo].[Odalar] ([OdaID])
GO
ALTER TABLE [dbo].[Ameliyat] CHECK CONSTRAINT [FK_Ameliyat_Odalar]
GO
ALTER TABLE [dbo].[AmeliyatDetay]  WITH CHECK ADD  CONSTRAINT [FK_AmeliyatDetay_Ameliyat1] FOREIGN KEY([AmeliyatID])
REFERENCES [dbo].[Ameliyat] ([AmeliyatID])
GO
ALTER TABLE [dbo].[AmeliyatDetay] CHECK CONSTRAINT [FK_AmeliyatDetay_Ameliyat1]
GO
ALTER TABLE [dbo].[AmeliyatDetay]  WITH CHECK ADD  CONSTRAINT [FK_AmeliyatDetay_Doktor] FOREIGN KEY([DoktorID])
REFERENCES [dbo].[Doktor] ([DoktorID])
GO
ALTER TABLE [dbo].[AmeliyatDetay] CHECK CONSTRAINT [FK_AmeliyatDetay_Doktor]
GO
ALTER TABLE [dbo].[AmeliyatDetay]  WITH CHECK ADD  CONSTRAINT [FK_AmeliyatDetay_Hemsire] FOREIGN KEY([HemsireID])
REFERENCES [dbo].[Hemsire] ([HemsireID])
GO
ALTER TABLE [dbo].[AmeliyatDetay] CHECK CONSTRAINT [FK_AmeliyatDetay_Hemsire]
GO
ALTER TABLE [dbo].[AmeliyatRandevu]  WITH CHECK ADD  CONSTRAINT [FK_AmeliyatRandevu_MuayeneSonuc] FOREIGN KEY([MuayeneID])
REFERENCES [dbo].[MuayeneSonuc] ([MuayeneID])
GO
ALTER TABLE [dbo].[AmeliyatRandevu] CHECK CONSTRAINT [FK_AmeliyatRandevu_MuayeneSonuc]
GO
ALTER TABLE [dbo].[Doktor]  WITH CHECK ADD  CONSTRAINT [FK_Doktor_Personel] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[Personel] ([PersonelID])
GO
ALTER TABLE [dbo].[Doktor] CHECK CONSTRAINT [FK_Doktor_Personel]
GO
ALTER TABLE [dbo].[Doktor]  WITH CHECK ADD  CONSTRAINT [FK_Doktor_Poliklinikler] FOREIGN KEY([PoliklinikID])
REFERENCES [dbo].[Poliklinikler] ([PoliklinikID])
GO
ALTER TABLE [dbo].[Doktor] CHECK CONSTRAINT [FK_Doktor_Poliklinikler]
GO
ALTER TABLE [dbo].[DoktorIdariPersonel]  WITH CHECK ADD  CONSTRAINT [FK_DoktorIdariPersonel_Doktor] FOREIGN KEY([DoktorID])
REFERENCES [dbo].[Doktor] ([DoktorID])
GO
ALTER TABLE [dbo].[DoktorIdariPersonel] CHECK CONSTRAINT [FK_DoktorIdariPersonel_Doktor]
GO
ALTER TABLE [dbo].[DoktorIdariPersonel]  WITH CHECK ADD  CONSTRAINT [FK_DoktorIdariPersonel_IdariPersonel] FOREIGN KEY([IdariPersonelID])
REFERENCES [dbo].[IdariPersonel] ([IdariPersonelID])
GO
ALTER TABLE [dbo].[DoktorIdariPersonel] CHECK CONSTRAINT [FK_DoktorIdariPersonel_IdariPersonel]
GO
ALTER TABLE [dbo].[EKGCekimiSonuclari]  WITH CHECK ADD  CONSTRAINT [FK_EKGCekimiSonuclari_EKGCekimleri] FOREIGN KEY([EKGCekimiID])
REFERENCES [dbo].[EKGCekimleri] ([EKGCekimiID])
GO
ALTER TABLE [dbo].[EKGCekimiSonuclari] CHECK CONSTRAINT [FK_EKGCekimiSonuclari_EKGCekimleri]
GO
ALTER TABLE [dbo].[EKGCekimleri]  WITH CHECK ADD  CONSTRAINT [FK_EKGCekimleri_GeriHizmetPersonel] FOREIGN KEY([GeriHizmetPersonelID])
REFERENCES [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID])
GO
ALTER TABLE [dbo].[EKGCekimleri] CHECK CONSTRAINT [FK_EKGCekimleri_GeriHizmetPersonel]
GO
ALTER TABLE [dbo].[EKGCekimleri]  WITH CHECK ADD  CONSTRAINT [FK_EKGCekimleri_MuayeneSonuc] FOREIGN KEY([MuayeneID])
REFERENCES [dbo].[MuayeneSonuc] ([MuayeneID])
GO
ALTER TABLE [dbo].[EKGCekimleri] CHECK CONSTRAINT [FK_EKGCekimleri_MuayeneSonuc]
GO
ALTER TABLE [dbo].[GeriHizmetPersonel]  WITH CHECK ADD  CONSTRAINT [FK_GeriHizmetPersonel_Personel] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[Personel] ([PersonelID])
GO
ALTER TABLE [dbo].[GeriHizmetPersonel] CHECK CONSTRAINT [FK_GeriHizmetPersonel_Personel]
GO
ALTER TABLE [dbo].[GogusFilmiSonuclari]  WITH CHECK ADD  CONSTRAINT [FK_GogusFilmiSonuclari_GogusFilmleri] FOREIGN KEY([GogusFilmiID])
REFERENCES [dbo].[GogusFilmleri] ([GogusFilmiID])
GO
ALTER TABLE [dbo].[GogusFilmiSonuclari] CHECK CONSTRAINT [FK_GogusFilmiSonuclari_GogusFilmleri]
GO
ALTER TABLE [dbo].[GogusFilmleri]  WITH CHECK ADD  CONSTRAINT [FK_GogusFilmleri_GeriHizmetPersonel] FOREIGN KEY([GeriHizmetPersonelID])
REFERENCES [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID])
GO
ALTER TABLE [dbo].[GogusFilmleri] CHECK CONSTRAINT [FK_GogusFilmleri_GeriHizmetPersonel]
GO
ALTER TABLE [dbo].[GogusFilmleri]  WITH CHECK ADD  CONSTRAINT [FK_GogusFilmleri_MuayeneSonuc] FOREIGN KEY([MuayeneID])
REFERENCES [dbo].[MuayeneSonuc] ([MuayeneID])
GO
ALTER TABLE [dbo].[GogusFilmleri] CHECK CONSTRAINT [FK_GogusFilmleri_MuayeneSonuc]
GO
ALTER TABLE [dbo].[Hasta]  WITH CHECK ADD  CONSTRAINT [FK_Hasta_HastaDetayBilgileri] FOREIGN KEY([HastaID])
REFERENCES [dbo].[HastaDetayBilgileri] ([HastaID])
GO
ALTER TABLE [dbo].[Hasta] CHECK CONSTRAINT [FK_Hasta_HastaDetayBilgileri]
GO
ALTER TABLE [dbo].[Hasta]  WITH CHECK ADD  CONSTRAINT [FK_Hasta_KanGrubu] FOREIGN KEY([KanGrubuID])
REFERENCES [dbo].[KanGrubu] ([KanGrubuID])
GO
ALTER TABLE [dbo].[Hasta] CHECK CONSTRAINT [FK_Hasta_KanGrubu]
GO
ALTER TABLE [dbo].[HastaDetayBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_HastaDetayBilgileri_Il] FOREIGN KEY([IlID])
REFERENCES [dbo].[Il] ([IlID])
GO
ALTER TABLE [dbo].[HastaDetayBilgileri] CHECK CONSTRAINT [FK_HastaDetayBilgileri_Il]
GO
ALTER TABLE [dbo].[HastaDetayBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_HastaDetayBilgileri_Ilce] FOREIGN KEY([IlceID])
REFERENCES [dbo].[Ilce] ([IlceID])
GO
ALTER TABLE [dbo].[HastaDetayBilgileri] CHECK CONSTRAINT [FK_HastaDetayBilgileri_Ilce]
GO
ALTER TABLE [dbo].[HastaKabul]  WITH CHECK ADD  CONSTRAINT [FK_HastaKabul_Doktor] FOREIGN KEY([DoktorID])
REFERENCES [dbo].[Doktor] ([DoktorID])
GO
ALTER TABLE [dbo].[HastaKabul] CHECK CONSTRAINT [FK_HastaKabul_Doktor]
GO
ALTER TABLE [dbo].[HastaKabul]  WITH CHECK ADD  CONSTRAINT [FK_HastaKabul_Hasta] FOREIGN KEY([HastaID])
REFERENCES [dbo].[Hasta] ([HastaID])
GO
ALTER TABLE [dbo].[HastaKabul] CHECK CONSTRAINT [FK_HastaKabul_Hasta]
GO
ALTER TABLE [dbo].[HastaOdeme]  WITH CHECK ADD  CONSTRAINT [FK_HastaOdeme_Hasta] FOREIGN KEY([HastaID])
REFERENCES [dbo].[Hasta] ([HastaID])
GO
ALTER TABLE [dbo].[HastaOdeme] CHECK CONSTRAINT [FK_HastaOdeme_Hasta]
GO
ALTER TABLE [dbo].[HastaOdeme]  WITH CHECK ADD  CONSTRAINT [FK_HastaOdeme_OdemeTuru] FOREIGN KEY([OdemeTuruID])
REFERENCES [dbo].[OdemeTuru] ([OdemeTuruID])
GO
ALTER TABLE [dbo].[HastaOdeme] CHECK CONSTRAINT [FK_HastaOdeme_OdemeTuru]
GO
ALTER TABLE [dbo].[HastaOdemeDetay]  WITH CHECK ADD  CONSTRAINT [FK_HastaOdemeDetay_HastaOdeme] FOREIGN KEY([OdemeID])
REFERENCES [dbo].[HastaOdeme] ([OdemeID])
GO
ALTER TABLE [dbo].[HastaOdemeDetay] CHECK CONSTRAINT [FK_HastaOdemeDetay_HastaOdeme]
GO
ALTER TABLE [dbo].[HastaOdemeDetay]  WITH CHECK ADD  CONSTRAINT [FK_HastaOdemeDetay_HizmetUcretleri1] FOREIGN KEY([HizmetID])
REFERENCES [dbo].[HizmetUcretleri] ([HizmetID])
GO
ALTER TABLE [dbo].[HastaOdemeDetay] CHECK CONSTRAINT [FK_HastaOdemeDetay_HizmetUcretleri1]
GO
ALTER TABLE [dbo].[Hemsire]  WITH CHECK ADD  CONSTRAINT [FK_Hemsire_Personel] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[Personel] ([PersonelID])
GO
ALTER TABLE [dbo].[Hemsire] CHECK CONSTRAINT [FK_Hemsire_Personel]
GO
ALTER TABLE [dbo].[Hemsire]  WITH CHECK ADD  CONSTRAINT [FK_Hemsire_Poliklinikler] FOREIGN KEY([PoliklinikID])
REFERENCES [dbo].[Poliklinikler] ([PoliklinikID])
GO
ALTER TABLE [dbo].[Hemsire] CHECK CONSTRAINT [FK_Hemsire_Poliklinikler]
GO
ALTER TABLE [dbo].[IdariPersonel]  WITH CHECK ADD  CONSTRAINT [FK_IdariPersonel_Odalar] FOREIGN KEY([OdaID])
REFERENCES [dbo].[Odalar] ([OdaID])
GO
ALTER TABLE [dbo].[IdariPersonel] CHECK CONSTRAINT [FK_IdariPersonel_Odalar]
GO
ALTER TABLE [dbo].[IdariPersonel]  WITH CHECK ADD  CONSTRAINT [FK_IdariPersonel_Personel] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[Personel] ([PersonelID])
GO
ALTER TABLE [dbo].[IdariPersonel] CHECK CONSTRAINT [FK_IdariPersonel_Personel]
GO
ALTER TABLE [dbo].[IdrarTahlilleri]  WITH CHECK ADD  CONSTRAINT [FK_IdrarTahlilleri_GeriHizmetPersonel] FOREIGN KEY([GeriHizmetPersonelID])
REFERENCES [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID])
GO
ALTER TABLE [dbo].[IdrarTahlilleri] CHECK CONSTRAINT [FK_IdrarTahlilleri_GeriHizmetPersonel]
GO
ALTER TABLE [dbo].[IdrarTahlilleri]  WITH CHECK ADD  CONSTRAINT [FK_IdrarTahlilleri_MuayeneSonuc] FOREIGN KEY([MuayeneID])
REFERENCES [dbo].[MuayeneSonuc] ([MuayeneID])
GO
ALTER TABLE [dbo].[IdrarTahlilleri] CHECK CONSTRAINT [FK_IdrarTahlilleri_MuayeneSonuc]
GO
ALTER TABLE [dbo].[IdrarTahlilSonuclari]  WITH CHECK ADD  CONSTRAINT [FK_IdrarTahlilSonuclari_IdrarTahlilleri1] FOREIGN KEY([IdrarTahlilID])
REFERENCES [dbo].[IdrarTahlilleri] ([IdrarTahlilID])
GO
ALTER TABLE [dbo].[IdrarTahlilSonuclari] CHECK CONSTRAINT [FK_IdrarTahlilSonuclari_IdrarTahlilleri1]
GO
ALTER TABLE [dbo].[IdrarTahlilSonuclari]  WITH CHECK ADD  CONSTRAINT [FK_IdrarTahlilSonuclari_IdrarTestleri1] FOREIGN KEY([IdrarTestID])
REFERENCES [dbo].[IdrarTestleri] ([IdrarTestID])
GO
ALTER TABLE [dbo].[IdrarTahlilSonuclari] CHECK CONSTRAINT [FK_IdrarTahlilSonuclari_IdrarTestleri1]
GO
ALTER TABLE [dbo].[KanTahlilleri]  WITH CHECK ADD  CONSTRAINT [FK_KanTahlilleri_GeriHizmetPersonel] FOREIGN KEY([GeriHizmetPersonelID])
REFERENCES [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID])
GO
ALTER TABLE [dbo].[KanTahlilleri] CHECK CONSTRAINT [FK_KanTahlilleri_GeriHizmetPersonel]
GO
ALTER TABLE [dbo].[KanTahlilleri]  WITH CHECK ADD  CONSTRAINT [FK_KanTahlilleri_MuayeneSonuc] FOREIGN KEY([MuayeneID])
REFERENCES [dbo].[MuayeneSonuc] ([MuayeneID])
GO
ALTER TABLE [dbo].[KanTahlilleri] CHECK CONSTRAINT [FK_KanTahlilleri_MuayeneSonuc]
GO
ALTER TABLE [dbo].[KanTahlilSonuclari]  WITH CHECK ADD  CONSTRAINT [FK_KanTahlilSonuclari_KanTahlilleri1] FOREIGN KEY([KanTahlilID])
REFERENCES [dbo].[KanTahlilleri] ([KanTahlilID])
GO
ALTER TABLE [dbo].[KanTahlilSonuclari] CHECK CONSTRAINT [FK_KanTahlilSonuclari_KanTahlilleri1]
GO
ALTER TABLE [dbo].[KanTahlilSonuclari]  WITH CHECK ADD  CONSTRAINT [FK_KanTahlilSonuclari_KanTahlilTestleri1] FOREIGN KEY([KanTestiID])
REFERENCES [dbo].[KanTahlilTestleri] ([KanTestiID])
GO
ALTER TABLE [dbo].[KanTahlilSonuclari] CHECK CONSTRAINT [FK_KanTahlilSonuclari_KanTahlilTestleri1]
GO
ALTER TABLE [dbo].[MaasOdemeleri]  WITH CHECK ADD  CONSTRAINT [FK_MaasOdemeleri_PersonelKimlik] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[PersonelKimlik] ([PersonelID])
GO
ALTER TABLE [dbo].[MaasOdemeleri] CHECK CONSTRAINT [FK_MaasOdemeleri_PersonelKimlik]
GO
ALTER TABLE [dbo].[MRUltrasonCekimileri]  WITH CHECK ADD  CONSTRAINT [FK_MRUltrasonCekimileri_GeriHizmetPersonel] FOREIGN KEY([GeriHizmetPersonelID])
REFERENCES [dbo].[GeriHizmetPersonel] ([GeriHizmetPersonelID])
GO
ALTER TABLE [dbo].[MRUltrasonCekimileri] CHECK CONSTRAINT [FK_MRUltrasonCekimileri_GeriHizmetPersonel]
GO
ALTER TABLE [dbo].[MRUltrasonCekimileri]  WITH CHECK ADD  CONSTRAINT [FK_MRUltrasonCekimileri_MuayeneSonuc] FOREIGN KEY([MuayeneID])
REFERENCES [dbo].[MuayeneSonuc] ([MuayeneID])
GO
ALTER TABLE [dbo].[MRUltrasonCekimileri] CHECK CONSTRAINT [FK_MRUltrasonCekimileri_MuayeneSonuc]
GO
ALTER TABLE [dbo].[MRUltrasonCekimiSonuclari]  WITH CHECK ADD  CONSTRAINT [FK_MRUltrasonCekimiSonuclari_MRUltrasonCekimileri] FOREIGN KEY([MRUltrasonCekimiID])
REFERENCES [dbo].[MRUltrasonCekimileri] ([MRUltrasyonCekimiID])
GO
ALTER TABLE [dbo].[MRUltrasonCekimiSonuclari] CHECK CONSTRAINT [FK_MRUltrasonCekimiSonuclari_MRUltrasonCekimileri]
GO
ALTER TABLE [dbo].[Muayeneler]  WITH CHECK ADD  CONSTRAINT [FK_Muayeneler_HastaKabul] FOREIGN KEY([HastaKabulID])
REFERENCES [dbo].[HastaKabul] ([HastaKabulID])
GO
ALTER TABLE [dbo].[Muayeneler] CHECK CONSTRAINT [FK_Muayeneler_HastaKabul]
GO
ALTER TABLE [dbo].[MuayeneSonuc]  WITH CHECK ADD  CONSTRAINT [FK_MuayeneSonuc_Muayeneler] FOREIGN KEY([MuayeneID])
REFERENCES [dbo].[Muayeneler] ([MuayeneID])
GO
ALTER TABLE [dbo].[MuayeneSonuc] CHECK CONSTRAINT [FK_MuayeneSonuc_Muayeneler]
GO
ALTER TABLE [dbo].[Odalar]  WITH CHECK ADD  CONSTRAINT [FK_Odalar_OdaTurleri] FOREIGN KEY([OdaTuruID])
REFERENCES [dbo].[OdaTurleri] ([OdaTuruID])
GO
ALTER TABLE [dbo].[Odalar] CHECK CONSTRAINT [FK_Odalar_OdaTurleri]
GO
ALTER TABLE [dbo].[Personel]  WITH CHECK ADD  CONSTRAINT [FK_Personel_Il] FOREIGN KEY([IlID])
REFERENCES [dbo].[Il] ([IlID])
GO
ALTER TABLE [dbo].[Personel] CHECK CONSTRAINT [FK_Personel_Il]
GO
ALTER TABLE [dbo].[Personel]  WITH CHECK ADD  CONSTRAINT [FK_Personel_Ilce] FOREIGN KEY([IlceID])
REFERENCES [dbo].[Ilce] ([IlceID])
GO
ALTER TABLE [dbo].[Personel] CHECK CONSTRAINT [FK_Personel_Ilce]
GO
ALTER TABLE [dbo].[Personel]  WITH CHECK ADD  CONSTRAINT [FK_Personel_PersonelKimlik] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[PersonelKimlik] ([PersonelID])
GO
ALTER TABLE [dbo].[Personel] CHECK CONSTRAINT [FK_Personel_PersonelKimlik]
GO
ALTER TABLE [dbo].[Personel]  WITH CHECK ADD  CONSTRAINT [FK_Personel_Unvan] FOREIGN KEY([UnvanID])
REFERENCES [dbo].[Unvan] ([UnvanID])
GO
ALTER TABLE [dbo].[Personel] CHECK CONSTRAINT [FK_Personel_Unvan]
GO
ALTER TABLE [dbo].[PersonelKimlik]  WITH CHECK ADD  CONSTRAINT [FK_PersonelKimlik_Kullanıcılar] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[Kullanıcılar] ([PersonelID])
GO
ALTER TABLE [dbo].[PersonelKimlik] CHECK CONSTRAINT [FK_PersonelKimlik_Kullanıcılar]
GO
ALTER TABLE [dbo].[Poliklinikler]  WITH CHECK ADD  CONSTRAINT [FK_Poliklinikler_Odalar] FOREIGN KEY([OdaID1])
REFERENCES [dbo].[Odalar] ([OdaID])
GO
ALTER TABLE [dbo].[Poliklinikler] CHECK CONSTRAINT [FK_Poliklinikler_Odalar]
GO
ALTER TABLE [dbo].[Poliklinikler]  WITH CHECK ADD  CONSTRAINT [FK_Poliklinikler_Odalar1] FOREIGN KEY([OdaID2])
REFERENCES [dbo].[Odalar] ([OdaID])
GO
ALTER TABLE [dbo].[Poliklinikler] CHECK CONSTRAINT [FK_Poliklinikler_Odalar1]
GO
ALTER TABLE [dbo].[Randevular]  WITH CHECK ADD  CONSTRAINT [FK_Randevular_Doktor] FOREIGN KEY([DoktorID])
REFERENCES [dbo].[Doktor] ([DoktorID])
GO
ALTER TABLE [dbo].[Randevular] CHECK CONSTRAINT [FK_Randevular_Doktor]
GO
ALTER TABLE [dbo].[Randevular]  WITH CHECK ADD  CONSTRAINT [FK_Randevular_Hasta] FOREIGN KEY([HastaID])
REFERENCES [dbo].[Hasta] ([HastaID])
GO
ALTER TABLE [dbo].[Randevular] CHECK CONSTRAINT [FK_Randevular_Hasta]
GO
ALTER TABLE [dbo].[Receteler]  WITH CHECK ADD  CONSTRAINT [FK_Receteler_Muayeneler] FOREIGN KEY([MuayeneID])
REFERENCES [dbo].[Muayeneler] ([MuayeneID])
GO
ALTER TABLE [dbo].[Receteler] CHECK CONSTRAINT [FK_Receteler_Muayeneler]
GO
ALTER TABLE [dbo].[YatanHasta]  WITH CHECK ADD  CONSTRAINT [FK_YatanHasta_Ameliyat] FOREIGN KEY([AmeliyatID])
REFERENCES [dbo].[Ameliyat] ([AmeliyatID])
GO
ALTER TABLE [dbo].[YatanHasta] CHECK CONSTRAINT [FK_YatanHasta_Ameliyat]
GO
ALTER TABLE [dbo].[YatanHastaDetay]  WITH CHECK ADD  CONSTRAINT [FK_YatanHastaDetay_Hemsire] FOREIGN KEY([HemsireID])
REFERENCES [dbo].[Hemsire] ([HemsireID])
GO
ALTER TABLE [dbo].[YatanHastaDetay] CHECK CONSTRAINT [FK_YatanHastaDetay_Hemsire]
GO
ALTER TABLE [dbo].[YatanHastaDetay]  WITH CHECK ADD  CONSTRAINT [FK_YatanHastaDetay_YatanHasta] FOREIGN KEY([YatanHastaID])
REFERENCES [dbo].[YatanHasta] ([YatanHastaID])
GO
ALTER TABLE [dbo].[YatanHastaDetay] CHECK CONSTRAINT [FK_YatanHastaDetay_YatanHasta]
GO
ALTER TABLE [dbo].[YogunBakim]  WITH CHECK ADD  CONSTRAINT [FK_YogunBakim_Ameliyat] FOREIGN KEY([AmeliyatID])
REFERENCES [dbo].[Ameliyat] ([AmeliyatID])
GO
ALTER TABLE [dbo].[YogunBakim] CHECK CONSTRAINT [FK_YogunBakim_Ameliyat]
GO
ALTER TABLE [dbo].[YogunBakim]  WITH CHECK ADD  CONSTRAINT [FK_YogunBakim_Odalar] FOREIGN KEY([OdaID])
REFERENCES [dbo].[Odalar] ([OdaID])
GO
ALTER TABLE [dbo].[YogunBakim] CHECK CONSTRAINT [FK_YogunBakim_Odalar]
GO
ALTER TABLE [dbo].[YogunBakimDetay]  WITH CHECK ADD  CONSTRAINT [FK_YogunBakimDatay_Hemsire] FOREIGN KEY([HemsireID])
REFERENCES [dbo].[Hemsire] ([HemsireID])
GO
ALTER TABLE [dbo].[YogunBakimDetay] CHECK CONSTRAINT [FK_YogunBakimDatay_Hemsire]
GO
ALTER TABLE [dbo].[YogunBakimDetay]  WITH CHECK ADD  CONSTRAINT [FK_YogunBakimDetay_YogunBakim] FOREIGN KEY([YogunBakimID])
REFERENCES [dbo].[YogunBakim] ([YogunBakimID])
GO
ALTER TABLE [dbo].[YogunBakimDetay] CHECK CONSTRAINT [FK_YogunBakimDetay_YogunBakim]
GO
