-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 172.30.21.199
-- Thời gian đã tạo: Th6 16, 2018 lúc 09:37 AM
-- Phiên bản máy phục vụ: 5.7.20
-- Phiên bản PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `speak`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bm`
--

CREATE TABLE `bm` (
  `id` int(11) UNSIGNED NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bm`
--

INSERT INTO `bm` (`id`, `content`) VALUES
(2, '[Dịch] Phong Lưu Pháp Sư (Dị Thế Chi Phong Lưu Đại Pháp Sư) ➧ Chương 244 : Nhiệm vụ cấp SS – Khu vực cấm của Lôi thần'),
(4, 'hàn môn Chương 612 : Mỗi một chỗ thẹo đều là ta chiến công'),
(27, '[TF]Phàm Nhân Tu Tiên ➧ Chương 2414: Hắc Nghê Thú'),
(12, 'Hắn nói mấy lời này'),
(15, '[TCV]chu thien trong sinh ➧ Chương 1172: Trường Hận Ma Cung'),
(20, '[TTV]Tu Thần Ngoại Truyện ➧ Chương 752 : Kẻ xướng người hoạ'),
(26, '[TF]Ngã Dục Phong Thiên ➧ Chương 1251: Địch ý khó phân'),
(31, '[TF]Cực Phẩm Gia Đinh ➧ Chương 220: Ảm Đạm'),
(30, '[TCV]van co than de ➧ Chương 1485: Như giẫm trên băng mỏng'),
(32, '[TCV]tieu dao tieu thu sinh ➧ Chương 524: Khẩn cầu bệ hạ, xá'),
(34, '[TCV]than ma thien ton ➧ Chương 477: Đại hoang bên trong truyền');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `note`
--

INSERT INTO `note` (`id`, `content`) VALUES
(1, '\r\n \r\n23. dặm\r\n\r\n1	dặm = 500m\r\n10	dặm = 5km\r\n100	dặm = 50km\r\n1.000	dặm = 500km\r\n10.000	dặm = 5.000km\r\n\r\n22. Lists\r\n\r\n6. Thiên Thần Quyết\r\n\r\nMột giọt ma huyết, chiếu phá sơn hà vạn đóa. Một quyển cổ kinh, yên diệt nhật nguyệt luân hồi. Một bộ thần quyết, mai táng chư thiên Chí Tôn. Dương Thanh Huyền được Thiên Mệnh truyền thừa, tu vô địch... ▼\r\n5. Vạn Cổ Chi Vương\r\n\r\nBình dân thiếu niên La Thiên, người mang tuyệt thế chi tư, lại bị ngộ nhận là người phế mạch. Ngẫu nhiên đạt được vô thượng Thiên Thư, mở ra chí cường thần mạch, tu Tạo Hóa Thần Quyết, nhất phi trùng... ▼\r\n4. Tu Thần Ngoại Truyền\r\n\r\nTruyện phải nói là viết rất chi tiết, chi tiết đến mức đọc muốn chửi thằng tác giả, level tăng chậm rì nhưng được cái tình cảm nhẹ nhàng, hài hước, yy chấp nhận được và ít lặp lại mô típ trong các tr... ▼\r\n3. Đại Văn Hào\r\n\r\nTrải qua thương trường trong lục đục với nhau, cụng chén nâng cốc trong ngươi ngu ta trá văn học thanh niên Trần Khải Chi về đến cổ đại.Phóng tầm mắt nhìn lại, nơi này tất cả đều là ca lâu tửu phường... ▼\r\n2. Vĩnh Hằng Chí Tôn\r\n\r\nvũ đỉnh ngọn núi , di sơn đảo hải , bắt tinh cầm tháng , nghịch loạn thời không ! kiếm hết sức cảnh , một kiếm thành đạo , một kiếm thông thần , một kiếm phá vạn pháp ! thiếu niên lý phù trần , thỉnh... ▼\r\n1. Vọng Tộc Phong Lưu\r\n\r\nKhông cẩn thận xuyên qua đến một cái tương tự TQ cổ đại thế giới, nơi đó là tuyệt đối \"tất cả đều hạ phẩm, chỉ có đọc sách cao\", nhưng không có Lý Bạch Đỗ Phủ, Đường Tống Bát đại gia các loại đại văn... ▼\r\n\r\n3. http://truyencv.com/nhat-ngon-thong-thien/\r\n\r\nCùng tác giả ( Trọng Sinh Tiêu Dao Đạo ).********* Cảnh báo: truyện thuần tu tiên, main não to, làm việc suy tính trước sau, xen lẫn chút hài hước, mang chút hơi hướng Nhất Niệm Vĩnh Hằng.!! Có một n... ▼\r\n2. http://truyencv.com/dai-van-hao/\r\n\r\nTrải qua thương trường trong lục đục với nhau, cụng chén nâng cốc trong ngươi ngu ta trá văn học thanh niên Trần Khải Chi về đến cổ đại.Phóng tầm mắt nhìn lại, nơi này tất cả đều là ca lâu tửu phường... ▼\r\n1. http://truyencv.com/nhat-niem-phi-tien/\r\n\r\nThái Cổ niệm tu Đại Năng Giả, Nhất Niệm Thành Ma, Nhất Niệm Thành Phật, cũng có Võ Đạo cao thủ, Phá Toái Hư Không, Duy Ngã Độc Tôn, hiểu trăm sông đổ về một biển, cuối cùng chỉ vì tìm kiếm cái kia mê... ▼\r\n21. Save\r\n\r\nTruyện CV\r\nCuc Pham Gia Dinh\r\nhan mon quat khoi\r\n\r\nTàng thư viện\r\ncau ma\r\ndichnga duc phong thien suu tam\r\ndichphong luu phap su suu tam\r\nhan mon quat khoi\r\nthien dao do thu quan\r\ntu than ngoai truyen\r\ny thong giang son\r\n\r\nWeb truyện\r\nhi du hoa tung\r\nkieu kieu su nuong\r\nnga duc phong thien\r\n\r\nTruyện full\r\nlinh vu thien ha\r\nnga duc phong thien\r\nnhat niem vinh hang\r\n\r\n19. 8632\r\n\r\nhttp://truyencv.cf/ttv/tangthuvien.php?name=dichphong-luu-phap-su-suu-tam&link=https://truyen.tangthuvien.vn/doc-truyen/dichphong-luu-phap-su-suu-tam/chuong-244\r\n\r\n18. đo\r\n\r\n1 dặm = 500m\r\n1 trượng = 3,33m\r\n\r\n17. http://truyencv.cf/ttv/tangthuvien.php?name=dichphong-luu-phap-su-suu-tam&link=https://truyen.tangthuvien.vn/doc-truyen/dichphong-luu-phap-su-suu-tam/chuong-240\r\n\r\n9. http://www.truyencv.cf/ttv/tangthuvien.php?name=y-thong-giang-son&link=https://truyen.tangthuvien.vn/doc-truyen/y-thong-giang-son/1627336-chuong-118\r\n\r\n8. http://truyencv.cf/ttv/tangthuvien.php?name=tu-than-ngoai-truyen&link=https://truyen.tangthuvien.vn/doc-truyen/tu-than-ngoai-truyen/chuong-757\r\n\r\n7. http://www.truyencv.cf/ttv/tangthuvien.php?name=han-mon-quat-khoi&link=https://truyen.tangthuvien.vn/doc-truyen/han-mon-quat-khoi/chuong-613\r\n\r\n6. tu than ngoai truyen 751\r\n\r\nChương 751 mỹ bạch đan dịch\r\n\r\n“Cái kia…… Tiếu ngọt…… Ngọt” trương tiểu hoa cố nén một loại bẹp người xúc động, đem tên này hô ra tới, cũng không phải này nữ đệ tử khó coi, cũng không phải này nữ đệ tử đường cong không tốt, cũng không phải…… Khụ khụ, tóm lại, tên này thật sự là làm trương tiểu hoa kêu lên rất là khó chịu.\r\n\r\n“Ai ~~~~” kia tiếu ngọt ngọt ngọt ngọt lên tiếng, thanh âm kéo lão trường: “Nhậm sư huynh, ngươi thanh âm nghe tới thật là dễ nghe, chúng ta mờ mịt đường nam đệ tử không một người có như vậy tốt tiếng nói, chính là tiểu muội lúc trước nghe qua hát tuồng cũng chưa ngươi nói thật dễ nghe, ngươi…… Thật hẳn là đi diễn kịch.”\r\n\r\n“Ta vựng ~” trương tiểu hoa hơi kém không té ngã, hôm qua trương tiểu hổ đều khuyên chính mình đi diễn kịch, này…… Tiếu ngọt ngào cư nhiên cũng kiến nghị chính mình đi diễn kịch, chẳng lẽ chính mình thực sự có diễn kịch tiềm chất? Liền không có ở tiên đạo phát triển khả năng?\r\n\r\nTrương tiểu hoa nhéo chính mình cằm, “Hì hì” cười nói: “Nhân gia đều giảng quá, diễn kịch là phải có cái hảo túi da, không sợ không có gì diễn kịch kỹ xảo, chỉ cần lộng cái tốt thể diện đặt ở kia sân khấu kịch tử thượng vừa khóc cười, lại làm người ở dưới đài một phủng, mặc cho ai đều là muốn rực rỡ; Tiếu sư muội, ngươi xem ta hành sao?”\r\n\r\n“Gọi người ta tiếu ngọt ngào sao ~” tiếu ngọt ngọt ngọt cười nói: “Nhậm sư huynh nhất có hình, liền thành ngươi cái mũi, đôi mắt của ngươi, ngươi diễn nhân vật người khác đều diễn không thành!”\r\n\r\n“Thật sự?” Trương tiểu hoa đại kỳ, nói: “Đó là cái gì nhân vật?”\r\n\r\n“Chính là…… Chính là cái kia ở cái mũi tô lên màu trắng hình tứ phương cái kia…… Cái gì giác nhi, tới……”\r\n\r\n“Có phải hay không…… Dáng người thấp bé, ở sân khấu kịch thượng nhảy nhót, thoán cao nhảy thấp……?”\r\n\r\nTrương tiểu hoa tức giận hỏi. Kia tiếu ngọt ngào vừa thấy trương vai hề thượng có chút khó coi, lập tức chính là thay đổi khẩu phong, nói; “Nơi nào, nhậm sư huynh dáng người cường tráng, anh tuấn tiêu sái, muốn diễn cũng là……”\r\n\r\n“Thôi bỏ đi.” Trương tiểu hoa mất kiên nhẫn, xua xua tay nói: “Tiếu sư muội, cọ tới cọ lui nói nửa ngày, ta tưởng ngươi có phải hay không cũng nên thiết nhập chính đề? Không biết tìm tại hạ có chuyện gì?”\r\n\r\n“Ai da ~ ngươi xem ngươi, nhậm sư huynh, nếu là không có việc gì tình, sư muội liền không thể cùng sư huynh nói chuyện sao?”\r\n\r\n“Nga, ta lúc ấy quên mất, ta trong viện hỏa thượng, còn ngao canh gừng đâu, chờ ta phát xong hãn, đầu không hôn mê, lại nghe ngươi nói.”\r\n\r\nTrương tiểu hoa làm bộ chính là phải đi.\r\n\r\n“Đừng, nhậm sư huynh, kỳ thật…… Tiểu muội thật là có chuyện tưởng cầu ngươi?”\r\n\r\nTrương tiểu hoa nhìn tiếu ngọt ngào vặn vặn Nini cố làm ra vẻ, cơ hồ vị đều là muốn run rẩy, cường tự chắp tay nói: “Nếu là đan dược đổi dược thảo sự tình, ta lúc trước đã cùng quý đường tuổi trẻ đệ tử nói qua, bực này sự tình không dễ chính thức trực tiếp cùng dương Đường chủ can thiệp, đại gia trong lòng biết rõ ràng liền thành.”\r\n\r\nNhưng nhìn xem tiếu ngọt ngào có chút khó hiểu bộ dáng, chau mày nói: “Nga, Tiếu sư muội nếu không phải vì chuyện này, chẳng lẽ là muốn hỏi tại hạ trước yếu điểm nhi đan dược sao? Nếu là thực sự có bị thương, này…… Bổ huyết đan chờ vật nhưng thật ra có thể trước mượn ngươi một ít, bất quá, ngươi đến kia dược thảo chờ vật tới đổi!”\r\n\r\n“Thật sự?” Kia tiếu ngọt ngào trên mặt vui vẻ nói: “Có phải hay không ngươi đan dược đều có thể kia đồ vật đổi?”\r\n\r\nTrương tiểu hoa sửng sốt, có chút hòa thượng quá cao sờ không tới đầu (không hiểu được tình huống), chính mình có cái gì đan dược, này tiếu ngọt ngào như thế nào sẽ biết? Nhưng vừa rồi đã nói xuất khẩu, đành phải căng da đầu nói: “Đương nhiên, bất quá, cần thiết là giá trị bằng nhau đồ vật mới thành!”\r\n\r\n“Thật tốt quá, ngươi cái loại này có thể mỹ dung đan dịch, muốn bắt cái dạng gì đồ vật mới có thể đổi đâu?”\r\n\r\n“Mỹ dung? Đan dịch??” Trương tiểu hoa buồn bực nói: “Cái gì kêu mỹ dung? Ta cũng không biết những lời này ý tứ, nơi nào tới đan dịch? Tiếu sư muội có phải hay không tìm lầm người?”\r\n\r\n“Ai da, ta liền biết, nhậm sư huynh sẽ cự người với ngàn dặm ở ngoài, cho nên tiểu muội lúc này mới da mặt dày theo như ngươi nói lâu như vậy, có thể tưởng tượng không đến vừa rồi còn gọi nhân gia tiếu ngọt ngào, này chỉ chớp mắt chính là không quen biết nhân gia, gọi người ta Tiếu sư muội.”\r\n\r\nTrương tiểu hoa da đầu tê dại, dùng sức xua tay: “Thật sự, tiếu ngọt ngào, ta thật sự không rõ. Ngươi có thể hay không trước cho ta giải thích một chút, cái gì là mỹ dung?”\r\n\r\n“Sư huynh, ngươi như vậy anh minh thần võ, thông minh tuyệt đỉnh người, như thế nào liền lập tức không rõ, này mỹ dung, tự nhiên chính là mỹ lệ gương mặt ý tứ sao!”\r\n\r\n“Ai da” trương tiểu hoa hơi kém kêu ra tiếng tới, hơn nữa cái kia “Đan dịch”, hắn cơ hồ chính là đoán được cái gì.\r\n\r\nQuả nhiên, liền nghe tiếu ngọt ngào nói: “Nhân gia kính yêu sư huynh a, có phải hay không nhớ tới cái gì tới?”\r\n\r\n“Chẳng lẽ là…… Trần Thần kia nha đầu?” Trương tiểu hoa cơ hồ chính là khẳng định.\r\n\r\n“Chính là, xem sư huynh kêu nhiều thân thiết, còn nha đầu đâu.” Tiếu ngọt ngào thập phần ghen tuông, nói: “Mấy ngày trước đây Trần Thần sư tỷ còn ở tiểu muội trước mặt kêu la trên mặt dài quá ngật đáp, nhưng…… Nhưng ngày hôm qua buổi tối, cư nhiên trên mặt bóng loáng đều có thể cho ruồi bọ té ngã, hơn nữa, nàng mặt vốn không có tiểu muội bạch, lại xem thời điểm, cư nhiên…… Thẳng bức tiểu muội nha, tiểu muội luôn luôn đều là tự xưng là chính mình là ‘ nhất thụ lê hoa áp hải đường ’, đúng là hồng thấu bạch tự hào, nhưng…… Thế nhưng làm trần sư tỷ cấp so không bằng, ngươi nói, này làm giận không làm giận?”\r\n\r\nTrương tiểu hoa há to miệng, cơ hồ chính là muốn đem “Sư muội, ‘ nhất thụ lê hoa áp hải đường ’ những lời này không phải như vậy dùng đi?” Nói ra, có thể tưởng tượng tưởng chính mình phỏng chừng cũng không hảo cùng nàng giải thích, liền sinh sôi nghẹn đi xuống.\r\n\r\nCố nén che miệng khí, muốn giải thích cái gì, liền nghe tiếu ngọt ngào giống như khoái kiếm giống nhau nói: “Vì thế, ta liền tưởng hết biện pháp, cùng trần sư tỷ hỏi trong đó nguyên do, này đều ma một ngày, vừa mới mới từ miệng nàng biết, cư nhiên…… Cư nhiên là nhậm sư huynh cho nàng linh đan diệu dược nha!”\r\n\r\nNgay sau đó, chính là một cái mùa thu cuộn sóng vứt ra, nói: “Chẳng lẽ nhậm sư huynh liền nhìn tiểu muội này bế nguyệt tu hoa trên mặt tiểu ngật đáp liền như vậy hung hăng ngang ngược? Chẳng lẽ nhậm sư huynh liền không nghĩ phụng ra đoàn kết hữu ái chi tâm, chẳng lẽ nhậm sư huynh liền không hiểu đến thương hương tiếc ngọc chi tình……”\r\n\r\nLiên tiếp ba cái “Chẳng lẽ” nói được trương tiểu hoa trong lòng cũng là cực kỳ “Khổ sở”, chính là cười nói: “Này Trần Thần, ta đều cùng nàng giao đãi luôn mãi, đây là tại hạ một bí mật, mỹ…… Cái gì gương mặt đan dịch vốn là không nhiều lắm, ta chính mình còn nghĩ sử dụng đâu, nếu làm người khác đều đã biết, ta chính mình còn dùng không cần?”\r\n\r\n“Thật sự, Tiếu sư muội, ngươi xem ta này mặt, trước kia nếp gấp nhưng nhiều, chính là đôi mắt so hiện tại đều nhỏ rất nhiều, chính là bởi vì vẫn luôn dùng này đan dịch, trên mặt nếp gấp không có, đôi mắt cũng biến đại, ai, duy nhất tiếc nuối chính là này đan dịch không thể đem cái mũi phồng lên, nếu không, tại hạ đã có thể thật sự ngọc thụ lâm phong!”\r\n\r\n“Thật sự???” Tiếu ngọt ngào đôi mắt vô hạn mở rộng, cũng là không quên khích lệ trương tiểu hoa: “Nhậm sư huynh đã anh tuấn phi phàm, cái mũi tái cao thượng một chút nhi, ngươi còn làm chúng ta mờ mịt đường nam đệ tử sống không? Ngươi cảm thấy mỗi ngày nhân gia bởi vì ghen ghét ngươi anh tuấn, chuyên môn vòng quanh ngươi đi, ngươi cảm giác hảo?”\r\n\r\n“Ân, không tốt lắm, vậy có chút anh tuấn tịch mịch, vẫn là thân dân hảo.” Trương tiểu hoa sờ sờ cái mũi, nghiêm trang nói.\r\n\r\n“Cho nên, nhậm sư huynh, ngươi kia mỹ dung đan dịch, vẫn là cho ta phân một chút hảo!”\r\n\r\nAi, nói nửa ngày, rốt cuộc điểm tới rồi chính đề.\r\n\r\n“Này……” Trương tiểu hoa kinh ngạc nói: “Này đan dịch chính là cực trân quý, ngày hôm trước cho Trần Thần ta liền cảm giác không tốt, này vốn là bí mật của ta, hiện tại ngươi truyền ta, ta truyền cho ngươi, chẳng phải là thành thủy tin phong mỗi người đều biết bí mật?”\r\n\r\n“Đúng vậy, nhậm sư huynh, nếu không tiểu muội như thế nào liền ở chỗ này chờ ngươi đâu?”\r\n\r\n“Ở chỗ này chờ ta?” Trương tiểu hoa chỉ vào cái mũi của mình nói: “Đã chờ thật lâu?”\r\n\r\n“Cũng không bao lâu, chỉ là các ngươi thác đan đường tiểu viện môn cũng chưa khai, tiểu muội tưởng ngươi nhất định đi trên núi, lúc này mới nga, sư huynh, ngươi cảm thấy ngươi kia một lọ mỹ dung đan dịch muốn cái gì mới đổi? Tiểu muội đan dược cũng là có một chút nhi!”\r\n\r\n“Cái này……” Trương tiểu hoa có chút do dự, khó xử nói: “Này đan dược, chúng ta thác đan đường trước nay đều là không thiếu, ngươi xem……”\r\n\r\nNói chính là nhìn về phía tiếu ngọt ngào trên đầu, tiếu ngọt ngào sửng sốt, chợt cắn răng một cái, chính là từ đầu thượng tháo xuống cái kia kim trâm, đưa qua, nói: “Tiểu muội cũng không có gì thứ tốt, đây là qua đời mẫu thân lưu lại, cũng có thể đáng giá mấy cái bạc, liền cầm nó cùng sư huynh đổi đi!”\r\n\r\n“Ai da, kia nhiều không tốt?” Trương tiểu hoa nói, đôi mắt lại là dịch bất động.\r\n\r\n“Ha hả” tiếu ngọt ngào có chút cường cười: “Cũng không có gì, chính là cái kỷ niệm mà thôi, có thể đổi cái thanh xuân xinh đẹp mỹ bạch, cũng coi như là đáng giá.”\r\n\r\nNói xong chính là hướng trương tiểu hoa trong tay ngạnh tắc.\r\n\r\nTrương tiểu hoa rất là “Yêu thích” nhéo nhéo, ngay sau đó chính là đưa còn nói: “Như vậy đi, Tiếu sư muội, ta cũng không tùy thân mang theo này đó đan dịch, ngươi thả trở về cái kia bình ngọc, tùy ta đến thác đan đường tiểu viện…… Nga, tính, vẫn là đi các ngươi mờ mịt đường địa bàn đi, ân, chính là các ngươi trương sư huynh trong viện như thế nào? Chúng ta cũng là công bằng giao dịch, cho các ngươi trương sư huynh làm chứng kiến, đừng về sau nói ta ỷ vào là có chính mình có này đan dịch, liền hạt hồ kêu giới!”\r\n\r\n“Nơi nào, nơi nào, nhậm sư huynh nhất công bằng, tiểu muội cũng là cam tâm tình nguyện.” Tiếu ngọt ngào cười nói: “Vậy một lời đã định, tiểu muội này liền đi lấy bình ngọc, đợi chút ở trương sư huynh trong viện chạm trán!”\r\n\r\n“Được rồi.” Trương tiểu hoa cũng là vui mừng.\r\n\r\nVì thế hai người các chạy vội đồ vật.\r\n\r\nTrương tiểu hoa tự nhiên là không cần hồi thác đan đường tiểu viện, biên hướng trương tiểu hổ chỗ ở đi, biên là âm thầm trộm nhạc: “Không thể tưởng được này mờ mịt phái nữ đệ tử cũng là nữ nhân nha, cổ nhân vân hảo: ‘ nữ nhân đồng tiền nhất hảo ’, cố không khinh dư nào! Chỉ cần là cùng thể diện có quan hệ, mặc kệ là cái gì son phấn, vẫn là mỹ bạch đan dịch, đều là làm các nàng điên cuồng, mấy ngày trước đây còn đang đau lòng kia vạn năm thiên chung thạch nhũ, cấp Nhị ca tắm rửa có chút lãng phí, hiện tại liền tìm tới rồi không lãng phí lý do. Này…… Này nhân phẩm không cần thật tốt quá!”\r\n\r\nTrương tiểu hoa nghĩ, chính là đi vào trương tiểu hổ trong viện, chỉ thấy trương tiểu hổ lúc này chính chậm rãi đi ở trong viện, tưởng là ở hoạt động gân cốt, nhìn thấy trương tiểu hoa bộ mặt xuân phong tiến vào, bất giác cười nói: “Di? Như thế nào như vậy cao hứng? Chẳng lẽ là có cái gì hỉ sự?”\r\n\r\n“Hì hì? Đương nhiên là hỉ sự.”\r\n\r\nTrương tiểu hổ nghe xong, cũng là ngừng lại nói: “Mau nói, cái gì hỉ sự này?”\r\n\r\n“Ha ha, ngươi muốn phát tài!”\r\n1. @voice\r\n\r\nhttp://truyencv.cf/html.php?name=ttv-list&link=truyencv.cf/ttv/sites/han-mon-quat-khoi.html\r\n\r\n'),
(3, 'hàn môn Chương 612 : Mỗi một chỗ thẹo đều là ta chiến công'),
(4, 'https://m.truyen.tangthuvien.vn/doc-truyen/van-co-tien-khung'),
(5, 'regex\r\ng reg toàn bộ\r\ni reg không phân biệt hoa thường\r\ns reg html');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rep`
--

CREATE TABLE `rep` (
  `id` int(11) UNSIGNED NOT NULL,
  `s` text NOT NULL,
  `r` text NOT NULL,
  `site` int(11) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `rep`
--

INSERT INTO `rep` (`id`, `s`, `r`, `site`) VALUES
(1, '\\s\\s+', ' ', 1),
(2, '\"\\s?(.*?)\\s?\"\\.?,?', '“$1”', 1),
(3, '\\.\\s+\\.', '..', 1),
(4, '\\.\\s\\.', '..', 1),
(5, '\\.\\.\\.+', '...', 1),
(6, '>\\s?\\.\\.\\.\\s?<', '>｡｡｡<', 1),
(7, '\\s(,|\\.|!|:|\\?)', '$1', 1),
(8, '☣(.*)', '', 2),
(14, '(@|\\$|%|\\#|\\*)', '', 2),
(17, '\\?\\.', '?', 2),
(18, '!\\.', '!', 2),
(19, '([0-9]{1})\\s([0-9]{1})', '$1$2', 2),
(25, 'Chương ([0-9]{1}.)?[0-9]{1,4}: (.*?)<br />', '', 2),
(26, '(“|\\s)(A|a)!?(”|\\s)', '$1$2!$3', 2),
(28, 'UU(.+?)\\.\\s?c\\s?o\\s?ｍ', '', 2),
(29, '(K|k)huyết\\stật', '$1huyết điểm', 2),
(30, '“……?”', '“Lặng!”', 2),
(31, '&quot;\\s?(.*?)\\s?,?\\s?&quot;\\.?,?', '&ldquo;$1&rdquo;', 1),
(34, 'Diệp (X|x)a', 'Diệp Viễn', 7),
(35, '\\*', '', 7),
(42, 'Converter: ThanhHuy', '', 9),
(43, '…', '...', 10),
(49, '(@|%|\\#|\\*|\\$)', '', 11),
(52, 'Tô giơ', 'Tô gia', 11),
(53, '\\.\\.\\.,', '...', 11),
(54, 'huê hồng', 'hoa hồng', 11),
(55, 'Già Đại', 'Lão Đại', 11),
(56, 'của(\\.?!?,?)', '$1', 11),
(58, '(H|h)o khan', 'khụ khụ...', 11),
(62, '\\[\\s', '[', 11),
(63, '\\s\\]', ']', 11),
(64, '\\s\\s+', ' ', 11),
(70, '(C|c)&aacute;c loại:', '', 9),
(74, '\\.\\.\\.kia', ' kia', 9),
(84, 'ững\\.\\.\\.', 'ững ', 9),
(85, ' vân\\.\\.\\.vân', '...', 9),
(88, '(A|a)i ơ', '$1i nha', 9),
(89, '(C|c)ác loại:', '', 9),
(97, ':bình thường', '', 9),
(98, 'chun trà', 'chum trà', 9),
(100, ' ơ,', ' a,', 9),
(102, 'sư diệt', 'sư điệt', 9),
(103, 'Chương [0-9]{1,3}:(.*?)<br />', '', 14),
(104, '<br />｡｡｡<br />', '', 14),
(108, 'V...I...P', 'tốt', 9),
(109, '\\.\\.+', '...', 9),
(110, 'vậy nhi', 'vậy nha', 9),
(112, '\\.\\.\\.\\s?nữa', ' nữa', 9),
(113, '(\\?|…|,|!|ʔ)(\\?|…|,|!|ʔ)\\\"\\s?<', '$2\"<', 9),
(116, '(\\w)\\.\\.\\.(\\w)', '$1 $2', 9),
(117, 'zhitsss', '', 9),
(118, 'z', '', 9),
(119, '(T|t)rương ((T|t)rong\\s)?(H|h)oa', 'Trương Tiểu Hoa', 9),
(120, 'càm', 'cằm', 9),
(121, '\\s\"\\s?<', '\"<', 9),
(122, 'thiểu hiệp', 'thiếu hiệp', 9),
(123, '(T|t)rương (H|h)ổ', 'Trương Tiểu Hổ', 9),
(124, '(\\*|~)', '', 9),
(125, '\\*', '', 15),
(127, '\\s?\"\\s<', '\"<', 15),
(130, '>\\s\"\\.\\.\\.', '>\"…', 15),
(133, '(H|h)i\\.\\.\\.i\\.\\.\\.i+', 'HÍ HÍ', 15),
(134, 'HƯU\\.\\.\\.U\\.\\.\\.U+', 'HƯU HƯU', 15),
(135, 'BOANG', 'boang', 15),
(137, '〈(.+?)〉', '', 15),
(139, '\"\\s?\\.\\.\\.', '\"…', 15),
(140, 'BA~', 'BA', 15),
(142, '(\\w)(\\.\\.\\.|…)(\\w)', '$1 $3', 9),
(143, 'Chương trình(.*)', '', 15),
(144, 'con mẹ cái X', 'con mẹ nó', 15),
(145, 'Chương ([0-9]{1}.)?[0-9]{1,4}: (.*?)<br />', '', 16),
(148, '(B|b)a?la (B|b)a?la', 'luyên thuyên', 16),
(150, ' N ', '', 16),
(151, 'Tần Hoài Hà', 'sông Tần Hoài', 16),
(154, '(Ô|ô)ng bô', 'lão cha', 16),
(156, 'xxx', 'fuck', 16),
(157, '(\\*|%|\\+)', '', 16),
(158, '(B|b)ra (B|b)ra', '…', 16),
(160, 'vân vân,?\\.?', '…', 16),
(161, 'bốn thẩm', 'tứ thẩm', 16),
(162, 'hủy nhớ', 'long ký', 16),
(163, 'HKT', 'Hắc Xồm', 16),
(166, '\" ?\"', '', 16),
(167, ';\\s?\"\\s?<', '\"<', 16),
(168, 'conad[0-9];', '', 16),
(170, 'năm cô gia', 'ngũ cô gia', 16),
(171, '~', ',', 16),
(172, 'tiểu đồng chí', 'Tử Sĩ', 16),
(173, 'xuống sông', 'Hạ Hà', 16),
(174, 'trang b ?,?\\.? ', 'trang bức', 16),
(176, '(N|n)ữ sinh', '$1ữ nhân', 16),
(177, '\\s\\s+', ' ', 16),
(178, '([0-9]{1})o', '${1}0', 16),
(179, 'get', 'đến', 16),
(180, 'Muốn xem(\"?\\s?<)', '$1', 16),
(181, 'Sparta', 'điên rồi', 16),
(182, ' ?`\\s?<', '<', 16),
(183, 'nam sinh', 'nam nhân', 16),
(185, 'Dcm', 'Đệch con mẹ nó', 16),
(186, 'n∈n(.*?)<', '<', 16),
(187, 'nhaều', 'nhiều', 9),
(188, '(X|x)ong,', '$1ong', 9),
(189, 'ha a,', 'ha ha,', 15),
(190, '⅝', '>…<br /><', 15),
(191, 'khẽ:', 'khẽ.', 15),
(192, 'bán hàng', 'đấu giá', 15),
(193, '{vì:là}', 'vì là', 15),
(218, 'òa', 'oà', 18),
(219, 'óa', 'oá', 18),
(220, 'chụi', 'chịu', 18),
(221, 'nhẩy', 'nhảy', 18),
(222, 'ọa', 'oạ', 18),
(223, 'mầu', 'màu', 18),
(224, 'rat ay', 'ra tay', 18),
(225, '\\((.*?)\\)', '(giải thích: $1)', 18),
(226, 'haa', 'ha ha', 18),
(228, 'tôi', 'ta', 18),
(229, 'cậu', 'ngươi', 18),
(237, 'trangB', 'trang B', 18),
(238, '\\*\\*\\*g', 'lồng', 18),
(239, 'ï¼R?', ' ', 18),
(240, 'uã', 'u', 18),
(241, 'con nha', 'tiểu nha', 18),
(245, 'ựoc', 'ược', 18),
(246, 'ưo', 'ươ', 18),
(247, 'e he', 'à hà', 18),
(249, '(u|ự|ứ|ử|ừ)(ơ|ợ|ớ|ờ|ở)', 'ư$2', 18),
(250, 'ừo', 'ườ', 18),
(254, 'nỗi', 'nổi', 18),
(255, '\\s\\s+', ' ', 18),
(256, '(Ô|ô)ng trời', 'Lão thiên', 18),
(257, '(L|l).m ?(V|v).n ?(V|v).nh', 'Lâm Vãn Vinh', 18),
(258, 'L\\p{L}m ?T\\p{L}m', 'Lâm Tam', 18),
(259, 'Lâm Văn Vinh', 'Lâm Vãn Vinh', 18),
(260, '⬎', '', 18),
(262, 'ko', 'không', 18),
(264, '\\*', '⁎', 18),
(265, '-+', '-', 18),
(266, '__+', '', 18),
(268, '(\\[|\\])', '', 19),
(269, '\\*\\*\\*', 'chơi', 19),
(270, '(u|ự|ứ|ử|ừ)(ơ|ợ|ớ|ờ|ở)', 'ư$2', 19),
(271, '〈(.*?)〉', '', 19),
(272, 'tôi', 'ta', 19),
(273, '(K|k)(ô|o)', 'không', 19),
(274, '::', ':', 19),
(275, '(X|x)(X|x)+', 'chơi', 19),
(276, 'Hoa m ', 'Hoa Am ', 19),
(277, 'ửơ', 'ưở', 20),
(278, 'ựơ', 'ượ', 20),
(279, 'ứơ', 'ướ', 20),
(280, 'ừơ', 'ườ', 20),
(281, '-(.)', '- $1', 20),
(282, 'ưú', 'ứu', 20),
(283, 'ỵê', 'yệ', 20),
(284, 'ýê', 'yế', 20),
(285, 'uơ', 'ươ', 20),
(286, 'uợ', 'ượ', 20),
(287, 'ơí', 'ới', 20),
(288, 'xxx', 'sex', 20),
(289, '\\*\\*\\*', 'lồn', 20),
(290, 'tôi', 'ta', 20),
(291, 'rat ay', 'ra tay', 20),
(293, 'tll', 'Tạ Lâm Lan', 19),
(294, 'đup', 'Đàm Uyển Phượng', 19),
(296, 'ltt', 'lục thừa thiên', 19),
(297, 'dup', 'đàm uyển phượng', 19),
(298, 'Hoạ Sơn', 'Hoa Sơn', 19),
(300, '>\\s<br /><br />', '<br /><br />', 19),
(301, 'năm quỷ', 'ngũ quỷ', 19),
(302, 'o0o', '•••', 21),
(303, 'giửa', 'giữa', 21),
(304, 'trã ', 'trả ', 21),
(305, 'ựơ', 'ượ', 21),
(306, 'uợ', 'ượ', 21),
(307, '\\*\\*\\*', 'lồn', 21),
(308, '\\*', '', 21),
(309, 'nguyện tố', 'nguyên tố', 21),
(310, 'chúng tôi', 'bọn ta', 21),
(311, 'ND', 'Dịch giả', 21),
(312, 'Mmm', 'Ưmm', 21),
(313, 'SS(S?)', 'S S $1', 21),
(314, 'tôi', 'ta', 21),
(315, 'mà\"', 'mà.\"', 21),
(316, 'oOo', '•••', 21),
(317, '\\.\"\\.', '.\"', 21),
(318, '„', '\"', 21),
(319, '\"…\"', '\"Lặng!\"', 21),
(320, '(H|h)e he', '$1ê hê', 21),
(321, 'cậu', 'ngươi', 21),
(322, 'qươ', 'quơ', 21),
(323, '(kiều đồn|đồn bộ)', 'cặp mông', 21),
(324, 'sử giả', 'sứ giả', 21),
(325, '\\*', '', 22),
(402, 'thiên kiều', 'thiên kiêu', 22),
(333, 'đc', 'được', 22),
(335, '</p> <p>', '<br /><br />', 22),
(336, '<\\/?p>', '', 22),
(337, '-\\s', '- ', 22),
(338, 'chúng tôi', 'chúng ta', 22),
(339, 'DG:', 'Giải thích:', 22),
(341, '<(.*?)>', ' ', 19),
(344, '&\\#8\\.', '&#8', 22),
(345, 'i+', 'i', 22),
(346, 'à ?…', 'à ', 22),
(347, 'đồ đằng máu', 'đồ đằng huyết', 22),
(348, '-\\s?', '- \"', 19),
(349, '-', '<br><br>-', 19),
(350, '\\.', '.<br><br>', 19),
(351, '.<br>\\s?\"', '.\"', 19),
(352, '\'\'', '\"', 19),
(353, '>\\.<', '', 19),
(354, 'rỏ', 'rõ', 19),
(356, '(ã|á|à)…', '$1...', 19),
(357, 'chị ', 'tỷ ', 19),
(358, 'tiểu jj', 'tiểu đệ đệ', 19),
(359, 'sauk hi', 'sau khi', 19),
(360, '@', '', 19),
(361, '…', '...', 19),
(405, 'ngôi sao', 'thiên tinh', 22),
(363, 'CONVERTER(.*)', '', 25),
(364, ' uy tín ', ' truyền thừa ', 25),
(365, 'trung ương', 'trung tâm', 25),
(366, 'ba ba', 'Cha', 25),
(368, 'mụ mụ', 'mẫu thân', 25),
(369, 'qươ', 'quơ', 25),
(370, 'ha a', 'ha ha', 25),
(371, ' 1 ', ' một ', 25),
(372, ' 2 ', ' hai ', 25),
(373, 'khách sạn', 'khách điếm', 25),
(374, ' óc', ' đầu', 25),
(375, 'phái trên', 'phía trên', 25),
(376, 'tuyển thủ', 'thí sinh', 25),
(377, 'nhân viên', 'nhân thủ', 25),
(378, 'Lăn(ǃ|!)', 'CÚT$1', 25),
(379, 'già mồm', 'nhiều lời', 25),
(380, 'giao lưu', 'giao phong', 25),
(381, '(T|t)op', 'trước', 25),
(382, 'kinh doanh', 'vun trồng', 25),
(383, ' 3 ', ' ba ', 25),
(384, '\\[ tác giả(.*)', '', 25),
(385, 'cắt tỉa', 'phân tích', 25),
(386, 'nỉ non', 'lẩm bẩm', 25),
(387, '([0-9]{1,2}): ?([0-9]{1,5})', '$1/$2', 25),
(388, 'Chương ?([0-9]{1,4}):(.*?)br />', '', 25),
(389, 'giỏi', 'mạnh', 25),
(390, 'bà chị', 'đại tỷ', 18),
(392, '~~~', '', 25),
(403, '-oOo-', '', 22),
(406, 'cuả', 'của', 22),
(407, ':\\s?-', ':<br><br>-', 22),
(410, 'oOo', '', 22),
(411, 'H.n L.p', 'Hàn Lập', 27),
(414, '&hellip;?', '&hellip;', 18),
(416, 'Dịch: dester<br>Biên dịch, biên tập: vietstars', '', 18),
(418, '(\\.|!)\\s?\"<', '\"<', 18),
(419, ' ?- Không đảm bảo đúng 100%.', ':', 18),
(420, 'dịch:(.*?)melly', '', 18),
(421, '-o0o-', '', 28);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `site`
--

CREATE TABLE `site` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `site`
--

INSERT INTO `site` (`id`, `name`) VALUES
(1, 'root'),
(2, 'thien-dao-thu-vien'),
(7, 'tuyet-the-duoc-than'),
(9, 'tu-than-ngoai-truyen'),
(10, 'bach-luyen-thanh-tien'),
(11, 'nho-dao-chi-thanh'),
(14, 'phan-dau-tai-hong-lau'),
(15, 'y-thong-giang-son'),
(16, 'han-mon-quat-khoi'),
(18, 'cuc-pham-gia-dinh'),
(19, 'kieu-kieu-su-nuong'),
(20, 'hi-du-hoa-tung'),
(21, 'dichphong-luu-phap-su-suu-tam'),
(22, 'nga-duc-phong-thien'),
(25, 'chu-thien-trong-sinh'),
(27, 'pham-nhan-tu-tien'),
(28, 'ngao-the-cuu-trong-thien');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bm`
--
ALTER TABLE `bm`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rep`
--
ALTER TABLE `rep`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bm`
--
ALTER TABLE `bm`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `rep`
--
ALTER TABLE `rep`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- AUTO_INCREMENT cho bảng `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
