CREATE DATABASE ps15975_LeThanhTuan_btxuong
GO
USE [ps15975_LeThanhTuan_btxuong]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accounts](
	[username] [varchar](255) NOT NULL,
	[activated] [bit] NOT NULL,
	[admin] [bit] NOT NULL,
	[email] [varchar](255) NULL,
	[fullname] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[photo] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categories](
	[id] [varchar](255) NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetails](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[orderid] [bigint] NULL,
	[productid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orders](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[address] [varchar](255) NULL,
	[createdate] [date] NULL,
	[username] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[products]    Script Date: 6/14/2021 1:28:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[available] [bit] NULL,
	[createdate] [date] NULL,
	[image] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[price] [float] NULL,
	[categoryid] [varchar](255) NULL,
	[describe] [nvarchar](4000) NULL,
	[loaihang] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [photo]) VALUES (N'tuan', 1, 0, N'tuan@gmail.com', N'tuan', N'123', N'tuan.jpg')

INSERT [dbo].[categories] ([id], [name]) VALUES (N'1', N'Quan')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'2', N'Áo')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'3', N'Áo khoác')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'4', N'Giày')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'5', N'Túi xách')
SET IDENTITY_INSERT [dbo].[orderdetails] ON 

INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (1, 25000, 2, 4, 1)
SET IDENTITY_INSERT [dbo].[orderdetails] OFF
SET IDENTITY_INSERT [dbo].[orders] ON 


INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (4, N'123', CAST(N'2021-06-11' AS Date), N'tuan')

SET IDENTITY_INSERT [dbo].[orders] OFF
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (1, 1, CAST(N'2000-01-01' AS Date), N'1.jpg', N'Cùng chung tay giúp đỡ cô giáo cấp 1 từ bỏ nghề bởi di chứng sốt bại liệt', 25000, N'2',N'Cô Đặng Thị Tâm sinh năm 1950, từng là giáo viên dạy cấp 1. Giọng người Hà Nội dịu dàng, trầm ấm đã từng đọc biết bao bài văn, dạy biết bao điều tốt đẹp cho thế hệ học trò. Cô Tâm chẳng ngờ rằng, sẽ có ngày mình lại lâm vào tình cảnh trớ trêu khi đi khám ở bệnh viện.

Cô Tâm từng bị sốt bại liệt khi còn nhỏ khiến hai chân cô đi lại bất tiện. Sau này, cô cũng vì nó mà ngừng sự nghiệp giảng dạy. Nỗi nhớ nghề khiến cô Tâm luôn đau đáu. Khi cô đi bệnh viện khám khối u ở ngực. Chân đi chập chững, ngực đau nhói nhưng không đau đớn bằng việc cô bị người khác chế giễu khi tập tễnh từng bước xếp hàng chờ khám.Cũng từ đó, cô Tâm bước vào mái ấm Sài Gòn Bao Dung sống những ngày tháng hạnh phúc nhất của đời mình.Cô Tâm không nghĩ rằng cuối đời mình có thể sống được những ngày tháng tươi đẹp như vậy. Nơi này, cô có bạn bè tri kỷ cùng đối thơ, cùng đố nhau về hằng đẳng thức đáng nhớ. Cô từ một người tứ cố vô thân, đã có thêm những anh hai, chị hai, chị ba… cùng ăn, cùng nghỉ, cùng đi dạo mát… Niềm hạnh phúc to lớn ấy đã khiến cô phải thốt lên xúc động rằng: “Tôi nguyện ở đây cho tới chết!”',N'❤️ Từng ước mơ và ấp ủ nhiều hoài bão, cô Tâm rời khỏi bục giảng bởi di chứng của sốt bại liệt. Cô Tâm rất cần sự giúp đỡ kinh phí khám chữa bệnh, thuốc men')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (2, 1, CAST(N'2000-01-01' AS Date), N'2.jpg', N'Gây quỹ Tết đoàn viên hỗ trợ chi phí phẫu thuật cho 5 em nhỏ mắc bệnh tim bẩm sinh', 10000, N'2',N'Tiếp nối hành trình mang đến cơ hội phẫu thuật tim miễn phí cho trẻ em nghèo trên khắp Việt Nam trong năm 2023, Nhịp Tim Việt Nam triển khai chiến dịch gây quỹ Tết đoàn viên nhằm hỗ trợ chi phí phẫu thuật tim bẩm sinh cho các em nhỏ có hoàn cảnh khó khăn trong dịp đầu năm mới. 

Nhịp Tim Việt Nam là chương trình hỗ trợ chi phí phẫu thuật tim cho trẻ em nghèo dưới 18 tuổi ở Việt Nam. Ước tính cứ 100 trẻ em sinh ra mỗi năm, có 1 em mắc bệnh tim bẩm sinh; theo thống kê tại Việt Nam hiện có hàng ngàn trẻ em đang chờ để được phẫu thuật tim. Với những gia đình có hoàn cảnh nghèo, khó khăn và nhất là từ vùng sâu vùng xa, việc chăm sóc cho một em nhỏ mắc bệnh tim là một gánh nặng kinh tế to lớn bởi hàng loạt những chi phí thuốc men, khám sức khỏe định kỳ và nhập viện, chưa kể đến chi phí phẫu thuật tim khổng lồ.',N'❤️ Cùng Nhịp Tim Việt Nam gây quỹ hỗ trợ chi phí phẫu thuật tim bẩm sinh để trẻ em nghèo có một cái Tết trọn vẹn đoàn viên hơn')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (3, 1, CAST(N'2000-01-01' AS Date), N'3.jpg', N'Cùng giúp cụ Tính vượt qua nỗi đau bệnh tật để có thể sống an yên sau những tháng năm vất vả', 60000, N'2',N'Không thể nhớ nổi trước kia mình từng làm gì, từng sống như thế nào, nhưng khi cơn bạo bệnh ập đến, cụ Vũ Thị Tính (84 tuổi) vẫn luôn miệng gọi “Điệp ơi! Điệp ơi!...” trong sự mơ hồ cùng đôi mắt đã đờ đẫn vì bệnh tật. Có lẽ đó là cái tên duy nhất và cũng là người duy nhất mà cụ để trong tâm trí. 

Mỗi lần cụ Tính nghe thông báo cần đóng tạm ứng viện phí là cụ lại đòi về. Những khi tỉnh táo, cụ hay tâm sự rằng sợ bản thân mình trở thành gánh nặng của mọi người. Nên cụ cứ bảo rằng lo không nổi cho cụ, thì cứ bỏ cụ ngoài ngã tư, ngã bảy gì cũng được.Với tình trạng bệnh, cụ Tính không thể nghe hiểu bình thường được như bao cụ khác. Đến việc tắm rửa, ăn uống cụ cũng không thể tự làm được mà phải nhờ sự giúp đỡ của các cụ khác. 

Nhận được sự săn sóc tận tình của những người bạn già, cụ Tính cũng chịu khó ăn uống hơn. Tuy nhiên bệnh xuất huyết trực tràng của cụ không thể điều trị dứt điểm mà chỉ có thể giúp lui bệnh. Vì vậy cụ Tính vẫn cần phải điều trị theo chỉ định của bác sĩ và đi khám định kỳ. ',N'❤️ “Điệp ơi! Điệp ơi!!!!...” cụ Tính vẫn luôn miệng gọi tên đứa con gái thân yêu của mình trong vô vọng, khi cơn bạo bệnh ập đến, nhưng đáp lại cụ chỉ là những tiếng chuông không hồi đáp')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (4, 1, CAST(N'2000-01-01' AS Date), N'4.jpg', N'Chung tay quyên góp kinh phí khám chữa bệnh để gìn giữ trái tim cụ Nhung - linh hồn của bếp ăn Quán trọ Trăng Khuyết', 78000, N'2',N'Trước cổng quán trọ Trăng Khuyết quận 12, có một người phụ nữ đã ngoài 70 đang quét vội những mảnh rác còn vất vưởng ngoài sân để còn chuẩn bị bữa trưa cho các cụ già nơi đây. Thấy cụ cặm cụi vo gạo, nhặt rau, đun nước nấu cơm cho các cụ, thật không khỏi thương cảm cho những mảnh đời neo đơn nơi này! 

Chạnh lòng phận neo đơn…Quán trọ như là điểm tựa thứ hai của cuộc đời cụ sau khi ba mẹ mất. Căn bếp của cụ Nhung cũng chính là sợi dây vô hình kết nối các cụ già ở quán trọ với nhau. Những bữa cơm ngon đều do một tay cụ đảm nhận. Mọi người ăn xong cụ cũng chính là người dọn dẹp và rửa chén. Mỗi ngày của cụ đều trôi qua một cách vui vẻ bằng sự nhẫn nại, quan tâm và chăm sóc những người già ốm yếu hơn mình. Dẫu không có con cháu, những người bạn già neo đơn ở đây chính là niềm an ủi cuối đời của cụ Nhung

Đáng lẽ ở cái tuổi 74, cụ Nguyễn Thị Nhung phải được quây quần, được sum vầy bên con cháu người thân, thì cụ lại phải sống lủi thủi, một mình ở đây. Đằng sau đôi bàn tay đã hằn đầy vết chai sạn này là câu chuyện về cuộc đời cụ.',N'❤️ Đằng sau đôi bàn tay đầy chai sạn ấy là một cuộc đời đầy cụ độc của cụ Nhung. Hãy cùng chung tay giúp cụ Nhung có kinh phí khám chữa bệnh và thuốc men.')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (5, 1, CAST(N'2000-01-01' AS Date), N'5.jpg', N'Góp bữa ăn sáng xây dựng kỹ năng “Vào Đời” cho 500 trẻ thanh thiếu niên mồ côi, khó khăn', 86000, N'1',N'Một đứa trẻ từ lúc cất tiếng khóc chào đời cho đến khi biết bò, biết chạy, luôn nhận được yêu thương, bảo bọc của tất cả mọi người. Từ lúc bập bẹ tiếng nói đầu đời đến khi thuộc lòng bảng cửu chương, cũng không thiếu bàn tay dìu dắt, chở che của cha mẹ và người thân.Tuy nhiên, giai đoạn quan trọng để quyết định đứa trẻ được nên người lại dường như không được nhiều sự quan tâm. Lứa tuổi vị thành niên chẳng khác gì cái cây sau thời gian chăm sóc, tưới nước, bón phân, và đợi tới ngày đơm hoa kết trái thì lại chông chênh trước ngưỡng cửa vào đời. Đặc biệt, nhiều trẻ vị thành niên ở mái ấm, đường phố và các khu vực khó khăn.

Có rất nhiều kỹ năng sống cần được rèn luyện, trau dồi thông qua quá trình trẻ học tập, quan sát, tiếp xúc với mọi người và với môi trường sống xung quanh. Việc thiếu hụt những kỹ năng khiến các em khó hòa nhập với cuộc sống tự lập, dễ dàng bị sa ngã, tiêm nhiễm những thói hư tật xấu.',N'❤️ Cùng chung tay hỗ trợ chi phí tổ chức các buổi học tập, tham quan, dã ngoại dạy kỹ năng sống cho 500 trẻ thanh thiếu niên mồ côi, khó khăn tại mái ấm, đường phố, khu vực khó khăn để các em có thêm kinh nghiệm sống trước khi bước vào đời')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (6, 1, CAST(N'2000-01-01' AS Date), N'6.jpg', N'Cuộc sống ngặt nghèo của người thầy giáo', 40000, N'1',N'Thầy Lưu Mạc Phong, sinh 1962, dọn về quán trọ Trăng Khuyết sau trận bệnh nặng, đột quỵ và viêm phổi. Trong lúc làm bảo vệ ở một cửa hàng thời trang, thầy Phong đột ngột ngưng thở, ngã khuỵu trước cửa hàng. Thầy được đưa vào bệnh viện 115 cấp cứu. Suốt 2 tuần nằm viện, tiền lương, tiền dành dụm bao năm qua của thầy đã chi trả cho đợt chữa trị đó. 

Sức khỏe không đủ, thầy nghỉ việc bảo vệ, nhà trọ cũng bị công ty lấy lại, không nhà, không tiền, không kế sinh nhai. Cuộc sống ngặt nghèo bủa vây. Trước đây, thầy từng lập gia đình nhưng hôn nhân đổ vỡ, con trai sống cùng mẹ. Một mình thầy lang bạt khắp nơi.hẳng ai ngờ rằng người đàn ông gầy gò, xanh xao ấy từng là thầy giáo cấp 1. Đôi bàn tay gân guốc ấy từng ân cần dạy biết bao thế hệ học trò. Nét chữ mạnh mẽ, dứt khoát như nết người kiên cường, tận tụy của thầy Phong. Trong ánh mắt của thấy, vẫn còn ánh lên niềm vui và niềm tự hào khi nhắc về những tháng ngày đứng trên bục giảng.

Đáng tiếc rằng thầy lại không thể nắn nót cuộc đời mình tươi đẹp hơn.',N'❤️ Từng là thầy giáo rèn chữ cho biết bao thế hệ, nhưng thầy Phong lại chẳng thể nắn nót cuộc đời mình trở nên đẹp đẽ hơn. Cùng chung tay hỗ trợ kinh phí khám chữa bệnh cho thầy Phong.')

INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (7, 1, CAST(N'2000-01-01' AS Date), N'7.jpg', N'Chung tay hỗ trợ chi phí giúp ông Chương hồi phục sức khỏe sau đại dịch covid-19', 77000, N'1',N'Sau 1 năm, khi tất cả mọi người đã dần chấp nhận sống chung với đại dịch Covid - 19. Dù vậy nỗi đau mà những người còn ở lại thì vẫn chưa thể nguôi ngoai. Ông Lê Hùng Chương sinh 1942 là một trong những hoàn cảnh đáng thương đã mất tất cả sau đại dịch.Chỉ trong thời gian ngắn ngủi, ông mất đi vợ con của mình. Tuy ông may mắn hơn, nhưng sức khỏe cùng kiệt khiến ông không thể nào tiếp tục công việc bảo vệ tại cửa hàng. Không còn người thân, ông sống cô độc tại phòng trọ. Khốn khổ khi tuổi già, thất nghiệp, ông Chương không tiền đóng trọ, không biết xoay sở thế nào để có được bữa ăn qua ngày. Gương mặt hiền hậu ấy càng hằn sâu những nỗi lo toan, vất vả cho những ngày tháng sau này. Thế nhưng, trong cơ thể nhỏ bé đầy nghị lực ấy, là một lá phổi đã hư tổn, và một trái tim đang chống chọi với bệnh tật. Trăng Khuyết rất đồng cảm trước những mất mát của ông, càng lo lắng cho sức khỏe của ông Chương ở thời điểm hiện tại. Trăng Khuyết mong rằng sẽ có thêm kinh phí để có thể hỗ trợ ông Chương khám chữa bệnh và nâng cao sức khỏe, để ông có thể giúp đỡ những người bạn già kém may mắn hơn mình. Để tiếp thêm hy vọng cho ông, Trăng khuyết kêu gọi số tiền khám chữa bệnh tim là 30.000.000VNĐ thông qua Trái Tim MoMo. Rất mong các mạnh thường quân, các nhà hảo tâm sẽ đồng hành cùng chương trình quyên góp lần này của MoMo và Trăng Khuyết hỗ trợ cho những số phận đơn chiếc. Dù đóng góp nào cũng đều đáng quý, cùng là tình yêu thương đong đầy của của cô chú, anh chị dành cho các cụ già neo đơn.

Cuộc sống muôn màu muôn vẻ, bên cạnh những người hạnh phúc thì không thiếu những người bi thương. Chính vì lý do đó mà cuộc sống cần phải có sự sẻ chia, tương trợ lẫn nhau. ',N'❤️ Cùng chung tay hỗ trợ chi phí chăm sóc sức khỏe cho ông Chương, để những ngày tháng cuối đời ông được sống yên bình tại mái ấm')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (8, 1, CAST(N'2000-01-01' AS Date), N'8.jpg', N'Phát động chiến dịch “Áo Ấm Cho Em” - “Mùa đông không lạnh cho trẻ em nghèo” tỉnh Quảng Trị (Đợt 1)', 61000, N'1',N'Một chiếc áo khoác, hay một chiếc khăn choàng, nếu bạn không dùng nữa, đừng chỉ cất chúng nơi góc tủ chật chội. Hãy đóng góp chúng vào Quỹ từ thiện Hoa Chia Sẻ để mang yêu thương ấm áp gửi đến trẻ em nghèo, khó khăn..”Nếu ai đã tận mắt chứng kiến hình ảnh những em nhỏ vùng cao, vùng khó khăn, miền núi.. mang những lớp quần áo mỏng manh, không có khăn ấm, không có tất mang phải vượt qua cái lạnh khắc nghiệt của thời tiết để tới trường hàng ngày, chắc hẳn sẽ không thể nén được cảm giác xúc động, thương cảm vô vàn. Nhiều em nhỏ không có nổi một bộ quần áo tươm tất hay một đôi giày, đôi dép lành lặn. Khi mùa đông đến, các em lại phải oằn mình, run cầm cập đương đầu với cái rét đậm, rét hại mà cả những người trưởng thành như chúng ta cũng khó mà chịu đựng được. Trong tương lai, Quỹ Từ Thiện Hoa Chia Sẻ sẽ tiếp tục có những kế hoạch, chiến dịch đi tới các tỉnh, các địa phương khó khăn vùng cao, tiếp thêm sức mạnh cho các em không chỉ về mặt vật chất mà còn là cả về mặt tinh thần. Lợi ích của trẻ em luôn là mục tiêu và mục đích mà Quỹ Hoa Chia Sẻ hướng đến, với mong muốn giúp đỡ cho các em có một cuộc sống tốt tươi đẹp hơn. Quỹ hy vọng sẽ nhận được sự ủng hộ nhiệt tình, đông đảo từ tấm lòng vàng của các mạnh thường quân. Sự ủng hộ, giúp đỡ của mỗi cá nhân đều là đóng vai trò quan trọng trong công cuộc giúp các em thiếu nhi khó khăn có một mùa đông thật ấm áp, góp phần tạo niềm tin, tạo động lực để các em nghèo cảm nhận được sự yêu thương, để ngày càng phấn đấu vươn lên trong học tập và cuộc sống! ',N'ao')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (9, 1, CAST(N'2000-01-01' AS Date), N'9.jpg', N'Chung tay mang đến phép màu y tế cho em Lê Nhật Gia Hưng cùng Quỹ Nâng Bước Tuổi Thơ', 80000, N'3',N'Ngày Hưng còn ẵm ngửa, trong một lần sơ sẩy em đã bị ngã từ trên cao. Cú ngã gây tổn thương đến thần kinh làm cho đôi bàn tay của em bị co quắp, mất khả năng co duỗi và cầm nắm.

Không đủ khả năng để chăm sóc cả con gái tâm thần lẫn cháu nhỏ, bà ngoại quyết định gửi em Hưng đến nhà tình thương, mong rằng cháu mình sẽ được chăm sóc tốt hơn. Ở nhà tình thương, em được các mẹ trong mái ấm nuôi dưỡng, cho ăn học đầy đủ.Hiện nay Hưng đã 16 tuổi, tuy khiếm khuyết của đôi bàn tay gây trở ngại vô cùng lớn trong cuộc sống, nhưng em vẫn cố gắng phụ các mẹ chăm sóc các em trong nhà. Vì không thể cầm nắm như người bình thường, nên em dùng ngón tay để kẹp miếng rửa chén phụ việc nhà và kẹp bút để viết bài.',N'❤️ Góp một bàn tay mang đến phép màu y tế cho em Lê Nhật Gia Hưng được chữa trị phục hồi chức năng ngón cái phải.')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (10, 1, CAST(N'2000-01-01' AS Date), N'10.jpg', N'Góp Heo Vàng giúp những cô gái mở tiệm giặt là người Điếc, giúp người Điếc/Khiếm thính có việc làm ổn định', 74000, N'3',N'Cộng đồng người Điếc/Khiếm thính Việt Nam với hơn 2.5 triệu người, sử dụng ngôn ngữ khác biệt và gặp khó khăn trong giao tiếp dẫn đến thiếu tiếp cận thông tin khiến họ thụt lùi so với xã hội. Rất nhiều người không được sự tin tưởng từ gia đình để tạo lập một cuộc sống của riêng họ. Họ bị kỳ thị, giới hạn khả năng và tước đi quyền quyết định trong cuộc sống. Theo một nghiên cứu về tình trạng việc làm của người Điếc tại Hà Nội năm 2019, 85% số người được phỏng vấn có mức lương thấp hơn lương tối thiểu vùng của Hà Nội, hơn 90% gặp vấn đề khó khăn trong tiếng Việt… Người Điếc gặp khó khăn trong hầu hết các lĩnh vực của cuộc sống, đặc biệt là vấn đề hoà nhập trong môi trường làm việc để có thể cải thiện mức sống.',N'❤️ Chung tay cùng khởi sự cho mô hình tạo việc làm bền vững cho những người Điếc/khiếm thính trong dự án “Tiệm giặt là của người Điếc” tại khu vực phía Nam.')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (11, NULL, CAST(N'2000-01-01' AS Date), N'11.jpg', N'Gây quỹ trao 50 phần quà Tết cho trẻ em và gia đình có hoàn cảnh khó khăn tại Tp.HCM', 62000, N'3',N'Tết là khoảng thời gian để gia đình sum vầy, là thời gian gợi lên sự sung túc, đầm ấm, yên vui. Tuy nhiên, mặc dù không khí Tết đang tràn về khắp các nẻo đường nhưng vì hoàn cảnh khó khăn, có những đứa trẻ chưa bao giờ được đón một mùa Tết trọn vẹn và đầy đủ như bao bạn bè cùng trang lứa. Với các em, việc có một cái Tết đủ đầy như bao người khác là một điều gì đó rất xa vời.

Những bạn nhỏ mà MSD United Way Vietnam biết đến và đang hỗ trợ hầu hết là những bạn có hoàn cảnh gia đình rất khó khăn. Trong đó có không ít bạn còn không có được một tấm giấy khai sinh cho mình. Việc không có giấy khai sinh khiến cuộc sống vốn đã khó khăn càng trở nên vất vả hơn: không thể đến trường học, không được tham gia bảo hiểm y tế và được hưởng những quyền lợi cơ bản.',N'❤️ Với truyền thống đoàn kết tốt đẹp của dân tộc và tinh thần “Thương người như thể thương thân”, chiến dịch mong muốn tiếp sức, hỗ trợ kịp thời cho trẻ em nghèo, trẻ em khó khăn tại tỉnh Quảng Trị có áo ấm để mặc, giúp các em vượt qua giá rét của mùa đông.')
INSERT [dbo].[products] ([id], [available], [createdate], [image], [name], [price], [categoryid],[describe],[loaihang]) VALUES (12, NULL, CAST(N'2000-01-01' AS Date), N'12.jpg', N'Chung tay hỗ trợ chương trình Họp mặt cho sinh viên có hoàn cảnh khó khăn đón Tết xa nhà', 51000, N'3',N'Em Trương Tiến Dũng, sinh viên năm thứ 2 trường ĐH Khoa học tự nhiên – ĐHQG TP.HCM chọn cách đón Tết tại TP.HCM. Quê Tiến Dũng ở thị trấn Liên Hương, huyện Tuy Phong, tỉnh Bình Thuận. Em mồ côi ba mẹ từ nhỏ và được cô Nguyễn Thị Tân nhận nuôi. Cô thuộc hộ cận nghèo của địa phương, dù cuộc sống còn nhiều khó khăn nhưng vì thương cho hoàn cảnh em Tiến Dũng, nên cô đã nhận nuôi dưỡng và xem Dũng như con ruột của mình. Hai mẹ con em không có nhà, phải sống nhờ nhà cậu. Mẹ đã 69 tuổi nên sức khoẻ cũng yếu dần. Hằng ngày, mẹ đi bán mít ở chợ, hôm bán được hôm không nên thu nhập cũng bấp bênh, chỉ khoảng 60.000 – 70.000 đồng/ngày. Vì thế nên bữa cơm hàng ngày cũng bữa đói bữa no.  Ý thức được hoàn cảnh khó khăn của gia đình, ngay từ khi học cấp 3, em đã phụ mẹ dọn dẹp nhà cửa, nấu cơm và đi làm thêm. Hiện tại, dù đang phải đi học cả ngày nhưng em vẫn tranh thủ thời gian nghỉ ngơi từ 17h – 22h, để kiếm thêm thu nhập tự trang trải đóng học phí và chi phí sinh hoạt. Dành thời gian đi làm thêm nhưng em vẫn không quên nỗ lực học tập vì em biết con đường học vấn mới thay đổi cuộc sống của em và mẹ được. Năm học 2021 – 2022, em đạt học lực loại giỏi với điểm trung bình 8.07.

Tết đến, em cũng muốn được sum vầy, đoàn tụ bên mẹ nhưng nghĩ đến học phí, sinh hoạt phí năm học tiếp theo… em đã quyết định ở lại TP.HCM để đi làm kiếm thêm thu nhập để phần nào giúp mẹ vơi bớt nỗi lo toan về kinh tế.',N'❤️ Chương trình dự kiến hỗ trợ cho hơn 2.000 học sinh, sinh viên có hoàn cảnh khó khăn ở lại TP.Hồ Chí Minh đón Tết. Với mỗi học sinh, sinh viên sẽ được chương trình hỗ trợ một phần quà Tết trị giá 1.000.000 VNĐ/người.')
