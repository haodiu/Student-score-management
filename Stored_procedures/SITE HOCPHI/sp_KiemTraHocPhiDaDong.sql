USE [QLDSV_TC]
GO
/****** Object:  StoredProcedure [dbo].[sp_KiemTraHocPhiDaDong]    Script Date: 12/10/2021 7:25:47 PM ******/
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
CREATE  PROCEDURE [dbo].[sp_KiemTraHocPhiDaDong]
	-- khai bao cac bien tam 
	@MASV nchar(10), @NIENKHOA nchar(9), @HOCKY int, @NGAYDONG date
AS
BEGIN
	IF EXISTS ( SELECT 1 FROM CT_DONGHOCPHI WHERE MASV = @MASV AND NIENKHOA = @NIENKHOA AND HOCKY = @HOCKY AND NGAYDONG = @NGAYDONG)
	BEGIN
		RAISERROR ('Sinh viên đã đóng tiền vào ngày này. Vui lòng chọn ngày khác', 16,1)
		RETURN 1;
	END
END
