-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 25, 2024 at 12:18 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asm1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Du lịch'),
(2, 'Ăn uống'),
(3, 'Giải trí'),
(4, 'Thể Thao');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `excerpt`, `content`, `image`) VALUES
(1, 1, 'Hồ Hoàn Kiếm', 'Hồ Hoàn Kiếm (chữ Nôm: 湖還劍 hoặc 還劍湖) còn được gọi là Hồ Gươm là một hồ nước ngọt tự nhiên nằm ở quận Hoàn Kiếm, trung tâm thành phố Hà Nội. Hồ có diện tích khoảng 12 ha[2]. Trước kia, hồ còn có các tên gọi là hồ Lục Thủy (vì nước có màu xanh quanh năm), hồ Thủy Quân (dùng để duyệt thủy binh), hồ Tả Vọng và Hữu Vọng (trong thời Lê mạt)', 'Cách đây khoảng 6 thế kỷ, dựa theo bản đồ thời Hồng Đức thì phần lớn xung quanh kinh thành khi ấy là nước. Hồ Hoàn Kiếm là một phân lưu sông Hồng chảy qua vị trí của các phố ngày nay như Hàng Đào, Hai Bà Trưng, Lý Thường Kiệt, Hàng Chuối. Tiếp đó đổ ra nhánh chính của sông Hồng [3]. Nơi rộng nhất phân lưu này hình thành nên hồ Hoàn Kiếm hiện nay.', 'https://www.hanoistudio.vn/wp-content/uploads/2021/05/nhung-dia-diem-chup-anh-dep-o-ha-noi-24-1024x662.jpeg'),
(8, 1, 'Nhà tù Hỏa Lò', 'Nhà tù Hỏa Lò là một địa danh nổi tiếng bởi từng là nơi giam giữ rất nhiều nhà cách mạng lớn của Việt Nam trong Chiến tranh Đông Dương và phi công Mỹ trong Chiến tranh Việt Nam. Địa danh được Bộ Văn hoá Thể thao và Du lịch ra quyết định số 1543-QĐ/VH ngày 18/6/1997 công nhận là di tích lịch sử.', 'Nhà tù này được thực dân Pháp xây năm 1896 ở khu đất thuộc làng Hỏa Lò (chuyên làm các loại ấm đất, siêu đất và các loại hoả lò bằng đất, đem bán khắp kinh kỳ) lúc đó là ngoại vi thành phố với quy mô lớn và kiên cố vào loại bậc nhất ở Đông Dương, có tổng diện tích là 12.908m2.', 'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2017/08/nha-tu-hoa-lo.jpg'),
(9, 1, 'Lăng Chủ tịch Hồ Chí Minh', 'Lăng Chủ tịch Hồ Chí Minh, còn gọi là Lăng Hồ Chủ tịch, Lăng Bác, là nơi gìn giữ di hài Chủ tịch Hồ Chí Minh. Lăng được chính thức khởi công ngày 2 tháng 9 năm 1973, tại vị trí của lễ đài cũ giữa Quảng trường Ba Đình, nơi Hồ Chí Minh từng chủ trì các cuộc gặp mặt quan trọng.', 'Lăng được khánh thành vào ngày 29 tháng 8 năm 1975, gồm 3 lớp với chiều cao 21,6 mét, chiều rộng 41,2 mét lớp dưới tạo dáng bậc thềm tam cấp, lớp giữa là kết cấu trung tâm của lăng gồm phòng thi hài và những hành lang, những cầu thang. Bên ngoài lăng được ốp bằng đá granite xám, bên trong làm bằng đá xám và đỏ được đánh bóng.', 'https://damynghetamduc.com/wp-content/uploads/2019/07/lich-mo-cua-lang-bac.png'),
(10, 1, 'Chùa Một Cột', 'Chùa Một Cột có tên ban đầu là Liên Hoa Đài (蓮花臺)[1][2][3] tức là Đài Hoa Sen với lối kiến trúc độc đáo: một điện thờ đặt trên một cột trụ duy nhất. Liên Hoa Đài là công trình nổi tiếng nhất nằm trong quần thể kiến trúc Chùa Diên Hựu (延祐寺)[1][4], có nghĩa là ngôi chùa \"Phúc lành dài lâu\".', 'Diên Hựu nguyên bản được xây vào thời vua Lý Thái Tông mùa đông năm 1049[5] và hoàn thiện vào năm 1105 thời vua Lý Nhân Tông[6] nay đã không còn. Công trình Liên Hoa Đài hiện tại nằm ở Hà Nội là một phiên bản được chỉnh sửa nhiều lần qua các thời kỳ, bị Pháp phá huỷ khi rút khỏi Hà Nội ngày 11/9/1954[7][8][9][10] và được dựng lại năm 1955 bởi kiến trúc sư Nguyễn Bá Lăng theo kiến trúc để lại từ thời Nguyễn. Đây là ngôi chùa có kiến trúc độc đáo ở Việt Nam.', 'https://www.vietfuntravel.com.vn/image/data/Ha-Noi/Chua-mot-cot/Hinh-anh-Chua-Mot-Cot-1.png'),
(11, 1, 'Văn Miếu – Quốc Tử Giám ', 'Văn Miếu – Quốc Tử Giám là quần thể di tích đa dạng, phong phú hàng đầu của thành phố Hà Nội, nằm ở phía Nam kinh thành Thăng Long. Quần thể kiến trúc Văn Miếu – Quốc Tử Giám bao gồm: hồ Văn, khu Văn Miếu – Quốc Tử Giám và vườn Giám, mà kiến trúc chủ thể là Văn miếu (chữ Hán: 文廟) - nơi thờ Khổng Tử, và Quốc tử giám (chữ Hán: 國子監) - trường đại học đầu tiên của Việt Nam', 'Khu Văn Miếu – Quốc Tử Giám có tường gạch vồ bao quanh, phía trong chia thành 5 lớp không gian với các kiến trúc khác nhau. Mỗi lớp không gian đó được giới hạn bởi các tường gạch có 3 cửa để thông với nhau (gồm cửa chính giữa và hai cửa phụ hai bên). Từ ngoài vào trong có các cổng lần lượt là: cổng Văn Miếu, Đại Trung, Khuê Văn các, Đại Thành và cổng Thái Học.[1] Với hơn 700 năm hoạt động đã đào tạo hàng nghìn nhân tài cho đất nước. ', 'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2017/08/van-mieu-quoc-tu-giam-khue-van-cac.jpg'),
(12, 1, 'Hoàng thành Thăng Long', 'Hoàng thành Thăng Long (chữ Hán: 昇龍皇城; Hán-Việt: Thăng Long Hoàng thành) là quần thể di tích gắn với lịch sử kinh thành Thăng Long - Đông Kinh và tỉnh thành Hà Nội bắt đầu từ thời kì tiền Thăng Long (An Nam đô hộ phủ thế kỷ VII) qua thời Đinh - Tiền Lê, phát triển mạnh dưới thời Lý, Trần, Lê và thành Hà Nội dưới triều Nguyễn. Đây là công trình kiến trúc các triều vua xây dựng trong nhiều giai đoạn lịch sử và trở thành một trong những di tích quan trọng bậc nhất trong hệ thống các di tích Việt Nam.', 'Vào lúc 20 giờ 30, ngày 31/7/2010 theo giờ địa phương tại Brasil, tức 6 giờ 30 ngày 1/8/2010 theo giờ Việt Nam, Ủy ban di sản thế giới (WHC) thuộc Tổ chức Giáo dục, Khoa học và Văn hóa Liên Hợp Quốc (UNESCO) đã thông qua nghị quyết công nhận khu Trung tâm Hoàng thành Thăng Long - Hà Nội là di sản Văn hóa thế giới.[1] Những giá trị nổi bật toàn cầu của khu di sản này được ghi nhận bởi 3 đặc điểm nổi bật: chiều dài lịch sử văn hóa suốt 13 thế kỷ; tính liên tục của di sản với tư cách là một trung tâm quyền lực, và các tầng di tích di vật đa dạng, phong phú, sinh động.[2]', 'https://ik.imagekit.io/tvlk/blog/2022/03/hoang-thanh-thang-long-1.jpg'),
(13, 3, 'Vườn bách thú Hà Nội ', 'Thủ đô Hà Nội nổi tiếng với những danh lam thắng cảnh nổi tiếng, món ăn đặc sản độc đáo thì không thể không nhắc đến các khu vui chơi giải trí. Trong số đó phải kể đến vườn bách thú Hà Nội hay chính là Công viên Thủ Lệ. Hãy cùng theo dõi bài viết dưới đây của Du lịch Khát Vọng Việt để biết thêm nhiều thông tin về địa điểm vui chơi, tham quan này nhé!', 'Công viên Thủ Lệ hay còn gọi khác là vườn bách thú Hà Nội – là một điểm hẹn vô cùng thú vị ở thủ đô Hà Nội. Công viên Thủ Lệ rộng hơn 28ha với hồ nước trong xanh có diện tích lên đến 6ha còn lại là đất nền  bố trí khu vui chơi, vườn thú. Vườn bách thú khởi công 19/5/1975 và đến năm 1976 đã hoàn thành và sau 2 năm thì mở cửa đón khách. Trải qua nhiều lần tu sửa lại, công viên Thủ Lệ chính thức là một trong những điểm du lịch đẹp nhất ở Hà Nội thu hút đông đảo khách du lịch gần xa.', 'https://media.mia.vn/uploads/blog-du-lich/vuon-bach-thu-ha-noi-diem-tham-quan-xanh-ngat-giua-long-thu-do-1681689958.jpg'),
(14, 3, 'Trò chơi + giá vé Công viên nước Hồ Tây 2024 mới nhất', 'Hè đến, công viên nước hồ Tây Hà Nội lại trở thành một “thánh địa giải nhiệt” yêu thích của team Hà thành. Vị trí địa lý gần hồ Tây lãng mạn, đây thực sự là một địa điểm vui chơi ở Hà Nội tuyệt vời. Hãy cùng Hà Nội ơi! khám phá kinh nghiệm đi công viên nước hồ Tây 1 ngày nhé! ', 'Công viên nước Hồ Tây có diTọa lạc tại 614 đường Lạc Long Quân, phường Nhật Tân, quận Tây Hồ, thành phố Hà Nội. Công viên nước hồ Tây suốt 15 năm qua đã gắn liền với cuộc sống, tuổi thơ của người dân Hà thành. Đặc biệt vào dịp lễ hay những ngày cuối tuần, mọi người tập trung về đây rất đông đúc. Xua tan cái nắng oi dưới làn nước xanh mát, dũng cảm trải nghiệm những trò chơi cảm giác mạnh.Sở hữu diện tích hơn 8ha, công viên nước hồ Tây có 14 trò chơi dưới nước. Có một điều chắc chắn rằng bạn có thể vô cùng an tâm về nguồn nước dưới bể bơi bởi hệ thống lọc tân tiến. Hè này tha hồ mà vẫy vùng nha hội bạn thân ơi!', 'https://halotravel.vn/wp-content/uploads/2020/06/cong-vien-nuoc.jpg'),
(15, 2, ' Phở', 'Nhắc tới Hà Nội không thể nào không nhắc tới các món phở; từ phở nước, phở xào tới phở cuốn, từ phở gà tới phở bò, từ tái, nạm tới chín. Như thể dù có ăn phở cả tháng cũng không khiến bạn chán ngán được vì có quá nhiều lựa chọn.', '\r\nPhở Bát Đàn: địa chỉ ở 49 Bát Đàn, quán mở lúc sáng từ 6h30 tới 8h30, giá khoảng 30,000 VND - 55,000 VND / bát.\r\nPhở Thìn: 13 phố Lò Đúc, quán mở cửa từ 5h đến 21h, giá khoảng 40,000 VND - 60,000 VND / bát.\r\nPhở Lý Quốc Sư:giá khoảng 50,000 VND - 77,000 VND / bát, giờ mở cửa 6h tới 14h và 17h30 tới 22h. Bạn có thể tìm thấy tại 3 địa chỉ: Địa chỉ 1: Số 10 Lý Quốc Sư - Địa chỉ 2: 42 Hàng Vôi –  Địa chỉ 3: N2A Hoàng Minh Giám\r\nPhở Sướng: có 2 địa chỉ Ngõ Trung Yên, phố Đinh Liệt (khu phố cổ) HOẶC Nguyên Hồng, giá khoảng 40,000 VND - 55,000 VND / bát.\r\n', 'https://ik.imagekit.io/tvlk/blog/2017/01/30-mon-ngon-nuc-long-nhat-dinh-phai-thu-khi-toi-ha-noi-phan-1.jpg?tr=dpr-2,w-675'),
(16, 2, 'Bún đậu mắm tôm', 'Bún đậu mắm tôm từ đầu chỉ là món ăn đường phố dành cho những người lao động nghèo, nhưng dần dà món ăn này chinh phục được cả những thực khách sang chảnh nhất bằng chính hương vị đậm đà và độc đáo của mình.', 'Nhắc tới bún đậu mắm tôm người Hà Nội sẽ nhớ ngay tới quán Bún đậu mắm tôm Hàng Khay hay ngõ Phất Lộc - địa chỉ thân quen của những người sành ăn trốn Hà thành.\r\n\r\nBún đậu Hàng Khay: ngõ 31 Hàng Khay, ngõ này siêu nhỏ nhưng không cản nổi bước chân của thực khách hiếu kì tới đây thưởng thức món ăn. Mở từ 10h30 tới 21h00 hàng ngày, một suất khoảng 45,000 VND.\r\nBún đậu Trung Hương: ngõ Phất Lộc, giá từ 20,000 VND - 50,000 VND / suất.\r\nNgoài ra bạn cũng có thể tới một số địa chỉ khác như:\r\n\r\nBún đậu mắm tôm Cây Bàng: Đại La, mở cửa từ 10h tới 14h, giá bán 30,000 VND / bát đầy đủ, gửi xe miễn phí.\r\nBún đậu gốc đa Ngõ Gạch:giá 50,000 VND / suất có đầy đủ bún, đậu, chả cốm, thịt luộc; quán bán từ 10h.\r\nBún đậu lòng nướng khu Hoàng Cầu: ngõ 16 Hoàng Cầu, giá 60,000 VND / đĩa, mở bán từ 10h tới 14h.', 'https://ik.imagekit.io/tvlk/blog/2017/01/30-mon-ngon-nuc-long-nhat-dinh-phai-thu-khi-toi-ha-noi-phan-6.jpg?tr=dpr-2,w-675');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(16, 'Nguyen Van C', 'b@gmail.com', '123456789'),
(17, 'Duc Anh', 'ducanh29304@gmail.com', '12345'),
(18, 'chulanphuong', 'phuongchu331@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
