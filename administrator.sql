-- phpMyAdmin SQL Dump
-- version 4.5.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 06, 2015 at 04:33 PM
-- Server version: 5.6.26-log
-- PHP Version: 5.6.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `administrator`
--
CREATE DATABASE IF NOT EXISTS `administrator` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `administrator`;

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `file_id` int(25) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `news_id` int(25) DEFAULT NULL,
  `product_id` int(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`file_id`, `path`, `news_id`, `product_id`) VALUES
(1, 'kqqs3en9veie1ndMMMMMMM.jpg', 1, NULL),
(2, 'kyx0vpvj8rn7gerFM.jpg', 2, NULL),
(3, 'bf089yzzhfrkronA5Kids world.jpg', 3, NULL),
(4, 'p0yfxd0wcwqof3oh-lotus.jpg', 4, NULL),
(5, '3wqimvgvyosv1s812.jpg', 5, NULL),
(6, '2y05bvs3efvil86GreenCap.jpg', NULL, 1),
(7, 'iejfauc3a56u7ssJ020110405105717.jpg', NULL, 1),
(8, '3mavyi1gqohmkybJ020110407122505.jpg', NULL, 2),
(9, 'atw1r4c5ncydsm1J020110407125544.jpg', NULL, 2),
(10, '8jy3bwb8612r2a7J020110407125718.jpg', NULL, 2),
(11, 'kafoc822udeq3ztJ020110407130213.jpg', NULL, 2),
(12, '75te51dinniyc2pJ020110407135158.jpg', NULL, 2),
(13, 'qhvjjky0dl69wqc1395916020-3125335563-o.jpg', NULL, 3),
(14, 'qhvjjky0dl69wqc1395916020-3125335563-o.jpg', NULL, 3),
(15, 'ohb1nc0dkvj929r12045390_1040217349352198_3707338757658516894_o.jpg', 6, NULL),
(16, '0qgh5duwx1b75rd12022521_10206725354845866_2726297453088863380_o.jpg', NULL, 4),
(17, 'v1p09pbjeoffh4z11204458_10206137529750606_422873119254073420_n.jpg', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(25) NOT NULL,
  `news_name` varchar(255) DEFAULT NULL,
  `news_details` text,
  `news_status` varchar(255) NOT NULL DEFAULT 'เผยแพร่',
  `imp_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `responsible_id` int(25) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_details`, `news_status`, `imp_time`, `responsible_id`) VALUES
(1, 'BIKE FUN RUN', '<table align="center" border="0" cellpadding="5" cellspacing="0" style="width:98%">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>25 ต.ค.58 ขอเชิญร่วมงานการกุศลประจำปี &ldquo;แคนเซอร์ แคร์&rdquo; (Cancer Care - BIKE FUN RUN) ครั้งที่ 8 ณ อุทยานหลวงราชพฤกษ์ จังหวัดเชียงใหม่ รับถ้วยรางวัลพระราชทานจากสมเด็จพระนางเจ้าสิริกิติ์ พระบรมราชินีนาถ</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>โฟร์ซีซั่นส์ รีสอร์ท เชียงใหม่ ร่วมกับ การท่องเที่ยวแห่งประเทศไทย สำนักงานเชียงใหม่ และอุทยานหลวงราชพฤกษ์ จัดงานการกุศลประจำปี &ldquo;แคนเซอร์ แคร์&rdquo; (Cancer Care - BIKE FUN RUN) ครั้งที่ 8 ในวันอาทิตย์ที่ 25 ตุลาคม 2558 ณ อุทยานหลวงราชพฤกษ์ จังหวัดเชียงใหม่ รายได้เพื่อสมทบทุนการวิจัยโรคมะเร็ง ศูนย์วิจัยโรคมะเร็งโลหิตวิทยาเเละศูนย์วิจัยพันธุศาสตร์โรคมะเร็ง โรงพยาบาลจุฬาลงกรณ์ สภากาชาดไทย บัตรราคา 299 บาท พร้อมเสื้อยืด เหรียญที่ระลึกเเละลุ้นรับรางวัล voucherห้องพักที่โรงเเรมโฟร์ซีซั่นส์สิงค์โปร์ โฟร์ซีซั่นส์โซล(ประเทศเกาหลี) โฟร์ซีซั่นส์ปูดง(ประเทศจีน) เเละโฟร์ซีซั่นส์สมุย เเละรางวัลตั๋วเครื่องบินหลากหลายเส้นทางจากสายการบินบางกอกเเอร์เวย์ส *** กลุ่มผู้เข้าร่วมในงานที่มีสมาชิกลงทะเบียนจำนวนมากที่สุดจะได้รับถ้วย รางวัลพระราชทานจากสมเด็จพระนางเจ้าสิริกิติ์พระบรมราชินีนาถ เพื่อเป็นที่ระลึกและเป็นเกียรติแก่องค์กร ร่วมสนุกเเละเป็นส่วนหนึ่งของกิจกรรมการกุศลกับเราได้ที่ 053-298-181 cancercare.chiangmai@fourseasons.com</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'เผยแพร่', '2015-10-14 08:07:20', 1),
(2, 'ครอบครัวสุขสันต์สร้างสรรค์สังคมไทย ประจำปี 2558', '<p><strong>26 กันยายน 2558 ขอเชิญร่วมกิจกรรม &ldquo;ครอบครัวสุขสันต์สร้างสรรค์สังคมไทย ประจำปี 2558&rdquo; ภายใต้โครงการ &ldquo;ครอบครัวสุขสันต์สมานฉันท์สังคมไทย&rdquo; ณ อุทยานหลวงราชพฤกษ์ จังหวัดเชียงใหม่</strong><br />\r\nศูนย์เสมารักษ์ประจำสำนักงานศึกษาธิการภาค 1 สำนักการลูกเสือ ยุวกาชาด และกิจการนักเรียน สำนักงานกระทรวงศึกษาธิการ ขอเชิญทุกท่านเข้าร่วมกิจกรรม &ldquo;ครอบครัวสุขสันต์สร้างสรรค์สังคมไทย ประจำปี 2558&rdquo; ภายใต้โครงการ &ldquo;ครอบครัวสุขสันต์สมานฉันท์สังคมไทย&rdquo; ในวันเสาร์ที่ 26 กันยายน 2558 ตั้งแต่เวลา 08.00-16.00 น. ณ อุทยานหลวงราชพฤกษ์ อำเภอเมือง จังหวัดเชียงใหม่ การจัดงานครั้งนี้เพื่อพัฒนาสถาบันครอบครัวให้เป็นครอบครัวที่มีความเข้ม แข็ง และอบอุ่นสร้างความสัมพันธ์ที่ดีเกิดความรู้ใหม่ และเรียนรู้ร่วมกันระหว่างสมาชิกในครอบครัว สร้างความเข้าใจในคุณค่าของความหลากหลายของวิธีการดำรงชีวิต และนำมาซึ่งความปรองดองสมานฉันท์ในสังคม กิจกรรมในงานประกอบด้วย กิจกรรมเวทีกลาง การแสดงจากเยาวชนในสังกัดกระทรวงศึกษาธิการ พิธีเปิด-ปิด การละเล่นต่าง ๆ การขับเสภา ศิลปินดารา และการเล่นเกมแจกของรางวัล กิจกรรมฐานการเรียนรู้ 4 ฐาน อาทิ ฐานทักษะชีวิตและการสร้างภูมิคุ้มกัน ฐานการคิดวิเคราะห์ ฐานเศรษฐกิจพอเพียง และฐานบทบาทหน้าที่ของครอบครัว และยังได้พบกับดาราชื่อดัง &quot;แพนเค้ก เขมนิจ และคุณแม่นวลนง จามิกรณ์&quot; / &quot;โดนัท ภัทรพลฒ์ Smart Boy 2013 และคุณแม่วาสนา เดชพงษ์วรานนท์&quot; / &quot;เฟร้นฟราย ธัญชนก มูลนิลตา Miss Thailand World 2015&quot; ชมการแสดงและการละเล่น ตลอดงานในแบบฉบับเยาวชนเชียงใหม่ สร้างสรรค์สังคมไทย สำหรับคนที่ลงทะเบียนร่วมงาน ตั้งแต่เวลา 08.00 น. เป็นต้นไป รับเสื้อยืดงาน &quot;ครอบครัวสุขสันต์ สร้างสรรค์สังคมไทย&quot; กว่า 2,500 ตัว (จนกว่าของจะหมด) พร้อมลุ้นรับทุนการศึกษาและของรางวัลอีกมากมาย แถมยังมีอาหาร เครื่องดื่ม ขนม บริการฟรี!! ตลอดงานอีกเพียบ ณ อาคารนิทรรศการ1-2 อุทยานหลวงราชพฤกษ์ จังหวัดเชียงใหม่ สอบถามรายละเอียดเพิ่มเติมได้ที่ Organize by MePrompt Agency and Media Tel. 053-221413 ต่อ 21 Fanpage : https://www.facebook.com/meprompt</p>\r\n', 'เผยแพร่', '2015-10-14 07:09:16', 1),
(3, 'Kid’s World มหัศจรรย์โลกของเด็ก ปี 3', '<p><strong>9-13 กันยายนนี้...มาร่วมเปิดโลกกว้างแห่งจินตนาการไร้ขอบเขต ในรูปแบบ &ldquo;Play and Learn&hellip;เรียนรู้จากการเล่น&rdquo; งาน &ldquo;Kid&rsquo;s World มหัศจรรย์โลกของเด็ก ปี 3&rdquo; ณ อุทยานหลวงราชพฤกษ์ จังหวัดเชียงใหม่</strong><br />\r\nอุทยานหลวงราชพฤกษ์ สถาบันวิจัยและพัฒนาพื้นที่สูง (องค์การมหาชน) ขอเชิญน้องๆ มาร่วมเปิดโลกกว้างแห่งจินตนาการไร้ขอบเขต ในรูปแบบ &ldquo;Play and Learn&hellip;เรียนรู้จากการเล่น&rdquo; ที่งาน &ldquo;Kid&rsquo;s World มหัศจรรย์โลกของเด็ก ปี3&rdquo; ระหว่างวันที่ 9 &ndash; 13 กันยายน 2558 ภายในงานน้องๆ จะได้ร่วมเปิดโลกกว้างและประสบการณ์ในการเรียนรู้ตามโซนต่างๆ อาทิ โซนการเรียนรู้และการผจญภัยตามสวนจากองค์กรชั้นนำของประเทศ โซนสัตว์เลี้ยงแสนรัก โซนศิลปะ โซนดนตรีและวัฒนธรรม โซนออกกำลังกาย โซนกิจกรรมการเรียนรู้จากหน่วยงานต่างๆ เพลิดเพลินกับนิทานในสวน พร้อมพบกับเหล่า Mascot อุทยานหลวงราชพฤกษ์ นำทีมโดย น้องคูนและผองเพื่อนที่จะมาร่วมสร้างความสนุกสนานให้กับน้องๆ ตลอดทั้งวันและลุ้นรับของรางวัลมากมาย ตั้งแต่เวลา 09.00 &ndash; 18.00 น. ณ อาคารนิทรรศการ 2 อุทยานหลวงราชพฤกษ์ จังหวัดเชียงใหม่ สอบถามเพิ่มเติมได้ที่หมายเลขโทรศัพท์ 053-114110-5</p>\r\n', 'เผยแพร่', '2015-10-13 07:29:41', 1),
(4, 'บัวสวรรค์', '<p><strong>&ldquo;บัวสวรรค์&rdquo; เบ่งบานโชยกลิ่นหอมละมุนที่สวนสมุนไพร</strong><br />\r\n&ldquo;บัวสวรรค์&rdquo; เบ่งบานโชยกลิ่นหอมละมุนที่สวนสมุนไพร &hellip;.. &ldquo;บัวสวรรค์&rdquo; หรือ &ldquo;กัตตาเวีย&rdquo; ชื่อวิทยาศาสตร์: Gustavia gracillima Miers วงศ์: LECYTHIDACEAE เป็นพืชดอกที่มีถิ่นกำเนิดมาจากตะวันออกกลาง แอฟริกาตะวันออก โคลัมเบีย คอสตาริกาและปานามา เป็นต้นไม้ที่ชอบแสงแดด สามารถปลูกกลางแจ้ง เป็นต้นไม้ที่โตช้า ดูแลง่าย ทนต่อสภาพอากาศบ้านเรา ให้ร่มเงา เหมาะที่จะปลูกบังแสงแดดให้กับตัวบ้าน บัวสวรรค์มักออกดอกในช่วงฤดูฝน ดอกมีกลีบดอกหนา สีชมพูอ่อน ดอกคล้ายดอกบัวหลวง มีเส้นเกสรจำนวนมากอยู่ตรงกลาง เมื่อกลีบดอกและเกสรร่วงจะเหลือแต่ด้านในที่เป็นฝักสีเขียว น้ำหวานจากดอกมีความหวานมาก พอได้รับแสงแดดยามสาย ดอกก็จะคลี่กลีบเบ่งบานโชยกลิ่นหอมละมุน สำหรับผลบัวสวรรค์จะมีลักษณะคล้ายรูประฆังคว่ำ มีเนื้อกลมคล้ายลูกข่าง ในสมัยโบราณชาวอินเดียนแดงใช้ใบมาต้มทำยาแก้พิษจากการถูกธนูพิษยิงและแก้พิษ ไข้ แก้หวัด หรือน้ำจากก้านดอกอ่อน นำไปหมักแล้วกลั่นรับประทาน บำรุงโลหิตและบำรุงธาตุ หากนักท่องเที่ยวท่านใดที่เข้ามาเที่ยวชมอุทยานหลวงราชพฤกษ์ในช่วงนี้ อย่าพลาดชมความสวยงามของดอกบัวสวรรค์ที่กำลังเบ่งบานโชยกลิ่นหอมให้นักท่อง เที่ยวได้ชื่นชมและถ่ายภาพตรงบริเวณสวนสมุนไพร อุทยานหลวงราชพฤกษ์ จังหวัดเชียงใหม่</p>\r\n', 'เผยแพร่', '2015-10-13 09:17:40', 1),
(5, ' 12 สิงหา มหาราชินี', '<p><strong>ขอ เชิญร่วมกิจกรรมเฉลิมพระเกียรติ สมเด็จพระนางเจ้าสิริกิติ์ พระบรมราชินีนาถ พร้อมร่วมพิธีจุดเทียนชัยถวายพระพร 12 สิงหา และชมพลุเฉลิมพระเกียรติ ณ อุทยานหลวงราชพฤกษ์ จังหวัดเชียงใหม่</strong><br />\r\nในวันที่ 12 สิงหาคม 2558 อุทยานหลวงราชพฤกษ์ สถาบันวิจัยและพัฒนาพื้นที่สูง (องค์การมหาชน) จัดงานเฉลิมพระเกียรติ สมเด็จพระนางเจ้าสิริกิติ์ พระบรมราชินีนาถ เนื่องในโอกาสมหามงคลเฉลิมพระชนมพรรษา 83 พรรษา 12 สิงหาคม 2558 โดยมีกิจกรรมตลอดทั้งวัน เริ่มตั้งแต่เวลา 9 โมงเช้า จะมีกิจกรรม ปลูกข้าววันแม่ พร้อมรับพันธุ์ข้าวพระราชทานฯ จำนวน 2,000 ถุง ณ สวนเกษตรทฤษฎีใหม่ และในเวลา 6 โมงเย็น จะมีพิธีถวายพานพุ่มของผู้บริหาร บุคลากรของหน่วยงานต่างๆ ทั้งภาครัฐและเอกชน พร้อมพิธีจุดเทียนชัยถวายพระพรชัยมงคลและพลุเฉลิมพระเกียรติ ตั้งแต่เวลา 18.00 น. &ndash; 20.00 น. ณ บริเวณหน้าหอคำหลวง สำหรับประชาชนที่เข้ามาร่วมพิธีดังกล่าวไม่ต้องเสียค่าใช้จ่าย ...นอกจากชมความสวยงามของดอกปทุมมาแล้วยังจะได้ชมงานโครงการเทิดพระเกียรติ &ldquo;ใช้น้ำอย่างรู้คุณค่า ปวงประชาถวายพ่อของแผ่นดิน&rdquo; ระหว่างวันที่ 1-15 สิงหาคม 2558 ณ อาคารนิทรรศการ2 โดยมีหน่วยงานภายในกระทรวงเกษตรและสหกรณ์และกระทรวงทรัพยากรธรรมชาติและสิ่ง แวดล้อม ร่วมจัดงานรวมทั้งสิ้น 21 หน่วยงาน ภายใต้แนวคิด &ldquo;การวิจัยและพัฒนาเพื่อประโยชน์สุขของประชาชน&rdquo; ภายในงานมีการจัดแสดงนิทรรศการเทิดพระเกียรติฯ เรื่องการใช้น้ำอย่างรู้คุณค่า/ นิทรรศการแสดงผลงานวิจัยที่พัฒนานำไปใช้ประโยชน์ได้จริง/ การเสวนาทางวิชาการ/ การจำหน่ายผลิตภัณฑ์และผลิตผลจากหน่วยงานต่าง ๆ พร้อมรับของที่ระลึกมากมาย ...สิทธิพิเศษสำหรับคู่แม่ลูก &ldquo;วันเดียวเที่ยวสวนฟรี&rdquo; คู่แม่ลูกจูงมือกันเข้าชมสวนโดยไม่ต้องเสียค่าใช้จ่าย สำหรับครอบครัวหรือผู้ติดตามซื้อบัตรเข้าชมสวนในราคาพิเศษ 25 บาท (เฉพาะวันที่ 12 สิงหาคม 2558 เท่านั้น) และในวันที่ 16 สิงหาคม 2558 ทางอุทยานหลวงราชพฤกษ์จะเปิดให้ปั่นจักรยานในสวนฟรีตลอดทั้งวัน เพื่อเป็นการส่งเสริมกิจกรรม Bike for mom ปั่นเพื่อแม่ อีกด้วย สอบถามรายละเอียดเพิ่มเติมได้ที่ 053-114110-5</p>\r\n', 'เผยแพร่', '2015-10-14 08:19:50', 1),
(6, 'ทดสอบ', '<p>รถ</p>\r\n', 'เผยแพร่', '2015-10-19 07:07:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(25) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_details` text,
  `product_status` varchar(255) NOT NULL DEFAULT 'เผยแพร่',
  `imp_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `responsible_id` int(25) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_details`, `product_status`, `imp_time`, `responsible_id`) VALUES
(1, 'หมวก', '<table align="center" border="0" cellpadding="4" cellspacing="0" style="height:328px; width:806px">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>รหัสสินค้า :</p>\r\n			</td>\r\n			<td>CAP00001</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ประเภทสินค้า :</td>\r\n			<td>หมวก</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>ชื่อสินค้า :</p>\r\n			</td>\r\n			<td>หมวก</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>รายละเอียด :</p>\r\n			</td>\r\n			<td>\r\n			<p>ปักลายสัญลักษณ์อุทยานหลวงราชพฤกษ์</p>\r\n\r\n			<p>สี: ฟ้า</p>\r\n\r\n			<p>ขนาด: ฟรีไซส์</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>หน่วย:</td>\r\n			<td>ใบ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>ราคา :</p>\r\n			</td>\r\n			<td>149 บาท</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align="center" border="0" cellpadding="4" cellspacing="0" style="height:358px; width:806px">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>รหัสสินค้า :</p>\r\n			</td>\r\n			<td>CAP00002</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ประเภทสินค้า :</td>\r\n			<td>หมวก</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>ชื่อสินค้า :</p>\r\n			</td>\r\n			<td>หมวก</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>รายละเอียด :</p>\r\n			</td>\r\n			<td>\r\n			<p>ปักลายสัญลักษณ์อุทยานหลวงราชพฤกษ์</p>\r\n\r\n			<p>สี: ม่วง</p>\r\n\r\n			<p>ขนาด: ฟรีไซส์</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>หน่วย:</td>\r\n			<td>ใบ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>ราคา :</p>\r\n			</td>\r\n			<td>149 บาท</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'เผยแพร่', '2015-10-19 06:54:31', 2),
(2, 'กระเป๋า', '<table align="center" border="0" cellpadding="4" cellspacing="0" style="width:98%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>รหัสสินค้า :</p>\r\n			</td>\r\n			<td>BAG</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ประเภทสินค้า :</td>\r\n			<td>กระเป๋า</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>ชื่อสินค้า :</p>\r\n			</td>\r\n			<td>กระเป๋าผ้าสีเขียวหยก</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>รายละเอียด :</p>\r\n			</td>\r\n			<td>\r\n			<p>กระเป๋าผ้า ขนาด 12x13 นิ้ว สีเขียวหยก</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>หน่วย:</td>\r\n			<td>ใบ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>ราคา :</p>\r\n			</td>\r\n			<td>149 บาท</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'เผยแพร่', '2015-10-14 15:18:09', 2),
(3, 'หมาน้อย', '<p>หมาน้อยน่ารัก</p>\r\n', 'เผยแพร่', '2015-10-15 07:21:14', 2),
(4, 'ทดสอบ222', '<p>ทดสอบ222</p>\r\n', 'เผยแพร่', '2015-10-19 07:08:17', 2);

-- --------------------------------------------------------

--
-- Table structure for table `responsible`
--

CREATE TABLE `responsible` (
  `responsible_id` int(25) NOT NULL,
  `responsible_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `responsible`
--

INSERT INTO `responsible` (`responsible_id`, `responsible_name`) VALUES
(1, 'news'),
(2, 'product'),
(3, 'social');

-- --------------------------------------------------------

--
-- Table structure for table `respon_user`
--

CREATE TABLE `respon_user` (
  `respon_id` int(25) NOT NULL,
  `responsible_id` int(25) NOT NULL,
  `id_user` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `social_id` int(25) NOT NULL,
  `social_name` varchar(255) DEFAULT NULL,
  `social_url` varchar(255) DEFAULT NULL,
  `responsible_id` int(25) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(25) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `user`, `pass`, `status`, `name`, `surname`) VALUES
(1, 'thesis_cpe', '267c500e3c013650d99992dba1aa0c9e', 'admin', 'Witthayaniphon', 'Thaenthong');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `FKfile205047` (`news_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `FKnews363463` (`responsible_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FKproduct511210` (`responsible_id`);

--
-- Indexes for table `responsible`
--
ALTER TABLE `responsible`
  ADD PRIMARY KEY (`responsible_id`);

--
-- Indexes for table `respon_user`
--
ALTER TABLE `respon_user`
  ADD PRIMARY KEY (`respon_id`),
  ADD KEY `FKrespon_use406357` (`responsible_id`),
  ADD KEY `FKrespon_use920463` (`id_user`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`social_id`),
  ADD KEY `FKsocial933916` (`responsible_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `file_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `responsible`
--
ALTER TABLE `responsible`
  MODIFY `responsible_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `file`
--
ALTER TABLE `file`
  ADD CONSTRAINT `FKfile205047` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`),
  ADD CONSTRAINT `file_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `FKnews363463` FOREIGN KEY (`responsible_id`) REFERENCES `responsible` (`responsible_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FKproduct511210` FOREIGN KEY (`responsible_id`) REFERENCES `responsible` (`responsible_id`);

--
-- Constraints for table `respon_user`
--
ALTER TABLE `respon_user`
  ADD CONSTRAINT `FKrespon_use406357` FOREIGN KEY (`responsible_id`) REFERENCES `responsible` (`responsible_id`),
  ADD CONSTRAINT `FKrespon_use920463` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `social`
--
ALTER TABLE `social`
  ADD CONSTRAINT `FKsocial933916` FOREIGN KEY (`responsible_id`) REFERENCES `responsible` (`responsible_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
