USE [QLDSV_TC]
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaChiTietDongHP]    Script Date: 12/10/2021 7:25:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
USE [QLDSV_TC]
go
CREATE  PROCEDURE [dbo].[sp_XoaChiTietDongHP]
	-- khai bao cac bien tam 
	@MASV nchar(10), @NIENKHOA nchar(9), @HOCKY int, @NGAYDONG date
AS
BEGIN
	DELETE FROM CT_DONGHOCPHI
	WHERE MASV = @MASV AND NIENKHOA = @NIENKHOA AND HOCKY = @HOCKY AND NGAYDONG = @NGAYDONG
END
