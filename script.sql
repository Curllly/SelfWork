USE [master]
GO

/****** Object:  Database [SelfWorkDB]    Script Date: 29.05.2023 23:58:05 ******/
CREATE DATABASE [SelfWorkDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SelfWorkDB', FILENAME = N'D:\Databases\MSSQL\Data\SelfWorkDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SelfWorkDB_log', FILENAME = N'D:\Databases\MSSQL\Data\SelfWorkDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SelfWorkDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [SelfWorkDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [SelfWorkDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [SelfWorkDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [SelfWorkDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [SelfWorkDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [SelfWorkDB] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [SelfWorkDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [SelfWorkDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [SelfWorkDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [SelfWorkDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [SelfWorkDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [SelfWorkDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [SelfWorkDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [SelfWorkDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [SelfWorkDB] SET  ENABLE_BROKER 
GO

ALTER DATABASE [SelfWorkDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [SelfWorkDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [SelfWorkDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [SelfWorkDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [SelfWorkDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [SelfWorkDB] SET READ_COMMITTED_SNAPSHOT ON 
GO

ALTER DATABASE [SelfWorkDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [SelfWorkDB] SET RECOVERY FULL 
GO

ALTER DATABASE [SelfWorkDB] SET  MULTI_USER 
GO

ALTER DATABASE [SelfWorkDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [SelfWorkDB] SET DB_CHAINING OFF 
GO

ALTER DATABASE [SelfWorkDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [SelfWorkDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [SelfWorkDB] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [SelfWorkDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [SelfWorkDB] SET QUERY_STORE = ON
GO

ALTER DATABASE [SelfWorkDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [SelfWorkDB] SET  READ_WRITE 
GO

