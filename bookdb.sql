USE [BookDB]
GO
/****** Object:  Table [dbo].[t_lend]    Script Date: 2024/6/3 12:38:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_lend](
	[no] [int] IDENTITY(1,1) NOT NULL,
	[uid] [varchar](50) NOT NULL,
	[bid] [varchar](50) NOT NULL,
	[datatime] [datetime] NULL,
 CONSTRAINT [PK_t_lend_1] PRIMARY KEY CLUSTERED 
(
	[no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_user]    Script Date: 2024/6/3 12:38:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_user](
	[id] [varchar](50) NOT NULL,
	[name] [varchar](50) NULL,
	[sex] [char](2) NULL,
	[psw] [varchar](50) NULL,
	[uadmin] [varchar](50) NULL,
 CONSTRAINT [PK_t_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_book]    Script Date: 2024/6/3 12:38:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_book](
	[id] [varchar](50) NOT NULL,
	[name] [varchar](50) NULL,
	[author] [varchar](50) NULL,
	[press] [varchar](50) NULL,
	[number] [int] NULL,
 CONSTRAINT [PK_t_book] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vjy]    Script Date: 2024/6/3 12:38:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vjy]
AS
SELECT dbo.t_lend.no AS no1, dbo.t_lend.bid AS bid1, dbo.t_book.name, dbo.t_lend.datatime AS dt, dbo.t_lend.uid AS ud, dbo.t_user.psw
FROM   dbo.t_user INNER JOIN
          dbo.t_lend ON dbo.t_user.id = dbo.t_lend.uid INNER JOIN
          dbo.t_book ON dbo.t_lend.bid = dbo.t_book.id
GO
/****** Object:  Table [dbo].[t_admin]    Script Date: 2024/6/3 12:38:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_admin](
	[id] [varchar](50) NOT NULL,
	[psw] [varchar](50) NULL,
 CONSTRAINT [PK_t_admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[t_admin] ([id], [psw]) VALUES (N'aa', N'2')
INSERT [dbo].[t_admin] ([id], [psw]) VALUES (N'admin', N'1')
GO
INSERT [dbo].[t_book] ([id], [name], [author], [press], [number]) VALUES (N'1', N'新华字典', N'不祥', N'人民教育', 15)
INSERT [dbo].[t_book] ([id], [name], [author], [press], [number]) VALUES (N'11', N'毛泽东思想', N'毛泽东', N'高等教育出版社', 16)
INSERT [dbo].[t_book] ([id], [name], [author], [press], [number]) VALUES (N'2', N'1', N'1', N'1', 0)
INSERT [dbo].[t_book] ([id], [name], [author], [press], [number]) VALUES (N'20190101', N'计算机组成原理', N'王党辉', N'高等教育出版社', 7)
INSERT [dbo].[t_book] ([id], [name], [author], [press], [number]) VALUES (N'2023521', N'算法设计与数据结构', N'李玲', N'机械工业出版社', 5)
INSERT [dbo].[t_book] ([id], [name], [author], [press], [number]) VALUES (N'2024', N'Effective Java', N'ljx', N'Add-Wesley', 9)
INSERT [dbo].[t_book] ([id], [name], [author], [press], [number]) VALUES (N'2024522', N'大学语文', N'陈洪', N'高等教育出版社', 3)
INSERT [dbo].[t_book] ([id], [name], [author], [press], [number]) VALUES (N'319', N'文城', N'余华', N'上海文汇', 7)
INSERT [dbo].[t_book] ([id], [name], [author], [press], [number]) VALUES (N'6666', N'破云', N'淮上', N'江苏凤凰文艺', 6)
GO
SET IDENTITY_INSERT [dbo].[t_lend] ON 

INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (1, N'1001', N'2024', CAST(N'2024-05-14T22:50:08.220' AS DateTime))
INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (6, N'1001', N'2024', CAST(N'2024-05-14T23:39:04.813' AS DateTime))
INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (8, N'1001', N'20190101', CAST(N'2024-05-22T14:18:23.263' AS DateTime))
INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (14, N'1001', N'20190101', CAST(N'2024-05-22T20:57:36.447' AS DateTime))
INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (16, N'1001', N'2024522', CAST(N'2024-05-22T20:58:01.337' AS DateTime))
INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (17, N'1001', N'2024', CAST(N'2024-05-22T23:12:23.597' AS DateTime))
INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (36, N'2211392', N'20190101', CAST(N'2024-05-23T22:32:33.570' AS DateTime))
INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (37, N'2211392', N'2024522', CAST(N'2024-05-23T22:32:35.843' AS DateTime))
INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (38, N'2211392', N'2024', CAST(N'2024-05-23T22:32:40.093' AS DateTime))
INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (39, N'2211392', N'20190101', CAST(N'2024-05-23T22:32:53.033' AS DateTime))
INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (40, N'1002', N'2023521', CAST(N'2024-05-23T22:33:31.090' AS DateTime))
INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (45, N'1002', N'2024522', CAST(N'2024-05-23T22:54:19.663' AS DateTime))
INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (46, N'1002', N'319', CAST(N'2024-05-23T22:54:23.147' AS DateTime))
INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (47, N'1002', N'6666', CAST(N'2024-05-23T22:54:25.433' AS DateTime))
INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (48, N'1002', N'6666', CAST(N'2024-05-23T22:54:34.083' AS DateTime))
INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (49, N'1002', N'2', CAST(N'2024-05-23T22:57:16.120' AS DateTime))
INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (50, N'1002', N'11', CAST(N'2024-05-23T22:57:24.023' AS DateTime))
INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (52, N'2211393', N'6666', CAST(N'2024-05-23T23:06:10.803' AS DateTime))
INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (53, N'2211393', N'11', CAST(N'2024-05-23T23:06:14.857' AS DateTime))
INSERT [dbo].[t_lend] ([no], [uid], [bid], [datatime]) VALUES (55, N'2211393', N'11', CAST(N'2024-05-23T23:19:47.060' AS DateTime))
SET IDENTITY_INSERT [dbo].[t_lend] OFF
GO
INSERT [dbo].[t_user] ([id], [name], [sex], [psw], [uadmin]) VALUES (N'1001', N'张三', N'男', N'1', N'admin')
INSERT [dbo].[t_user] ([id], [name], [sex], [psw], [uadmin]) VALUES (N'1002', N'李四', N'女', N'1', N'aa')
INSERT [dbo].[t_user] ([id], [name], [sex], [psw], [uadmin]) VALUES (N'2211392', N'陈能苗', N'女', N'1', N'admin')
INSERT [dbo].[t_user] ([id], [name], [sex], [psw], [uadmin]) VALUES (N'2211393', N'小雨', N'男', N'1', N'admin')
GO
ALTER TABLE [dbo].[t_lend]  WITH CHECK ADD  CONSTRAINT [FK_tb] FOREIGN KEY([bid])
REFERENCES [dbo].[t_book] ([id])
GO
ALTER TABLE [dbo].[t_lend] CHECK CONSTRAINT [FK_tb]
GO
ALTER TABLE [dbo].[t_lend]  WITH CHECK ADD  CONSTRAINT [FK_tu] FOREIGN KEY([uid])
REFERENCES [dbo].[t_user] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[t_lend] CHECK CONSTRAINT [FK_tu]
GO
ALTER TABLE [dbo].[t_user]  WITH CHECK ADD  CONSTRAINT [FK_t_user_t_admin] FOREIGN KEY([uadmin])
REFERENCES [dbo].[t_admin] ([id])
GO
ALTER TABLE [dbo].[t_user] CHECK CONSTRAINT [FK_t_user_t_admin]
GO
/****** Object:  StoredProcedure [dbo].[dbj]    Script Date: 2024/6/3 12:38:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbj]
    @bookId VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRANSACTION

    -- 删除 t_lend 表中关联的记录
    DECLARE @lendId INT
    DECLARE lend_cursor CURSOR FOR
        SELECT bid FROM t_lend WHERE bid = @bookId
    OPEN lend_cursor
    FETCH NEXT FROM lend_cursor INTO @lendId
    WHILE @@FETCH_STATUS = 0
    BEGIN
        DELETE FROM t_lend WHERE bid = @lendId
        FETCH NEXT FROM lend_cursor INTO @lendId
    END
    CLOSE lend_cursor
    DEALLOCATE lend_cursor

    -- 检查 t_lend 表是否删除成功
    IF @@ROWCOUNT > 0
    BEGIN
        -- 删除 t_book 表中的记录
        DELETE FROM t_book WHERE id = @bookId

        -- 检查 t_book 表是否删除成功
        IF @@ROWCOUNT > 0
        BEGIN
            COMMIT TRANSACTION -- 提交事务
            PRINT 'Delete operation successful'
        END
        ELSE
        BEGIN
            ROLLBACK TRANSACTION -- 回滚事务
            PRINT 'Delete operation failed: Failed to delete from t_book'
        END
    END
    ELSE
    BEGIN
        ROLLBACK TRANSACTION -- 回滚事务
        PRINT 'Delete operation failed: Failed to delete from t_lend'
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbl]    Script Date: 2024/6/3 12:38:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbl]
    @bookId VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRANSACTION

    -- 先删除 t_lend 表中关联的记录
    DELETE FROM t_lend WHERE bid = @bookId
    
    -- 检查 t_lend 表是否删除成功
    IF @@ROWCOUNT > 0
    BEGIN
        -- 删除 t_book 表中的记录
        DELETE FROM t_book WHERE id = @bookId

        -- 检查 t_book 表是否删除成功
        IF @@ROWCOUNT > 0
        BEGIN
            COMMIT TRANSACTION -- 提交事务
            PRINT 'Delete operation successful'
        END
        ELSE
        BEGIN
            ROLLBACK TRANSACTION -- 回滚事务
            PRINT 'Delete operation failed: Failed to delete from t_book'
        END
    END
    ELSE
    BEGIN
        ROLLBACK TRANSACTION -- 回滚事务
        PRINT 'Delete operation failed: Failed to delete from t_lend'
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dby]    Script Date: 2024/6/3 12:38:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dby]
@bookId VARCHAR(50)
AS
BEGIN
SET NOCOUNT ON;


BEGIN TRANSACTION

-- 先删除 t_lend 表中关联的记录
DELETE FROM t_lend WHERE bid in (SELECT id FROM t_book WHERE id = @bookId)

-- 检查 t_lend 表是否删除成功
IF @@ROWCOUNT > 0
BEGIN
    -- 删除 t_book 表中的记录
    DELETE FROM t_book WHERE id = @bookId

    -- 检查 t_book 表是否删除成功
    IF @@ROWCOUNT > 0
    BEGIN
        COMMIT TRANSACTION -- 提交事务
        PRINT 'Delete operation successful'
    END
    ELSE
    BEGIN
        ROLLBACK TRANSACTION -- 回滚事务
        PRINT 'Delete operation failed: Failed to delete from t_book'
    END
END
ELSE
BEGIN
    ROLLBACK TRANSACTION -- 回滚事务
    PRINT 'Delete operation failed: Failed to delete from t_lend'
END
END
GO
/****** Object:  StoredProcedure [dbo].[dr]    Script Date: 2024/6/3 12:38:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dr]
    @bbid VARCHAR(50)   
AS
BEGIN
    SET NOCOUNT ON;

   BEGIN TRANSACTION

-- 先删除 t_lend 表中关联的记录
DELETE FROM t_lend WHERE bid =@bbid

-- 检查 t_lend 表是否删除成功
IF @@ROWCOUNT > 0
BEGIN
    -- 删除 t_book 表中的记录
    DELETE FROM t_book WHERE id= @bbid

    -- 检查 t_book 表是否删除成功
    IF @@ROWCOUNT > 0
    BEGIN
        COMMIT TRANSACTION -- 提交事务
        PRINT 'Delete operation successful'
    END
    ELSE
    BEGIN
        ROLLBACK TRANSACTION -- 回滚事务
        PRINT 'Delete operation failed: Failed to delete from t_book'
    END
END
ELSE
BEGIN
    ROLLBACK TRANSACTION -- 回滚事务
    PRINT 'Delete operation failed: Failed to delete from t_lend'
END

END
GO
/****** Object:  StoredProcedure [dbo].[gx]    Script Date: 2024/6/3 12:38:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[gx]
   @oldid varchar(50),
    @newid varchar(50),
    @name VARCHAR(50),
	@author VARCHAR(50),
    @press VARCHAR(50),
    @number INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE t_book
    SET  
	    id=@newid,
	    name = @name, 
	    author=@author,
        press = @press,
        number = @number
    WHERE id = @oldid;
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[26] 2[17] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1[50] 4[25] 3) )"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[40] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "t_user"
            Begin Extent = 
               Top = 12
               Left = 76
               Bottom = 326
               Right = 298
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t_lend"
            Begin Extent = 
               Top = 12
               Left = 374
               Bottom = 254
               Right = 596
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t_book"
            Begin Extent = 
               Top = 12
               Left = 672
               Bottom = 254
               Right = 894
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 750
         Width = 750
         Width = 750
         Width = 750
         Width = 750
         Width = 750
         Width = 750
         Width = 750
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vjy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vjy'
GO
