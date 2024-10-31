-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 24, 2024 at 09:18 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent`) VALUES
(1, 'Thời sự', 'https://vnexpress.net/thoi-su', 0),
(2, 'Chính trị', 'https://vnexpress.net/thoi-su/chinh-tri', 1),
(3, 'Dân sinh', 'https://vnexpress.net/thoi-su/dan-sinh', 1),
(4, 'Thế giới', 'https://vnexpress.net/the-gioi', 0),
(5, 'Tư liệu', 'https://vnexpress.net/the-gioi/tu-lieu', 4);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int NOT NULL,
  `featured` int NOT NULL,
  `views` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  `author` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `excerpt`, `content`, `image`, `category`, `featured`, `views`, `created_at`, `updated_at`, `author`) VALUES
(1, 'Thủ tướng yêu cầu chuyển đổi số với tinh thần \'không ai bị bỏ lại phía sau\'', 'https://vnexpress.net/thu-tuong-yeu-cau-chuyen-doi-so-voi-tinh-than-khong-ai-bi-bo-lai-phia-sau-4768513.html', 'Đánh giá chuyển đổi số vẫn còn hiện tượng cát cứ thông tin, co cụm dữ liệu nên Thủ tướng đề nghị các cơ quan làm việc theo tinh thần \"không để ai bị bỏ lại phía sau\".\r\n\r\nTại phiên họp lần thứ 9 của Ủy ban Chuyển đổi số quốc gia và tổ công tác đề án 06 chiều 10/7, Thủ tướng Phạm Minh Chính phê bình một số bộ ngành, địa phương chưa hoàn thành tiến độ chuyển đổi số, chưa xây dựng kế hoạch hoạt động của Ban Chỉ đạo chuyển đổi số. Việc phát triển hạ tầng số, nền tảng, dữ liệu số chưa khắc phục được tình trạng manh mún, cát cứ thông tin, chia cắt, co cụm dữ liệu. Nhiều hạ tầng của các cơ quan đầu tư thiếu đồng bộ, chưa có khả năng chia sẻ thông tin.\r\n\r\n\"Phải lấy người dân, doanh nghiệp là trung tâm và mục tiêu. Các cơ quan không chỉ lắng nghe phản ánh mà còn phải nói thật, làm thật, để người dân, doanh nghiệp được thụ hưởng những thành quả do chuyển đổi số mang lại theo tinh thần không để ai bị bỏ lại phía sau\", lãnh đạo Chính phủ nói.\r\n\r\nThủ tướng đặt mục tiêu đến năm 2025, 100% dịch vụ công trực tuyến được thực hiện toàn trình (cung cấp thông tin, thực hiện và giải quyết thủ tục hành chính đều trên môi trường mạng); 50% dân số trưởng thành dùng dịch vụ công trực tuyến; 100% hồ sơ giải quyết thủ tục hành chính được gắn định danh cá nhân; 90% người dân, doanh nghiệp hài lòng về giải quyết thủ tục hành chính; 50% thủ tục, giấy tờ của người dân liên quan đến dữ liệu dân cư được cắt giảm.\r\n\r\n<img src=\"https://i1-vnexpress.vnecdn.net/2024/07/10/tg-1720616266-1720616287-7696-1720616321.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=5vEW4L4vb63gtMCjFmWZuA\">\r\n\r\nTheo báo cáo, công nghiệp công nghệ thông tin (ICT) ở Việt Nam thời gian qua có bước phát triển khá. Báo cáo của Bộ Thông tin và Truyền thông cho thấy doanh thu 6 tháng ước đạt 1,9 triệu tỷ đồng, tăng 26% so với cùng kỳ.\r\n\r\nSản phẩm số của doanh nghiệp Việt Nam tiếp tục phát triển và đã xuất khẩu đi khắp thế giới. Tổng cục Hải quan cho biết xuất khẩu sản phẩm số 6 tháng ước đạt 64,8 tỷ USD, tăng 23%, nhập khẩu đạt 56,1 tỷ USD, tăng 27,2%. Nhiều tập đoàn công nghệ hàng đầu thế giới đã cam kết đầu tư và mở rộng đầu tư vào Việt Nam, nhất là trong lĩnh vực mới như điện tử, chip bán dẫn, nghiên cứu phát triển và trí tuệ nhân tạo.\r\n\r\nThương mại điện tử, thanh toán không dùng tiền mặt được tích cực triển khai. Giao dịch thanh toán không dùng tiền mặt tăng 58,2% về số lượng và 36,7% về giá trị. Ngành y tế đang tích cực triển khai hồ sơ bệnh án điện tử; hơn một triệu người thuộc diện chính sách được nhận trợ cấp an sinh xã hội và 1,8 triệu người nhận lương hưu, trợ cấp bảo hiểm xã hội qua tài khoản.\r\n\r\nViệc mở rộng cơ sở thu, quản lý thuế, hóa đơn điện tử được triển khai quyết liệt, có sự chuyển biến tích cực. Kết quả thu thuế từ hoạt động thương mại điện tử tăng theo từng năm. Năm 2022 là 83.000 tỷ đồng; năm 2023 là 97.000 tỷ đồng; và 6 tháng đầu năm 2024 là trên 50.000 tỷ đồng.\r\n\r\nCơ sở dữ liệu quốc gia về dân cư 6 tháng qua cũng kết nối, chia sẻ, xác thực, làm sạch dữ liệu với 85 bộ ngành, địa phương, tập đoàn, tổng công ty Nhà nước; 86,3 triệu công dân được cấp thẻ căn cước gắn chip; hơn 75,7 triệu tài khoản VNeID cũng được cấp. Từ 1/7, người dân có thể sử dụng duy nhất VNeID để thực hiện dịch vụ công trực tuyến.\r\n\r\nHiện có 16,4 triệu tài khoản và 51,6 triệu hồ sơ đã được nộp trên Cổng dịch vụ công quốc gia. Riêng 25 dịch vụ công thiết yếu của đề án 06 hàng tiết kiệm hơn 3.500 tỷ đồng mỗi năm.', 'tg-1720616266-1720616287-7696-1720616321', 1, 0, 100, '2024-10-24 08:04:39', '2024-10-24 08:04:39', 1),
(2, 'Thủ tướng: Hà Nội phải tiên phong trong chuyển đổi số', 'https://vnexpress.net/thu-tuong-ha-noi-phai-tien-phong-trong-chuyen-doi-so-4763849.html', 'Với vị thế Thủ đô đặc biệt quan trọng, Hà Nội phải tiên phong phát triển kinh tế số, xã hội số, công dân số, theo Thủ tướng Phạm Minh Chính.\r\n\r\nSáng 28/6, UBND TP Hà Nội tổ chức hội nghị sơ kết 6 tháng đầu năm thực hiện Đề án 06 của Chính phủ; đánh giá kết quả thí điểm lập hồ sơ sức khỏe điện tử, cấp phiếu lý lịch tư pháp trên VNeID và công bố vận hành các nền tảng, ứng dụng của Đề án 06.\r\n\r\nThủ tướng Phạm Minh Chính khẳng định chuyển đổi số là yêu cầu khách quan, lựa chọn chiến lược, ưu tiên hàng đầu trong phát triển kinh tế xã hội thời kỳ cách mạng công nghiệp lần thứ 4. Do vậy, các bộ ngành, địa phương cần thúc đẩy tăng trưởng nhanh và bền vững dựa trên nền tảng số, đổi mới sáng tạo.\r\n\r\nMột trong những điểm sáng của chuyển đổi số ở Việt Nam hai năm qua là Đề án 06 về phát triển ứng dụng dữ liệu dân cư, định danh và xác thực điện tử phục vụ chuyển đổi số quốc gia giai đoạn 2022-2025, ban hành tháng 1/2022. Để đẩy mạnh chuyển đổi số và triển khai có hiệu quả đề án, Thủ tướng yêu cầu các bộ ngành, địa phương \"không nói không, không nói khó, không nói có nhưng không làm\" và quyết tâm \"đã nói là làm, đã làm là có kết quả\", \"chỉ bàn làm, không bàn lùi\".\r\n\r\nRiêng Hà Nội với vai trò, vị thế đặc biệt quan trọng là Thủ đô, trung tâm chính trị - hành chính quốc gia, đầu tàu kinh tế - văn hóa - khoa học - giáo dục của cả nước, Thủ tướng yêu cầu phải đi đầu, tiên phong trong đổi số và phát triển kinh tế số, xã hội số, công dân số, hướng tới xã hội văn minh, hiện đại.\r\n\r\n\"Hai năm rưỡi vừa qua là chặng đường không ngắn nhưng cũng chưa dài đối với nhiệm vụ thực hiện Đề án 06 ở Hà Nội nói riêng và cả nước nói chung. Phía trước còn nhiều công việc và khó khăn, thách thức, nhưng chúng ta không lùi bước\", lãnh đạo Chính phủ nói.\r\n\r\n<img src=\"https://i1-vnexpress.vnecdn.net/2024/06/29/img6116-1719556649481127679384-6651-2744-1719620766.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=cluckVRA1s3vaYHwh114Wg\">\r\n\r\nChủ tịch UBND TP Hà Nội Trần Sỹ Thanh cho biết thành phố đã tiên phong thí điểm nhiều giải pháp mang tính đột phá. Đơn cử như xây dựng hệ thống Hồ sơ sức khỏe điện tử; hỗ trợ 100% phí cung cấp thông tin lý lịch tư pháp trên ứng dụng VNeID; triển khai hóa đơn điện tử khởi tạo từ máy tính tiền và thu thuế khoán; chi trả an sinh xã hội, chỉ trả lương hưu, trợ cấp bảo hiểm xã hội không dùng tiền mặt; thanh toán giá trông giữ xe không dùng tiền mặt.\r\n\r\nTheo Chủ tịch Hà Nội, những giải pháp nêu trên đã tạo bứt phá trong phát triển kinh tế xã hội, nâng tầm giá trị văn hóa của Thủ đô và huy động trí tuệ của người dân cho chuyển đổi số. \"Hà Nội sẽ hành động quyết liệt, đặt lợi ích của nhân dân lên trên hết, theo đúng chỉ đạo của Thủ tướng\", ông nói.\r\n\r\nThượng tướng Lương Tam Quang, Bộ trưởng Công an, đánh giá cao phương pháp triển khai Đề án 06 của Hà Nội. Ông đề nghị thành phố chỉ đạo 11 quận, huyện chưa hoàn thành số hóa dữ liệu hộ tịch nhanh chóng xây dựng lộ trình chi tiết để hoàn thành dứt điểm trong 6 tháng cuối năm. Hà Nội cũng cần đẩy nhanh việc tạo lập, kết nối và chia sẻ dữ liệu.\r\n\r\nTại hội nghị, UBND TP Hà Nội công bố vận hành một số nền tảng, ứng dụng của Đề án 06 trên địa bàn gồm: Công dân Thủ đô số (iHanoi) - kênh kết nối giữa chính quyền với người dân, doanh nghiệp; hồ sơ sức khỏe điện tử trên VneID - tạo nền tảng khám chữa bệnh từ xa; hệ thống phòng họp thông minh, không giấy (i-Cabinet).', 'img6116-1719556649481127679384-6651-2744-1719620766', 2, 0, 1002, '2024-10-24 08:06:53', '2024-10-24 08:06:53', 2),
(3, 'Hà Nội thí điểm gửi xe không tiền mặt', 'https://vnexpress.net/ha-noi-thi-diem-gui-xe-khong-tien-mat-4734700.html', 'Thành phố thí điểm thu phí trông giữ xe không dùng tiền mặt tại 7 điểm, áp dụng hình thức thanh toán qua ứng dụng thu phí không dừng và mã QR.\r\n\r\nTừ ngày 15/4, bảy điểm trông giữ xe tại quận Hoàn Kiếm do Công ty TNHH MTV Khai thác điểm đỗ xe Hà Nội quản lý sẽ thí điểm thanh toán không dùng tiền mặt. Đó là bãi đỗ Trần Quang Khải, điểm trông ôtô tạm thời dưới lòng đường trên các phố Lý Thường Kiệt, Phan Chu Trinh, Lý Thái Tổ (2 vị trí), Nguyễn Thượng Hiền và điểm trông xe máy tạm thời trên hè phố Phủ Doãn.\r\n\r\nTrong ngày đầu thí điểm, một số người dân gặp khó khi thanh toán gửi xe máy bằng mã QR do điện thoại không có Internet hoặc tài khoản ngân hàng. Ông Nguyễn Văn Bộ (Long Biên) tỏ ra bất ngờ khi được nhân viên hướng dẫn thanh toán qua mã QR. Do đang vội mang giấy tờ bổ sung cho người thân nhập viện tại Việt Đức, ông không có thời gian nghe hướng dẫn sử dụng. Ông đành nhờ một người khác quét mã và thanh toán hộ.\r\n\r\nChị Trần Thị Thanh Xuân (quê Ninh Giang, Hải Dương) cũng gặp tình trạng tương tự vì điện thoại có ứng dụng thanh toán nhưng không có kết nối Internet. Chị cho rằng việc áp dụng công nghệ thanh toán bằng mã QR tại các điểm trông giữ xe là cần thiết, nhưng cần đi kèm với các giải pháp hỗ trợ như phát wifi miễn phí và chấp nhận thanh toán bằng tiền mặt, đặc biệt đối với xe máy.\r\n\r\n<img src=\"https://i1-vnexpress.vnecdn.net/2024/04/15/xe-oto-1450-1713194640.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=EI1jGcuNP9pBLoragUHSHg\">\r\n\r\nCông ty Khai thác điểm đỗ xe Hà Nội cho rằng việc áp dụng thu phí không dùng tiền mặt tại các bãi đỗ xe thông minh mang lại nhiều lợi ích, đặc biệt là đối với chủ ôtô. Hầu hết ôtô hiện nay được dán thẻ thu phí tự động không dừng, do đó việc thanh toán tại các bãi đỗ xe thông minh khá tiện lợi. Hệ thống sẽ tự động ghi nhận thông tin và giờ vào, ra điểm gửi xe thông qua thiết bị đọc cố định (bãi xe kín) hoặc thiết bị cầm tay (bãi xe hở). Người dùng có thể thanh toán linh hoạt bằng mã QR thông qua các ứng dụng ngân hàng điện tử hoặc ví điện tử.\r\n\r\nTuy nhiên, với xe máy, việc áp dụng thu phí không dùng tiền mặt gặp khó do không có thẻ thu phí tự động và các điểm trông giữ xe máy thường nằm ở vỉa hè, lòng đường, việc đọc biển số và ghi nhận giờ ra vào chủ yếu được thực hiện bằng thiết bị cầm tay. Hình thức thanh toán cũng tương tự như ôtô, tuy nhiên nhiều người đi xe máy chưa quen với việc quét mã QR để thanh toán hoặc thiết bị di động không kết nối Internet.\r\n\r\nĐiểm trông giữ xe máy không dùng tiền mặt trên phố Phủ Doãn. Ảnh: Võ Hải\r\nĐiểm trông giữ xe máy không dùng tiền mặt trên phố Phủ Doãn. Ảnh: Võ Hải\r\n\r\nÔng Trần Ngọc Kiên, Giám đốc Dự án thu phí tự động điểm trông giữ VETC, cho biết đơn vị sẽ bố trí nhân viên tại các điểm trông giữ để hỗ trợ những trường hợp không sử dụng thanh toán không dùng tiền mặt. Nhân viên sẽ thu tiền mặt và hướng dẫn người dân sử dụng hình thức thanh toán khác.\r\n\r\nBà Trương Kiều Anh, Phó trưởng phòng Phát triển công nghệ giao thông vận tải (Sở Giao thông Vận tải Hà Nội), cho biết Sở sẽ tiếp thu ý kiến phản hồi trong thời gian thí điểm để hoàn thiện giải pháp. Sở đề nghị các đơn vị liên quan hạn chế cấp mới giấy phép sử dụng tạm thời lòng đường, hè phố để trông giữ xe cho các tổ chức, cá nhân chưa áp dụng công nghệ thanh toán không dùng tiền mặt.', 'xe-oto-1450-1713194640', 3, 0, 1001, '2024-10-24 08:09:12', '2024-10-24 08:09:12', 3),
(4, 'Hà Nội thu hàng chục tỷ đồng trông giữ xe mỗi năm', 'https://vnexpress.net/ha-noi-thu-hang-chuc-ty-dong-trong-giu-xe-moi-nam-4482736.html', 'Sở Giao thông Vận tải Hà Nội đang quản lý gần 32.000 m2 các điểm trông giữ xe, thu về 46 tỷ đồng trong năm 2021.\r\n\r\nTại họp báo thường kỳ do UBND TP Hà Nội tổ chức chiều 1/7, Phó giám đốc Sở Giao thông Vận tải Trần Hữu Bảo cho biết theo quy định, Sở được thành phố cấp phép sử dụng lòng đường, vỉa hè để trông giữ xe trên các tuyến đường thành phố quản lý. Mức thu phí theo Nghị quyết 06 của HĐND và toàn bộ số phí thu được nộp vào ngân sách thành phố.\r\n\r\nThành phố không phải bố trí kinh phí từ nguồn ngân sách để tổ chức trông giữ xe. Ngược lại, ngân sách thành phố thu được một khoản phí từ việc trông giữ xe dưới lòng đường, hè phố hàng năm, khác với TP HCM, ông Bảo cho biết.\r\n\r\nĐến nay, tổng diện tích trông giữ xe các đơn vị thành phố đang quản lý là 31.700 m2 trên 134 tuyến phố. Quận, huyện quản lý tổng diện tích trông giữ xe là hơn 91.000 m2. Năm 2021, Sở Giao thông Vận tải Hà Nội đã thu và nộp vào ngân sách 46 tỷ đồng, 6 tháng đầu năm nay là hơn 20 tỷ.\r\n\r\n<img src=\"https://i1-vnexpress.vnecdn.net/2022/07/01/7903b8d7af0a6c54351b-165667251-4305-4171-1656672525.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=NKY4aJWrSb_ZAfYEQoepWA\">\r\n\r\nĐể tránh thất thoát nguồn thu, ông Bảo cho biết Thanh tra Sở hàng năm đều phối hợp Công an thành phố, Sở Tài chính, các quận, huyện xử lý đơn vị trông giữ xe trên địa bàn vi phạm. Các lỗi phổ biến là trông xe không xuất vé, trông sai thời gian, phạm vi...\r\n\r\nTrước đó, Công ty Dịch vụ công ích Thanh niên xung phong, đơn vị tổ chức thu phí đỗ ôtô dưới lòng đường tại TP HCM, báo cáo năm 2021 chỉ thu được 2 tỷ đồng tiền trông giữ trên 20 tuyến đường. Việc này khiến đơn vị phải bù lỗ gần 8 tỷ đồng trả nhân viên, phần mềm.\r\n\r\nĐại diện công ty giải thích nhiều người không chịu đăng ký qua ứng dụng thu phí nên dễ thất thoát. Lòng đường một số tuyến cho ôtô đậu có thu phí như An Dương Vương (quận 5), Lê Hồng Phong (quận 10), Trương Định (quận 3)... bị nhiều cửa hàng kinh doanh, khách sạn, nhà xe chiếm dụng, cản trở việc thu phí.\r\n\r\nNhiều xe đỗ dưới lòng đường nhưng không chịu đóng tiền. Hiện, các bên liên quan tập trung \"phạt nguội\"; triển khai hệ thống cảm biến ghi nhận xe ra vào, bổ sung hình thức thanh toán thuận tiện...', '7903b8d7af0a6c54351b-165667251-4305-4171-1656672525', 4, 0, 1005, '2024-10-24 08:10:56', '2024-10-24 08:10:56', 4),
(5, 'Trình Thủ tướng nghỉ Tết Ất Tỵ từ 26 tháng chạp', 'https://vnexpress.net/trinh-thu-tuong-nghi-tet-at-ty-tu-26-thang-chap-4807144.html', 'Bộ Lao động Thương binh và Xã hội trình Thủ tướng lịch nghỉ Tết Ất Tỵ từ 26 tháng chạp đến hết mùng 5 tháng giêng (25/1-2/2/2025) để kỳ lễ kéo dài 9 ngày.\r\n\r\nSau hơn một tháng lấy ý kiến, 13/16 cơ quan, bộ ngành đã đồng ý với phương án nghỉ Tết 9 ngày do Bộ Lao động Thương binh và Xã hội đề xuất. Nếu được Thủ tướng thông qua, công chức, viên chức, người lao động sẽ được nghỉ từ 26 tháng chạp, gồm 5 ngày nghỉ chính thức và 4 ngày nghỉ cuối tuần của hai tuần liên tiếp.\r\n\r\n<img src=\"https://i1-vnexpress.vnecdn.net/2024/10/22/Lich-Nghi-tet-4300-1726551886-3195-1729595866.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=PEWOlprIJVGUx1GipnHrfA\">\r\n\r\nNgày thống nhất 30/4 và Quốc tế Lao động 1/5 sẽ hoán đổi ngày làm việc để nghỉ liên tiếp 5 ngày, từ thứ tư đến hết chủ nhật, tức 30/4-4/5/2025. Dịp Quốc khánh năm 2025 dự kiến nghỉ 2/9 và một ngày liền kề trước, tức kỳ nghỉ kéo dài bốn ngày từ 30/8 đến hết thứ ba 2/9/2025.\r\n\r\nBa kỳ nghỉ còn lại thực hiện theo quy định của Bộ luật Lao động, Tết Dương lịch nghỉ một ngày thứ tư 1/1/2025; giỗ tổ Hùng Vương (10/3 Âm lịch) vào thứ hai 7/4/2025, kỳ nghỉ kéo dài ba ngày (5-7/4/2025).\r\n\r\nTheo cơ quan soạn thảo, nghỉ lễ kéo dài sẽ giúp người lao động có thời gian tái tạo sức lao động, kích cầu du lịch, thúc đẩy tăng trưởng kinh tế.', 'Lich-Nghi-tet-4300-1726551886-3195-1729595866', 5, 1, 10052, '2024-10-24 08:12:49', '2024-10-24 08:12:49', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'Trần Minh'),
(2, 'Nông Văn Hoàng'),
(3, 'Văn Tuấn'),
(4, 'Kim Ngân'),
(5, 'Bảo Trâm');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
