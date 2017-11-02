-- phpMyAdmin SQL Dump
-- version 4.8.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: 192.168.30.23
-- Generation Time: 2017-11-02 05:03:55
-- 服务器版本： 8.0.2-dmr
-- PHP Version: 7.0.19-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ilearnSB`
--

-- --------------------------------------------------------

--
-- 表的结构 `course`
--

CREATE TABLE `course` (
  `CRN` char(8) NOT NULL,
  `courseName` varchar(30) DEFAULT NULL,
  `courseSection` varchar(30) DEFAULT NULL,
  `teacher` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `course`
--

INSERT INTO `course` (`CRN`, `courseName`, `courseSection`, `teacher`) VALUES
('03468', 'CSCI5000', 'B', 'Gabriel'),
('06450', 'CSCI3000', 'A', 'Callum'),
('10262', 'ENGL2000', 'B', 'Callum'),
('26232', 'CSCI5000', 'D', 'Andrew'),
('27280', 'ENGL2000', 'C', 'Malik'),
('45842', 'CSCI5000', 'C', 'Rooney'),
('55586', 'CSCI4000', 'D', 'Wing'),
('58015', 'MATH3000', 'C', 'Deacon'),
('61204', 'CSCI4000', 'A', 'Marsden'),
('66696', 'CSCI3000', 'B', 'Owen'),
('67789', 'CSCI5000', 'A', 'Harrison'),
('71060', 'CSCI3000', 'C', 'Brady'),
('71516', 'ENGL2000', 'A', 'Chadwick'),
('77824', 'MATH3000', 'D', 'Tanner'),
('85105', 'MATH3000', 'B', 'Brian'),
('86806', 'CSCI4000', 'C', 'Clinton'),
('91446', 'CSCI3000', 'D', 'Raymond'),
('96945', 'CSCI4000', 'B', 'Leroy'),
('97949', 'ENGL2000', 'D', 'John'),
('99976', 'MATH3000', 'A', 'Dolan');

-- --------------------------------------------------------

--
-- 表的结构 `register`
--

CREATE TABLE `register` (
  `CRN` char(8) NOT NULL,
  `coursename` varchar(10) NOT NULL,
  `courseSecton` char(1) NOT NULL,
  `firstname` varchar(10) NOT NULL,
  `lastname` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `Student`
--

CREATE TABLE `Student` (
  `Studentid` int(11) NOT NULL,
  `firstName` varchar(10) NOT NULL,
  `lastName` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `Student`
--

INSERT INTO `Student` (`Studentid`, `firstName`, `lastName`, `password`) VALUES
(4, 'Pamela', 'Jescie', 'XUQ98BDB7TU'),
(5, 'Alexa', 'Ramona', 'WZP71VHW8JO'),
(6, 'Allegra', 'Claire', 'SCC26PSY3IJ'),
(7, 'Kimberley', 'Kai', 'MPY52CMW5DA'),
(8, 'Alyssa', 'Whilemina', 'SYO27ZVM1JU'),
(9, 'Hayley', 'Ima', 'BUV90BWI3ZV'),
(10, 'Melyssa', 'Robin', 'SRB75YNH5SD'),
(11, 'Macy', 'Linda', 'OOC73WFT1IJ'),
(12, 'Jade', 'Adele', 'CRE68ZZX4DN'),
(13, 'Germane', 'Gloria', 'EIT77OIR9MP'),
(14, 'Regan', 'Jena', 'XUR87GBX6ZR'),
(15, 'Kylynn', 'Latifah', 'YFO25KRS2QQ'),
(16, 'Hollee', 'Quynn', 'CKL85VOA5GY'),
(17, 'Carla', 'Daria', 'HYT29JOP8DD'),
(18, 'Yen', 'Ella', 'HZF72GVQ0HD'),
(19, 'Lisandra', 'Angelica', 'NDW28RPR5SV'),
(20, 'Sigourney', 'Candice', 'VDQ27HZR4NB'),
(21, 'Fay', 'Yolanda', 'SYB79UFH0LW'),
(22, 'Hyacinth', 'Justine', 'DUU59ZKQ6NP'),
(23, 'Alfreda', 'Chastity', 'NRP85TUP5WM'),
(24, 'Ima', 'Kameko', 'YZF99CKS4WO'),
(25, 'Gillian', 'Charissa', 'ZIG47YSH9HY'),
(26, 'Quynn', 'Claire', 'ZBK14HHB6YM'),
(27, 'Kerry', 'Ingrid', 'HXO60KQG2YX'),
(28, 'Sierra', 'Lacota', 'QIL70TCI2XY'),
(29, 'Zorita', 'Jamalia', 'YTD81UDV3CW'),
(30, 'Eve', 'Xaviera', 'QXG28JKG5NV'),
(31, 'Jacqueline', 'Nicole', 'ZVU25GEH3PO'),
(32, 'Casey', 'Robin', 'QNZ19CEA3PM'),
(33, 'Adrienne', 'Amethyst', 'XME36BDW4KL'),
(34, 'Amethyst', 'Callie', 'ZIM28YWT4OO'),
(35, 'Maggy', 'Callie', 'KQV01ZZZ1OP'),
(36, 'Molly', 'Catherine', 'CAB22UXP1NG'),
(37, 'Leila', 'Kelsie', 'UMS97RHJ7SX'),
(38, 'Lenore', 'Danielle', 'CIX76SBF7IE'),
(39, 'Eliana', 'Regan', 'CLK81RPC3TV'),
(40, 'Remedios', 'Uta', 'ZZO47VVN9YT'),
(41, 'Pamela', 'Jescie', 'XUQ98BDB7TU'),
(42, 'Alexa', 'Ramona', 'WZP71VHW8JO'),
(43, 'Allegra', 'Claire', 'SCC26PSY3IJ'),
(44, 'Kimberley', 'Kai', 'MPY52CMW5DA'),
(45, 'Alyssa', 'Whilemina', 'SYO27ZVM1JU'),
(46, 'Hayley', 'Ima', 'BUV90BWI3ZV'),
(47, 'Melyssa', 'Robin', 'SRB75YNH5SD'),
(48, 'Macy', 'Linda', 'OOC73WFT1IJ'),
(49, 'Eleanor', 'Cheryl', 'JGU52XNH9IX'),
(50, 'Jade', 'Adele', 'CRE68ZZX4DN'),
(51, 'Germane', 'Gloria', 'EIT77OIR9MP'),
(52, 'Regan', 'Jena', 'XUR87GBX6ZR'),
(53, 'Kylynn', 'Latifah', 'YFO25KRS2QQ'),
(54, 'Hollee', 'Quynn', 'CKL85VOA5GY'),
(55, 'Carla', 'Daria', 'HYT29JOP8DD'),
(56, 'Yen', 'Ella', 'HZF72GVQ0HD'),
(57, 'Lisandra', 'Angelica', 'NDW28RPR5SV'),
(58, 'Sigourney', 'Candice', 'VDQ27HZR4NB'),
(59, 'Raya', 'Keiko', 'OWE63IWN6YH'),
(60, 'Clare', 'Alfreda', 'WFI76SSV7CJ'),
(61, 'Orli', 'Hayfa', 'TFO88GVE1KH'),
(62, 'Bell', 'Breanna', 'VGX56JJR2LQ'),
(63, 'Fay', 'Yolanda', 'SYB79UFH0LW'),
(64, 'Hyacinth', 'Justine', 'DUU59ZKQ6NP'),
(65, 'Lesley', 'Janna', 'PCQ49RNR8LL'),
(66, 'Alfreda', 'Chastity', 'NRP85TUP5WM'),
(67, 'Ainsley', 'Rachel', 'DOB77UHD1SU'),
(68, 'Ima', 'Kameko', 'YZF99CKS4WO'),
(69, 'Gillian', 'Charissa', 'ZIG47YSH9HY'),
(70, 'Quynn', 'Claire', 'ZBK14HHB6YM'),
(71, 'Germaine', 'Zenia', 'PDV73IXW8FR'),
(72, 'Belle', 'Shannon', 'QNN92XQS7IA'),
(73, 'Harriet', 'Hollee', 'TRN00ILS5BP'),
(74, 'Kerry', 'Ingrid', 'HXO60KQG2YX'),
(75, 'Leila', 'Denise', 'CVH16CXD1VV'),
(76, 'Sierra', 'Lacota', 'QIL70TCI2XY'),
(77, 'Zorita', 'Jamalia', 'YTD81UDV3CW'),
(78, 'Eve', 'Xaviera', 'QXG28JKG5NV'),
(79, 'Jacqueline', 'Nicole', 'ZVU25GEH3PO'),
(80, 'Kiara', 'Heather', 'ESF81POH9ML'),
(81, 'Casey', 'Robin', 'QNZ19CEA3PM'),
(82, 'Adrienne', 'Amethyst', 'XME36BDW4KL'),
(83, 'Amethyst', 'Callie', 'ZIM28YWT4OO'),
(84, 'Carissa', 'Aretha', 'KUG05HQK7XT'),
(85, 'Liberty', 'Alexis', 'CPL27JVU3MN'),
(86, 'Maggy', 'Callie', 'KQV01ZZZ1OP'),
(87, 'Molly', 'Catherine', 'CAB22UXP1NG'),
(88, 'Leila', 'Kelsie', 'UMS97RHJ7SX'),
(89, 'Lenore', 'Danielle', 'CIX76SBF7IE'),
(90, 'Eliana', 'Regan', 'CLK81RPC3TV'),
(91, 'Remedios', 'Uta', 'ZZO47VVN9YT'),
(92, 'Lavinia', 'Amena', 'ERV97TWK3VL'),
(93, 'Kameko', 'Barbara', 'BHW44OPM8VB'),
(94, 'Ciara', 'Kim', 'GZO39USZ0DZ'),
(95, 'Mona', 'Jennifer', 'XRD16LNT9GQ'),
(96, 'Dakota', 'Kylynn', 'VUG82FRW4WQ'),
(97, 'Hanae', 'Charity', 'FQS87IZC6SN'),
(98, 'Georgia', 'Amelia', 'VTP04DPL7OC'),
(99, 'Jayme', 'Colette', 'URM25UDA9PC'),
(100, 'Hyacinth', 'Roanna', 'OMJ87QMP8NU'),
(101, 'Danielle', 'Olympia', 'NJK21WQD1SP'),
(102, 'Quintessa', 'Melodie', 'AWJ61XIA5EU'),
(103, 'Halee', 'Daria', 'OFF47INS0ZH'),
(104, 'Jasmine', 'Kyla', 'SFV85SVJ1JA'),
(105, 'Anne', 'Quail', 'YSG85UAF8QN'),
(106, 'Hannah', 'Iona', 'KNC39JQA9UU'),
(107, 'Madeline', 'Alma', 'CYR08GSB7TA'),
(108, 'Zorita', 'Wynter', 'LOF82VJP2ZA'),
(109, 'Angelica', 'Zephr', 'HAC12ZQR5PF'),
(110, 'Veronica', 'Jasmine', 'FEX90OIE9NJ'),
(111, 'Uta', 'Michelle', 'EKQ37PYZ0HP'),
(112, 'Quynn', 'Aubrey', 'CHZ33YSG0YG'),
(113, 'Joy', 'Jillian', 'YFD23CUX5TB'),
(114, 'Leila', 'Farrah', 'HMC49DUY9OW'),
(115, 'Lana', 'Paloma', 'PZC47IGK0QP'),
(116, 'Bo', 'Carla', 'YVO42NQS9EL'),
(117, 'Mari', 'Mona', 'PPG96ORK9ZO'),
(118, 'Sybill', 'Daria', 'FUH68FBS7PT'),
(119, 'Elizabeth', 'Wilma', 'GWR10ZDY4RM'),
(120, 'Camille', 'Kylie', 'PTC05LSP4OK'),
(121, 'Mara', 'Dai', 'YPY17BKS6OA'),
(122, 'Jessamine', 'Autumn', 'HTA78AFS6KB'),
(123, 'Megan', 'Wanda', 'XEE90QQC1QF'),
(124, 'Jane', 'Bo', 'JWU19OFL2RR'),
(125, 'Olga', 'Quincy', 'NEB24FRT7GB'),
(126, 'Katelyn', 'Cleo', 'FEP68TCX5CV'),
(127, 'Imogene', 'Hillary', 'LWH23XVY6SV'),
(128, 'Aiko', 'Abigail', 'GOB61QLV9YY'),
(129, 'Renee', 'Sonya', 'MXZ61KJN8JA'),
(130, 'Odette', 'Alma', 'YZD63RYZ8SI');

-- --------------------------------------------------------

--
-- 表的结构 `teacher`
--

CREATE TABLE `teacher` (
  `teacherId` int(11) NOT NULL,
  `firstname` varchar(10) DEFAULT NULL,
  `lastName` varchar(10) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `teacher`
--

INSERT INTO `teacher` (`teacherId`, `firstname`, `lastName`, `password`) VALUES
(131, 'Nichole', 'Leah', 'JBC55FBA5AI'),
(132, 'Isabelle', 'Sopoline', 'LMW86KFT0JH'),
(133, 'Maisie', 'Reagan', 'ZHI00TBA8HI'),
(134, 'Madeson', 'Willa', 'BEK07YKP8EJ'),
(135, 'Aileen', 'Christine', 'AZS16WVR7GV'),
(136, 'Tamara', 'Carissa', 'OXC60HXW7GL'),
(137, 'Kitra', 'Suki', 'IJR56MTB6XU'),
(138, 'Tasha', 'Kristen', 'SPT18EEM6OD'),
(139, 'Naida', 'Shelley', 'YSX90WOV5HY'),
(140, 'Astra', 'Medge', 'XNU35PRR7UA');

-- --------------------------------------------------------

--
-- 表的结构 `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(10) NOT NULL,
  `lastName` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `Users`
--

INSERT INTO `Users` (`id`, `firstname`, `lastName`, `email`, `password`) VALUES
(4, 'Pamela', 'Jescie', 'sociis@enim.ca', 'XUQ98BDB7TU'),
(5, 'Alexa', 'Ramona', 'Phasellus.dapibus@primisin.net', 'WZP71VHW8JO'),
(6, 'Allegra', 'Claire', 'interdum@Vestibulum.org', 'SCC26PSY3IJ'),
(7, 'Kimberley', 'Kai', 'malesuada@necorciDonec.ca', 'MPY52CMW5DA'),
(8, 'Alyssa', 'Whilemina', 'magna.nec@lacusMauris.ca', 'SYO27ZVM1JU'),
(9, 'Hayley', 'Ima', 'lobortis.quam@nullaIn.co.uk', 'BUV90BWI3ZV'),
(10, 'Melyssa', 'Robin', 'Fusce@nuncQuisqueornare.co.uk', 'SRB75YNH5SD'),
(11, 'Macy', 'Linda', 'malesuada.augue@sitamet.co.uk', 'OOC73WFT1IJ'),
(12, 'Jade', 'Adele', 'id.ante@blandit.com', 'CRE68ZZX4DN'),
(13, 'Germane', 'Gloria', 'vestibulum.nec@justo.edu', 'EIT77OIR9MP'),
(14, 'Regan', 'Jena', 'eu@elitpharetra.com', 'XUR87GBX6ZR'),
(15, 'Kylynn', 'Latifah', 'non.dui@Proin.edu', 'YFO25KRS2QQ'),
(16, 'Hollee', 'Quynn', 'congue.a@ametmetus.com', 'CKL85VOA5GY'),
(17, 'Carla', 'Daria', 'dolor@eratnonummyultricies.org', 'HYT29JOP8DD'),
(18, 'Yen', 'Ella', 'risus@Duiselementumdui.co.uk', 'HZF72GVQ0HD'),
(19, 'Lisandra', 'Angelica', 'quam.elementum@pede.org', 'NDW28RPR5SV'),
(20, 'Sigourney', 'Candice', 'tempor.erat@ac.edu', 'VDQ27HZR4NB'),
(21, 'Fay', 'Yolanda', 'at.augue@rhoncusProin.com', 'SYB79UFH0LW'),
(22, 'Hyacinth', 'Justine', 'luctus.ipsum.leo@nec.ca', 'DUU59ZKQ6NP'),
(23, 'Alfreda', 'Chastity', 'a.odio@mollisvitaeposuere.ca', 'NRP85TUP5WM'),
(24, 'Ima', 'Kameko', 'commodo@Inornaresagittis.org', 'YZF99CKS4WO'),
(25, 'Gillian', 'Charissa', 'Duis@nonummyipsumnon.edu', 'ZIG47YSH9HY'),
(26, 'Quynn', 'Claire', 'Sed@Phasellusfermentum.org', 'ZBK14HHB6YM'),
(27, 'Kerry', 'Ingrid', 'risus.Nunc@sem.ca', 'HXO60KQG2YX'),
(28, 'Sierra', 'Lacota', 'ac@egestasrhoncus.edu', 'QIL70TCI2XY'),
(29, 'Zorita', 'Jamalia', 'magna@penatibuset.org', 'YTD81UDV3CW'),
(30, 'Eve', 'Xaviera', 'turpis@fringilla.net', 'QXG28JKG5NV'),
(31, 'Jacqueline', 'Nicole', 'a@sollicitudin.edu', 'ZVU25GEH3PO'),
(32, 'Casey', 'Robin', 'augue.id.ante@veliteget.org', 'QNZ19CEA3PM'),
(33, 'Adrienne', 'Amethyst', 'elit@egestasurnajusto.net', 'XME36BDW4KL'),
(34, 'Amethyst', 'Callie', 'arcu.Morbi.sit@Maecenas.org', 'ZIM28YWT4OO'),
(35, 'Maggy', 'Callie', 'magna@in.net', 'KQV01ZZZ1OP'),
(36, 'Molly', 'Catherine', 'nec@amet.net', 'CAB22UXP1NG'),
(37, 'Leila', 'Kelsie', 'a.arcu@sit.ca', 'UMS97RHJ7SX'),
(38, 'Lenore', 'Danielle', 'Proin.vel@odioAliquam.edu', 'CIX76SBF7IE'),
(39, 'Eliana', 'Regan', 'diam.eu.dolor@cursus.ca', 'CLK81RPC3TV'),
(40, 'Remedios', 'Uta', 'Ut.semper.pretium@est.net', 'ZZO47VVN9YT'),
(41, 'Pamela', 'Jescie', 'sociis@enim.ca', 'XUQ98BDB7TU'),
(42, 'Alexa', 'Ramona', 'Phasellus.dapibus@primisin.net', 'WZP71VHW8JO'),
(43, 'Allegra', 'Claire', 'interdum@Vestibulum.org', 'SCC26PSY3IJ'),
(44, 'Kimberley', 'Kai', 'malesuada@necorciDonec.ca', 'MPY52CMW5DA'),
(45, 'Alyssa', 'Whilemina', 'magna.nec@lacusMauris.ca', 'SYO27ZVM1JU'),
(46, 'Hayley', 'Ima', 'lobortis.quam@nullaIn.co.uk', 'BUV90BWI3ZV'),
(47, 'Melyssa', 'Robin', 'Fusce@nuncQuisqueornare.co.uk', 'SRB75YNH5SD'),
(48, 'Macy', 'Linda', 'malesuada.augue@sitamet.co.uk', 'OOC73WFT1IJ'),
(49, 'Eleanor', 'Cheryl', 'justo.Proin@felisDonectempor.com', 'JGU52XNH9IX'),
(50, 'Jade', 'Adele', 'id.ante@blandit.com', 'CRE68ZZX4DN'),
(51, 'Germane', 'Gloria', 'vestibulum.nec@justo.edu', 'EIT77OIR9MP'),
(52, 'Regan', 'Jena', 'eu@elitpharetra.com', 'XUR87GBX6ZR'),
(53, 'Kylynn', 'Latifah', 'non.dui@Proin.edu', 'YFO25KRS2QQ'),
(54, 'Hollee', 'Quynn', 'congue.a@ametmetus.com', 'CKL85VOA5GY'),
(55, 'Carla', 'Daria', 'dolor@eratnonummyultricies.org', 'HYT29JOP8DD'),
(56, 'Yen', 'Ella', 'risus@Duiselementumdui.co.uk', 'HZF72GVQ0HD'),
(57, 'Lisandra', 'Angelica', 'quam.elementum@pede.org', 'NDW28RPR5SV'),
(58, 'Sigourney', 'Candice', 'tempor.erat@ac.edu', 'VDQ27HZR4NB'),
(59, 'Raya', 'Keiko', 'Vestibulum.ante.ipsum@vestibulumMauris.co.uk', 'OWE63IWN6YH'),
(60, 'Clare', 'Alfreda', 'elit.pretium@interdumCurabiturdictum.net', 'WFI76SSV7CJ'),
(61, 'Orli', 'Hayfa', 'volutpat.ornare@hendreritDonec.org', 'TFO88GVE1KH'),
(62, 'Bell', 'Breanna', 'enim@Praesentinterdumligula.co.uk', 'VGX56JJR2LQ'),
(63, 'Fay', 'Yolanda', 'at.augue@rhoncusProin.com', 'SYB79UFH0LW'),
(64, 'Hyacinth', 'Justine', 'luctus.ipsum.leo@nec.ca', 'DUU59ZKQ6NP'),
(65, 'Lesley', 'Janna', 'montes.nascetur@perconubianostra.org', 'PCQ49RNR8LL'),
(66, 'Alfreda', 'Chastity', 'a.odio@mollisvitaeposuere.ca', 'NRP85TUP5WM'),
(67, 'Ainsley', 'Rachel', 'aliquet.vel.vulputate@auctor.edu', 'DOB77UHD1SU'),
(68, 'Ima', 'Kameko', 'commodo@Inornaresagittis.org', 'YZF99CKS4WO'),
(69, 'Gillian', 'Charissa', 'Duis@nonummyipsumnon.edu', 'ZIG47YSH9HY'),
(70, 'Quynn', 'Claire', 'Sed@Phasellusfermentum.org', 'ZBK14HHB6YM'),
(71, 'Germaine', 'Zenia', 'Vivamus@ultriciesligulaNullam.org', 'PDV73IXW8FR'),
(72, 'Belle', 'Shannon', 'dolor.egestas@Suspendissealiquet.edu', 'QNN92XQS7IA'),
(73, 'Harriet', 'Hollee', 'mauris.rhoncus@atsemmolestie.net', 'TRN00ILS5BP'),
(74, 'Kerry', 'Ingrid', 'risus.Nunc@sem.ca', 'HXO60KQG2YX'),
(75, 'Leila', 'Denise', 'Proin.vel.nisl@Aliquameratvolutpat.org', 'CVH16CXD1VV'),
(76, 'Sierra', 'Lacota', 'ac@egestasrhoncus.edu', 'QIL70TCI2XY'),
(77, 'Zorita', 'Jamalia', 'magna@penatibuset.org', 'YTD81UDV3CW'),
(78, 'Eve', 'Xaviera', 'turpis@fringilla.net', 'QXG28JKG5NV'),
(79, 'Jacqueline', 'Nicole', 'a@sollicitudin.edu', 'ZVU25GEH3PO'),
(80, 'Kiara', 'Heather', 'aliquet.lobortis@Duisatlacus.ca', 'ESF81POH9ML'),
(81, 'Casey', 'Robin', 'augue.id.ante@veliteget.org', 'QNZ19CEA3PM'),
(82, 'Adrienne', 'Amethyst', 'elit@egestasurnajusto.net', 'XME36BDW4KL'),
(83, 'Amethyst', 'Callie', 'arcu.Morbi.sit@Maecenas.org', 'ZIM28YWT4OO'),
(84, 'Carissa', 'Aretha', 'eros.Proin.ultrices@mollisdui.ca', 'KUG05HQK7XT'),
(85, 'Liberty', 'Alexis', 'Nunc.laoreet.lectus@afacilisis.net', 'CPL27JVU3MN'),
(86, 'Maggy', 'Callie', 'magna@in.net', 'KQV01ZZZ1OP'),
(87, 'Molly', 'Catherine', 'nec@amet.net', 'CAB22UXP1NG'),
(88, 'Leila', 'Kelsie', 'a.arcu@sit.ca', 'UMS97RHJ7SX'),
(89, 'Lenore', 'Danielle', 'Proin.vel@odioAliquam.edu', 'CIX76SBF7IE'),
(90, 'Eliana', 'Regan', 'diam.eu.dolor@cursus.ca', 'CLK81RPC3TV'),
(91, 'Remedios', 'Uta', 'Ut.semper.pretium@est.net', 'ZZO47VVN9YT'),
(92, 'Lavinia', 'Amena', 'libero.nec@enimnec.edu', 'ERV97TWK3VL'),
(93, 'Kameko', 'Barbara', 'Nunc@ametdiameu.org', 'BHW44OPM8VB'),
(94, 'Ciara', 'Kim', 'nunc.Quisque@euneque.org', 'GZO39USZ0DZ'),
(95, 'Mona', 'Jennifer', 'lacinia@ornareFuscemollis.ca', 'XRD16LNT9GQ'),
(96, 'Dakota', 'Kylynn', 'rutrum.Fusce@amet.ca', 'VUG82FRW4WQ'),
(97, 'Hanae', 'Charity', 'cursus.et.eros@parturientmontes.com', 'FQS87IZC6SN'),
(98, 'Georgia', 'Amelia', 'sodales.nisi@et.edu', 'VTP04DPL7OC'),
(99, 'Jayme', 'Colette', 'montes.nascetur@arcuet.com', 'URM25UDA9PC'),
(100, 'Hyacinth', 'Roanna', 'dictum@orciluctuset.edu', 'OMJ87QMP8NU'),
(101, 'Danielle', 'Olympia', 'et.malesuada.fames@ultrices.co.uk', 'NJK21WQD1SP'),
(102, 'Quintessa', 'Melodie', 'tellus.Suspendisse.sed@eratEtiam.ca', 'AWJ61XIA5EU'),
(103, 'Halee', 'Daria', 'ac@nonjustoProin.com', 'OFF47INS0ZH'),
(104, 'Jasmine', 'Kyla', 'vitae.posuere.at@metus.co.uk', 'SFV85SVJ1JA'),
(105, 'Anne', 'Quail', 'sociosqu@vitaediam.net', 'YSG85UAF8QN'),
(106, 'Hannah', 'Iona', 'blandit.at@laoreetposuere.org', 'KNC39JQA9UU'),
(107, 'Madeline', 'Alma', 'sed.sem.egestas@nasceturridiculus.ca', 'CYR08GSB7TA'),
(108, 'Zorita', 'Wynter', 'cursus.purus.Nullam@Nulla.net', 'LOF82VJP2ZA'),
(109, 'Angelica', 'Zephr', 'et.netus.et@Duis.com', 'HAC12ZQR5PF'),
(110, 'Veronica', 'Jasmine', 'sed@Sednulla.co.uk', 'FEX90OIE9NJ'),
(111, 'Uta', 'Michelle', 'a@In.com', 'EKQ37PYZ0HP'),
(112, 'Quynn', 'Aubrey', 'ullamcorper@inmolestie.co.uk', 'CHZ33YSG0YG'),
(113, 'Joy', 'Jillian', 'amet.massa.Quisque@velarcu.co.uk', 'YFD23CUX5TB'),
(114, 'Leila', 'Farrah', 'eleifend.nec.malesuada@Cras.edu', 'HMC49DUY9OW'),
(115, 'Lana', 'Paloma', 'hendrerit.a@Integer.co.uk', 'PZC47IGK0QP'),
(116, 'Bo', 'Carla', 'auctor.non.feugiat@anuncIn.org', 'YVO42NQS9EL'),
(117, 'Mari', 'Mona', 'viverra.Donec.tempus@apurus.co.uk', 'PPG96ORK9ZO'),
(118, 'Sybill', 'Daria', 'ullamcorper.velit@risusMorbimetus.net', 'FUH68FBS7PT'),
(119, 'Elizabeth', 'Wilma', 'urna.et@euelit.com', 'GWR10ZDY4RM'),
(120, 'Camille', 'Kylie', 'mattis@erat.com', 'PTC05LSP4OK'),
(121, 'Mara', 'Dai', 'tempor.diam@Nulla.ca', 'YPY17BKS6OA'),
(122, 'Jessamine', 'Autumn', 'auctor.velit.eget@adipiscingnon.net', 'HTA78AFS6KB'),
(123, 'Megan', 'Wanda', 'orci@nullaIntincidunt.net', 'XEE90QQC1QF'),
(124, 'Jane', 'Bo', 'placerat.Cras.dictum@ascelerisque.net', 'JWU19OFL2RR'),
(125, 'Olga', 'Quincy', 'sed@amet.net', 'NEB24FRT7GB'),
(126, 'Katelyn', 'Cleo', 'scelerisque.scelerisque@mollis.ca', 'FEP68TCX5CV'),
(127, 'Imogene', 'Hillary', 'aliquet@euismodmauriseu.org', 'LWH23XVY6SV'),
(128, 'Aiko', 'Abigail', 'sollicitudin.a.malesuada@sagittissemperNam.ca', 'GOB61QLV9YY'),
(129, 'Renee', 'Sonya', 'mauris.id.sapien@non.co.uk', 'MXZ61KJN8JA'),
(130, 'Odette', 'Alma', 'at@ac.com', 'YZD63RYZ8SI'),
(131, 'Nichole', 'Leah', 'at.iaculis@condimentum.co.uk', 'JBC55FBA5AI'),
(132, 'Isabelle', 'Sopoline', 'Duis.gravida.Praesent@fringillapurus.edu', 'LMW86KFT0JH'),
(133, 'Maisie', 'Reagan', 'cursus@enim.org', 'ZHI00TBA8HI'),
(134, 'Madeson', 'Willa', 'arcu.iaculis@mi.co.uk', 'BEK07YKP8EJ'),
(135, 'Aileen', 'Christine', 'eleifend@Ut.ca', 'AZS16WVR7GV'),
(136, 'Tamara', 'Carissa', 'In@egestas.org', 'OXC60HXW7GL'),
(137, 'Kitra', 'Suki', 'adipiscing.Mauris.molestie@Nulla.edu', 'IJR56MTB6XU'),
(138, 'Tasha', 'Kristen', 'magna.nec@enim.com', 'SPT18EEM6OD'),
(139, 'Naida', 'Shelley', 'Cras.dolor.dolor@nullaDonecnon.org', 'YSX90WOV5HY'),
(140, 'Astra', 'Medge', 'eleifend.Cras@ornare.com', 'XNU35PRR7UA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CRN`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD KEY `CRN` (`CRN`);

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`Studentid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD KEY `teacher_ibfk_1` (`teacherId`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `Student`
--
ALTER TABLE `Student`
  MODIFY `Studentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- 使用表AUTO_INCREMENT `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacherId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- 使用表AUTO_INCREMENT `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- 限制导出的表
--

--
-- 限制表 `Student`
--
ALTER TABLE `Student`
  ADD CONSTRAINT `Student_ibfk_1` FOREIGN KEY (`Studentid`) REFERENCES `Users` (`id`);

--
-- 限制表 `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`teacherId`) REFERENCES `Users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
