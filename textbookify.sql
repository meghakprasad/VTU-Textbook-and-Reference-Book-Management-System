-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2023 at 09:28 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `textbookify`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `password`) VALUES
('admin', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `comment` text NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `reply_of` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`, `post_id`, `created_at`, `reply_of`) VALUES
(3, 'chetana', 'jbchetana@gmail.com', 'hii', 1, '2022-12-23 12:38:19', 0),
(4, 'Megha', 'megha@gmail.com', 'hello guyss', 1, '2022-12-23 12:38:51', 0),
(27, 'Megha K Prasad ', 'meghakprasad31@gmail.com', 'hello', 1, '2022-12-30 11:05:47', 3),
(32, 'Ram', 'ram@gmail.com', 'hi', 1, '2023-01-12 12:09:49', 4),
(33, 'manasa', 'manasa@gmail.com', 'Good morning', 1, '2023-01-13 11:49:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(1, 'Computer Science & Engineering'),
(2, 'Information Science & Engineering'),
(3, 'Electronics & Communication Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `donating`
--

CREATE TABLE `donating` (
  `slno` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phnumber` bigint(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donating`
--

INSERT INTO `donating` (`slno`, `name`, `email`, `phnumber`, `type`, `semester`, `subject`) VALUES
(2, 'Megha K Prasad', 'meghakprasad31@gmail.com', 9878989898, 'Handwritten Notes', '5th', 'Data Structures'),
(3, 'Shrutha S A', 'shruthasa@gmail.com', 8967568909, 'Xerox and Handwritten Notes', '5th', 'DMS'),
(4, 'Shreya G S', 'shreyags@gmail.com', 9078128978, 'Textbook and Printed Notes', '5th', 'DAA'),
(9, 'Gia', 'gia@gmail.com', 8865651222, 'Xerox', '6', 'Web Technology');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fac_id` varchar(20) NOT NULL,
  `fac_name` varchar(50) NOT NULL,
  `fac_email` varchar(50) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `fac_dept` varchar(60) NOT NULL,
  `fac_phone` bigint(10) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fac_id`, `fac_name`, `fac_email`, `dept_id`, `fac_dept`, `fac_phone`, `password`) VALUES
('FCS001', 'Akash', 'akash@gmail.com', 1, 'Computer Science & Engineering', 9596129390, 'akash@123'),
('FCS002', 'Malini', 'malini@gmail.com', 1, 'Computer Science & Engineering', 6677998854, 'Malini@123'),
('FCS011', 'Sheela', 'sheela@gmail.com', 1, 'Computer Science & Engineering', 6565348977, 'sheela@123'),
('FCS044', 'Chethan', 'chethan@gmail.com', 1, 'Computer Science & Engineering', 6523114235, 'chethan@123'),
('FEC009', 'Mohan', 'mohan@gmail.com', 3, 'Electronics & Communication Engineering', 6658511233, 'mohan@123'),
('FEC023', 'Sita', 'sita@gmail.com', 3, 'Electronics & Communication Engineering', 6433128788, 'sita@1234'),
('FIS001', 'Arun', 'arun30@gmail.com', 2, 'Information Science & Engineering', 9856777756, '123'),
('FIS022', 'Farah', 'farah@gmail.com', 2, 'Information Science & Engineering', 8854621379, 'Farah@123');

-- --------------------------------------------------------

--
-- Table structure for table `prescribed_textbook`
--

CREATE TABLE `prescribed_textbook` (
  `Sl_no` int(100) NOT NULL,
  `Sub_code` varchar(50) NOT NULL,
  `Title` varchar(40) NOT NULL,
  `Author_Name` varchar(20) NOT NULL,
  `Pub_id` int(5) NOT NULL,
  `Edition_Year` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescribed_textbook`
--

INSERT INTO `prescribed_textbook` (`Sl_no`, `Sub_code`, `Title`, `Author_Name`, `Pub_id`, `Edition_Year`) VALUES
(1, '18CS32', 'Fundamentals of Data Structures in C', 'Ellis Horowitz and S', 18, '2nd Edition,'),
(2, '18CS32', 'Data Structures Schaum\'s Outlines', 'Seymour Lipschutz', 7, 'Revised 1st '),
(3, '18CS33', 'Analog and Digital Electronics', 'Charles H Roth and L', 9, ''),
(4, '18CS34', 'Computer Organization', 'Carl Hamacher, Zvonk', 1, '5th Edition,'),
(5, '18CS35', 'Software Engineering', 'Ian Sommerville', 3, '5th Edition,'),
(6, '18CS35', 'Object Oriented Modelling and Design wit', 'Michael Blaha, James', 3, '2nd Edition,'),
(7, '18CS36', 'Discrete and Combinatorial Mathematics', 'Ralph P. Grimaldi', 3, '5th Edition,'),
(8, '18CS42', 'Introduction to Algorithms Introduction ', 'AnanyLevitin', 3, '2nd Edition,'),
(9, '18CS42', 'Computer Algorithms/C++', 'SatrajSahni and Raja', 18, '2nd Edition,'),
(10, '18CS43', 'Operating System Principles', 'Abraham Silberschatz', 12, '7th Edition,'),
(11, '18CS44', 'ARM system developers guide', 'Andrew N Sloss, Domi', 22, '2008'),
(12, '18CS44', 'Introduction to Embedded Systems', 'Shibu K V', 23, '2nd Edition'),
(13, '18CS45', 'Object Oriented Programming with C++ ', 'Sourav Sahay', 4, '2nd Edition,'),
(14, '18CS45', 'Java The Complete Reference', 'Herbert Schildt', 1, '7th Edition,'),
(15, '18CS46', 'Data Communications and Networking 5E', 'Behrouz A. Forouzan', 1, '5th Edition,'),
(16, '18CS51', 'Principles of Management', 'P. C. Tripathi, P. N', 1, '4th / 6th Ed'),
(17, '18CS51', 'Dynamics of Entrepreneurial Development ', '', 2, ''),
(18, '18CS51', 'Entrepreneurship Development -Small Busi', 'Poornima M Charantim', 3, '2006'),
(19, '18CS51', 'Management and Entrepreneurship', 'Kanishka Bedi', 4, '2017'),
(20, '18CS52', 'Computer Networking, A Top-Down Approach', 'James F Kurose and K', 3, '6th edition,'),
(21, '18CS52', 'Computer and Communication Networks', 'Nader F Mir', 3, '2nd Edition,'),
(22, '18CS53', 'Fundamentals of Database Systems', 'Ramez Elmasri and Sh', 3, '7th Edition,'),
(23, '18CS53', 'Database management systems', 'Ramakrishnan, and Ge', 1, '3rd Edition,'),
(24, '18CS54', 'Automata, Computability and Complexity', 'Elaine Rich', 3, '1st Edition,'),
(25, '18CS54', 'Theory of Computer Science', ' K L P Mishra, N Cha', 10, '3rd Edition,'),
(26, '18CS55', 'Automate the Boring Stuff with Python', 'Al Sweigart', 13, '1st Edition,'),
(27, '18CS55', 'Think Python: How to Think Like a Comput', 'Allen B. Downey', 14, '2nd Edition,'),
(28, '18CS56', 'Unix Concepts and Applications', 'Sumitabha Das', 1, '4th Edition'),
(29, '18CS56', 'Advanced Programming in the UNIX Environ', 'W. Richard Stevens', 3, '2nd edition,'),
(30, '18CS56', 'Unix System Programming Using C++', 'Terrence Chan', 10, '1999'),
(31, '18CS61', 'System Software', 'Leland. L. Beck, D M', 0, '3rd edition,'),
(32, '18CS61', 'Compilers-Principles, Techniques and Too', 'Alfred V Aho, Monica', 3, '2nd Edition,'),
(33, '18CS61', 'Lex & yacc', 'Doug Brown, John Lev', 16, 'October 2012'),
(34, '18CS62', 'Computer Graphics with OpenGL Version', 'Donald Hearn & Pauli', 3, '3rd / 4th Ed'),
(35, '18CS62', 'Interactive Computer Graphics- A Top Dow', 'Edward Angel', 3, '5th edition.'),
(36, '18CS63', 'Fundamentals of Web Development', 'Randy Connolly, Rica', 3, '1st Edition '),
(37, '18CS641', 'Introduction to Data Mining', 'Pang-Ning Tan, Micha', 3, 'First impres'),
(38, '18CS641', 'Data Mining -Concepts and Techniques', 'Jiawei Han, Michelin', 30, '3rd Edition,'),
(39, '18CS642', 'Object Oriented Modelling and Design wit', 'Michael Blaha, James', 3, '2nd Edition,'),
(40, '18CS642', 'Object-Oriented Analysis & Design with t', 'Satzinger, Jackson a', 9, '2005'),
(41, '18CS642', 'Design Patterns ?Elements of Reusable Ob', 'Erich Gamma, Richard', 3, '2007'),
(42, '18CS643', 'Mastering Cloud. Computing', 'Rajkumar Buyya, Chri', 1, ''),
(43, '18CS644', 'JAVA the Complete Reference', 'Herbert Schildt', 1, '7th/9th Edit'),
(44, '18CS644', 'J2EE-TheCompleteReference', 'Jim Keogh', 1, '2007'),
(45, '18CS645', 'Discrete-Event System Simulation', 'Jerry Banks, John S.', 3, '5 th Edition'),
(46, '18CS651', 'Android Developer Fundamentals Course ? ', 'Google Developer Tra', 32, '2017'),
(47, '18CS652', 'Data structures using C', 'E Balagurusamy', 1, '2013'),
(48, '18CS653', 'Java The Complete Reference', 'Herbert Schildt', 1, '7th edition,'),
(49, '18CS654', 'Operating systems', 'A. Silberschatz, P B', 31, '7th Edition'),
(50, '18CS71', 'Machine Learning', 'Tom M Mitchell', 1, '1st Edition,'),
(51, '18CS71', 'Artificial Intelligence', 'Elaine Rich, Kevin K', 1, '3rd Edition,'),
(52, '18CS72', 'Big Data Analytics Introduction to Hadoo', 'Raj Kamal and Preeti', 23, '2018'),
(53, '18CS72', 'Hadoop 2 Quick-Start Guide: Learn the Es', 'Douglas Eadline', 3, '1 stEdition,'),
(54, '18CS731', 'Object-oriented analysis, design and imp', 'Brahma Dathan, Sarna', 18, '2013'),
(55, '18CS731', 'Design Patterns', 'Erich Gamma, Richard', 3, '2013'),
(56, '18CS732', 'Introduction to Parallel Computing', 'AnanthGrama, Anshul ', 37, '2nd Edition,'),
(57, '18CS733', 'Advanced Computer Architecture (SIE): Pa', 'Kai Hwang and Naresh', 23, '3rd edition,'),
(58, '18CS734', 'The Essential Guide to User Interface De', 'Wilbert O. Galitz', 31, '2002'),
(59, '18CS741', 'Digital Image Processing', 'Rafael C G., Woods R', 39, '2nd Edition,'),
(60, '18CS742', 'Network Management- Principles and Pract', 'Mani Subramanian', 3, '2nd edition,'),
(62, '18CS743', 'Natural Language Processing and Text Min', 'Anne Kao and Stephen', 45, '2007'),
(63, '18CS744', 'Cryptography and Network Security', 'William Stallings', 3, '6th edition'),
(64, '18CS745', 'The Robotic Process Automation Handbook ', 'Tom Taulli', 48, '2020'),
(65, '18CS745', 'Learning Robotic Process Automation', 'Alok Mani Tripathi', 39, 'Mar-18'),
(66, '18CS751', 'Business analytics: data analysis and de', 'S C Albright and W L', 1, '5th Edition'),
(67, '18CS753', 'Artificial Intelligence', 'E. Rich , K. Knight ', 0, '3rd Edition'),
(68, '18CS754', 'Microsoft Visual C# Step by Step', 'John Sharp', 10, '8th Edition,'),
(69, '18CS81', 'IoT Fundamentals: Networking Technologie', 'David Hanes, Gonzalo', 3, '1st Edition'),
(70, '18CS81', 'Internet of Things', 'Srinivasa K G', 9, '2017'),
(71, '18CS821', 'Mobile Computing, Technology, Applicatio', 'Ashok Talukder, Roop', 1, '2nd Edition,'),
(72, '18CS821', 'Mobile and Wireless Design Essentials', 'Martyn Mallik', 12, '2003'),
(73, '18CS822', 'Information Storage and Management', 'EMC Education Servic', 12, '2009'),
(74, '18CS823', 'NoSQL Distilled: A Brief Guide to the Em', 'Sadalage, P. & Fowle', 3, '2012'),
(75, '18CS824', 'Multicore Programming , Increased Perfor', 'Shameem Akhter and J', 53, '2006'),
(76, '18EC32', 'Network Analysis			', 'M.E. Van Valkenburg	', 0, '2000'),
(77, '18EC32', 'Network and Systems			', 'Roy Choudhury							', 0, '2006'),
(78, '18EC33', 'Solid State Electronics				', 'Ben.G, Streetman, Sa', 3, '2016'),
(79, '18EC33', 'Semiconductor Physics and Devices				', 'Donald A Neamen, Dhu', 7, '2012'),
(80, '18EC34', 'Digital Logic Applications and Design			', 'John M Yarbrough				', 5, '2001'),
(81, '18EC34', 'Digital Principles and Design			', 'Donald D, Givone				', 7, '2002'),
(82, '18EC34', 'Fundamentals of Logic Design			', 'Charles H Roth Jr., ', 9, ''),
(83, '18EC35', 'Computer Organization						', 'Carl Hamacher, Zvonk', 1, '2002'),
(84, '18EC36', 'Power Electronics					', 'M.D Singh and K B Kh', 1, '2009'),
(85, '18EC36', 'Electronic Instrumentation					', 'H. S. Kalsi					', 7, '2012'),
(86, '18EC42', 'Microelectronic Circuits, Theory and App', 'Adel S Sedra, Kennet', 4, '2015'),
(87, '18EC42', 'Op-Amps and Linear Integrated Circuits		', 'Ramakant A Gayakwad	', 3, '2000'),
(88, '18EC43', 'Control Systems Engineering			', 'J. Nagarath and M.Go', 0, '2005'),
(90, '18EC44', 'Linear Algebra and its Applications				', 'Gilbert Strang						', 9, '2006'),
(92, '18EC46', '\"The 8051\nMicrocontroller and Embedded S', 'Muhammad Ali Mazidi ', 10, '2006'),
(93, '18EC46', '\"The 8051\nMicrocontroller\"			', 'kenneth j ayala', 9, ''),
(94, '18EC51', 'Principles of Management				', 'P.C Tripathi, P.N Re', 7, '2017'),
(95, '18EC51', 'Entrepreneurship Development Small Busin', 'Poomima MCharantimat', 3, '2008'),
(96, '18EC51', 'Dynamics of Entrepreneurial Development ', 'Vasant Desai								', 0, '2007'),
(97, '18EC51', 'Entrepreneurship				', 'Robert D. Hisrich, M', 7, '2012'),
(98, '18EC52', '\"Digital Signal Processing- Principles A', 'Proakis and Manolaki', 3, '2007'),
(99, '18EC52', 'Digital Signal processing- Fundamentals ', 'Li Tan,Jean Jiang', 0, '2013'),
(100, '18EC53', 'Communication Systems			', 'Simon Haykin & Moher', 12, '2010'),
(101, '18EC54', 'Digital andAnalog Communication Systems	', 'K. Sam Shanmugam				', 12, '1996'),
(102, '18EC54', 'Digital Communication			', 'Simon Haykin							', 12, '2008'),
(103, '18EC55', 'Engineering Electromagnetics			', 'W.H. Hayt and J.A. B', 1, '2014'),
(104, '18EC56', 'Verilog HDL: A Guide to Digital Design a', 'Samir Palnitkar					', 3, ''),
(106, '18EC61', 'Fundamentals of Communication Systems			', 'John G Proakis and M', 3, '2014'),
(107, '18EC62', 'TheDefinitiveGuidetotheARMCortex- M3				', 'Joseph Yiu						', 0, '2010'),
(108, '18EC62', 'Introduction to Embedded Systems								', 'Shibu K V						', 1, ''),
(109, '18EC63', 'Microwave Engineering						', 'Annapuma Das, Sisir ', 0, '2010'),
(110, '18EC63', 'Microwave Devices and circuits						', 'Samuel Y Liao					', 3, ''),
(111, '18EC63', 'Antennas and Wave Propagation						', 'John D. Krauss, Rona', 7, '2013'),
(112, '18EC641', 'Operating Systems-A Concept based Approa', 'Dhamdhere					', 0, ''),
(113, '18EC642', 'Neural Networks A Classroom Approach				', 'Satish Kumar					', 7, ''),
(114, '18EC643', 'Data structures, Algorithms, and applica', 'Sartaj Sahni					', 0, '2005'),
(115, '18EC644', 'Digital Design: An Embedded Systems Appr', 'Peter J. Ashenden			', 0, '2010'),
(116, '18EC645', 'Nanoscale Science and Technology						', 'Edited byRobert Kels', 12, '2007'),
(117, '18EC645', 'Introduction to Nanotechnology						', 'Charles P Poole, Jr,', 12, '2011'),
(118, '18EC645', 'Hand Book of Nanoscience Engineering and', 'T Pradeep								', 0, ''),
(119, '18EC646', 'Python for Everybody: Exploring Data Usi', 'Charles R. Sperance	', 0, '2016'),
(120, '18EC646', 'Think Python: How to Think like a Comput', 'Allen B. Downey					', 14, '2015'),
(121, '18EC651', 'Signals and Systems						', 'Simon Haykin and Bar', 12, ''),
(123, '18EC72', 'CMOS VLSI Design- A Circuits and Systems', 'Neil H. E. Weste and', 0, ''),
(124, '18EC731', 'Real-Time Computer Control', 'Stuart Bennet', 3, '2008'),
(125, '18EC732', 'Satellite Communications', 'Anil K. Maini, Varsh', 12, '2015'),
(126, '18EC733', 'Digital Image Processing', 'Rafel C Gonzalez and', 10, '2010'),
(127, '18EC734', 'Digital Signal Processing', 'Avatar Singh and S. ', 5, '2004'),
(128, '18EC741', 'Internet of Things-Architecture and desi', 'Raj Kamal', 7, ''),
(129, '18EC741', 'Protocols And Architectures for Wireless', 'Holger Karl & Andrea', 12, '2005'),
(130, '18EC742', 'Understanding Automotive Electronics', 'William B. Ribbens', 0, ''),
(131, '18EC742', 'Automotive Electrics and Automotive , Ne', 'Robert Bosch GmbH ', 12, '2007'),
(132, '18EC743', 'Multimedia Communications', 'Fred Halsall', 3, '2001'),
(133, '18EC743', 'Multimedia Communication Systems', ' K. R Rao, Zoran S. ', 3, '2004'),
(134, '18EC744', 'Cryptography and Network Security Princi', ' William Stallings', 3, '2014'),
(135, '18EC744', 'Applied Cryptography Protocols, Algorith', ' Bruce Schneier', 12, ''),
(136, '18EC745', 'Machine Learning', 'Tom M. Mitchell', 7, '2013'),
(137, '18EC751', 'Analog and Digital Communications', 'T L Singal', 7, ''),
(138, '18EC751', 'Wireless Communications ', 'T L Singal', 7, ''),
(140, '18EC81', 'Fundamentals of LTE ', 'Arunabha Ghosh, Jan ', 3, ''),
(141, '18EC81', 'Introduction to Wireless Telecommunicati', ' Gary Mullet', 9, ''),
(142, '18IS61', 'File Structures-An Object Oriented Appro', 'Michael J. Folk, Bil', 3, '3rd Edition,'),
(143, '18IS62', 'Software Testing, A Craftsman?s Approach', 'Paul C. Jorgensen', 55, '3rd Edition,'),
(144, '18IS62', 'Software Testing and Analysis ? Process,', 'Mauro Pezze, Michal ', 12, '2009'),
(145, '18IS62', 'Foundations of Software Testing', 'Aditya P Mathur', 3, '2008'),
(146, '18IS645', 'Management Information Systems', 'James A.O?Brien, Geo', 1, '7th Edition');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `Pub_id` int(5) NOT NULL,
  `Pub_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`Pub_id`, `Pub_Name`) VALUES
(1, 'Tata McGraw Hill'),
(2, 'Vasant Desai Himalay'),
(3, 'Pearson Education'),
(4, 'Oxford University Pr'),
(5, 'Thomson'),
(6, 'S Chand & Co.'),
(7, 'McGraw Hill'),
(8, 'ELSEVIER'),
(9, 'Cengage Learning'),
(10, 'PhI'),
(11, 'Narosa Publisher'),
(12, 'Wiley India'),
(13, 'No Starch Press'),
(14, 'Green Tea Press'),
(15, 'CRC Press/Taylor & F'),
(16, 'O Reilly Media'),
(17, 'BPB Publications'),
(18, 'Universities Press'),
(19, 'Pearson Prentice Hal'),
(20, 'Sanguine-Pearson'),
(21, 'Oxford (Higher Educa'),
(22, 'Elsevier, Morgan Kau'),
(23, 'Tata McGraw Hill Edu'),
(24, 'Hitex Ltd'),
(25, 'Vasant Desai Himalay'),
(26, 'S Chand & Co'),
(27, 'Narosa Publisher'),
(28, 'sham?s outline serie'),
(29, 'O?Reilly/Shroff Publ'),
(30, 'Morgan Kaufmann Publ'),
(31, 'John Wiley and Sons'),
(32, 'Google Developer Tra'),
(33, 'Dreamtech Press/Mann'),
(34, 'springer series in s'),
(35, 'MIT press'),
(36, 'VPT Publication'),
(37, 'Addison-Welsey'),
(38, 'Cambridge University'),
(39, 'Prentice Hall'),
(40, 'Morgan Kaufmann'),
(41, 'John Wiley & Sons'),
(42, 'Wiley- Dream Tech Lt'),
(43, 'Thomson Press India '),
(44, 'Filip learning'),
(45, 'Springer-Verlag Lond'),
(46, 'Benjamin/Cummingspub'),
(47, 'Kluwer academic Publ'),
(48, 'A press'),
(49, 'Institute of Robotic'),
(50, 'VPT Publications'),
(51, 'A press and Dream te'),
(52, 'Manning Publication/'),
(53, 'Intel Press'),
(54, 'CRC Press/Taylor and'),
(55, 'Auerbach Publication');

-- --------------------------------------------------------

--
-- Table structure for table `reference_textbook`
--

CREATE TABLE `reference_textbook` (
  `Sl_no` int(100) NOT NULL,
  `Sub_code` varchar(50) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Author_Name` varchar(100) NOT NULL,
  `Pub_id` int(5) NOT NULL,
  `Edition_Year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reference_textbook`
--

INSERT INTO `reference_textbook` (`Sl_no`, `Sub_code`, `Title`, `Author_Name`, `Pub_id`, `Edition_Year`) VALUES
(1, '18CS32', 'Data Structures: A Pseudo-code approach with C', 'Gilberg & Forouzan', 9, '2014'),
(2, '18CS32', 'Data Structures using C', 'ReemaThareja', 4, '2012'),
(3, '18CS32', 'An Introduction to Data Structures with Applications', 'Jean-Paul Tremblay & Paul G. Sorenson', 7, '2013'),
(4, '18CS32', 'Data Structures using C', 'A M Tenenbaum', 10, ''),
(5, '18CS32', 'Data Structures and Program Design in C', 'Robert Kruse', 10, '1996'),
(6, '18CS33', 'Electronic Devices and Circuits', 'Anil K Maini, Varsha Agarwal', 12, '2012'),
(7, '18CS33', 'Digital Principles and Applications', 'Donald P Leach, Albert Paul Malvino&GoutamSaha', 1, '2015'),
(8, '18CS33', 'Digital Design', 'M. Morris Mani', 3, '2008'),
(9, '18CS33', 'Electronic Devices and Circuits', 'David A. Bell', 4, '2008'),
(10, '18CS34', 'Computer Organization & Architecture', 'William Stallings', 3, '2012'),
(11, '18CS35 ', 'Software Engineering-A Practitioners approach', 'Roger S. Pressman', 1, ''),
(12, '18CS35', 'An Integrated Approach to Software Engineering', 'Pankaj Jalote', 12, ''),
(13, '18CS36', 'Discrete Mathematics ? A Concept based approach', 'Basavaraj S Anami and Venakanna S Madalli', 0, '2016'),
(14, '18CS36', 'Discrete Mathematics and its Applications', 'Kenneth H. Rosen', 7, '2007'),
(15, '18CS36', 'A Treatise on Discrete Mathematical Structures', 'Jayant Ganguly', 0, '2010'),
(16, '18CS36', 'Discrete Mathematical Structures: Theory and Applications', 'D.S. Malik and M.K. Sen', 5, '2004'),
(17, '18CS36', 'Discrete Mathematics with Applications', 'Thomas Koshy', 8, '2005'),
(18, '18CS42', 'Introduction to Algorithms', 'Thomas H. Cormen, Charles E. Leiserson, Ronal L. Rivest, Clifford Stein', 10, '2009'),
(19, '18CS42', 'Design and Analysis of Algorithms', 'S. Sridhar', 4, ''),
(20, '18CS43', 'Understanding Operating System', 'Ann McHoes Ida M Fylnn', 9, ''),
(21, '18CS43', 'Operating Systems: A Concept Based Approach', 'D.M Dhamdhere', 7, '2013'),
(22, '18CS43', 'An Introduction to Operating Systems: Concepts and Practice', 'P.C.P. Bhatt', 10, '2014'),
(23, '18CS43', 'Operating Systems: Internals and Design Principles', 'William Stallings', 3, ''),
(24, '18CS44', 'Microcontroller (ARM) and Embedded System', 'Raghunandan..G.H', 9, '2019'),
(25, '18CS44', 'The Insider?s Guide to the ARM7 Based Microcontrollers', '', 0, '2005'),
(26, '18CS44', 'ARM System-on-Chip Architecture', 'Steve Furber', 3, '2015'),
(27, '18CS44', 'Embedded System', 'Raj Kamal', 1, '2008'),
(28, '18CS45', '\"Programming with Java\"', 'Mahesh Bhave and Sunil Patekar', 3, '2008'),
(29, '18CS45', 'The Complete Reference C++', 'Herbert Schildt', 1, '2003'),
(30, '18CS45', 'C++ Primer', 'Stanley B.Lippmann, JoseeLajore', 3, '2005'),
(31, '18CS45', 'Object oriented Programming with java', 'RajkumarBuyya,SThamarasiselvi, xingchenchu', 1, ''),
(32, '18CS45', 'Introduction to Java Programming and OOAD', 'Richard A Johnson', 9, ''),
(33, '18CS45', 'Programming with Java A primer', 'E Balagurusamy', 1, ''),
(34, '18CS46', 'Communication Networks -', 'Alberto Leon-Garcia and IndraWidjaja', 1, ''),
(35, '18CS46', 'Fundamental Concepts and Key architectures', '', 1, '2004'),
(36, '18CS46', 'Data and Computer Communication', 'William Stallings', 3, '2007'),
(37, '18CS46', 'Computer Networks ? A Systems Approach', 'Larry L. Peterson and Bruce S. Davie', 8, '2007'),
(38, '18CS46', 'Computer and Communication Networks', 'Nader F. Mir', 3, '2007'),
(39, '18CS51', 'Management Fundamentals -Concepts, Application, Skill Development', 'Robert Lusier', 5, ''),
(40, '18CS51', 'Entrepreneurship Development', 'S S Khanka', 6, ''),
(41, '18CS51', 'Management', 'Stephen Robbins', 3, '2003'),
(42, '18CS52', 'Data and Communications and Networking', 'Behrouz A Forouzan', 7, ''),
(43, '18CS52', 'Computer Networks', 'Larry L Peterson and Brusce S Davie', 8, ''),
(44, '18CS52', 'Computer Networks', 'Andrew S Tanenbaum', 3, ''),
(45, '18CS52', 'Computer Networks', 'Mayank Dave', 9, ''),
(46, '18CS53', 'Database System Concept', 'Silberschatz Korth and Sudharshan', 7, '2013'),
(47, '18CS53', 'Database Principles Fundamentals ofDesign, Implementation and Management', 'Coronel, Morris, and Rob', 7, '2012'),
(48, '', '', '', 0, ''),
(49, '18CS54', 'Introduction to AutomataTheory, Languages, and Computation', 'John E Hopcroft,', 0, ''),
(50, '18CS54', '', 'Rajeev Motwani, Jeffery D Ullman', 3, ''),
(51, '18CS54', 'Introduction to the Theory of Computation', 'Michael Sipser', 9, ''),
(52, '18CS54', 'Introduction to Languages and The Theory of Computation', 'John C Martin', 1, ''),
(53, '18CS54', 'An Introduction to Formal Languages and Automata', '. Peter Linz', 11, ''),
(54, '18CS54', 'Formal Languages and Automata theory', 'Basavaraj S. Anami, Karibasappa K G', 12, ''),
(55, '18CS55', '?Introduction to Python Programming?', 'Gowrishankar S, Veena A', 15, '2018'),
(56, '18CS55', '?Python Data Science Handbook: Essential Tools for Working with Data?', 'Jake VanderPlas', 16, '2016'),
(57, '18CS55', 'Introduction to Computer Science Using Python', 'Charles Dierbach', 12, '2015'),
(58, '18CS55', '?Core Python Applications Programming?', 'Wesley J Chun', 3, '2015'),
(59, '18CS56', 'UNIX & Shell Programming', 'M.G. Venkatesh Murthy', 3, ''),
(60, '18CS56', 'Linux Command Line and Shell', 'Richard Blum ,', 12, '2014'),
(62, '18CS61', 'Systems programming', 'Srimanta Pal', 4, '2016'),
(63, '18CS61', 'System programming and Compiler Design', 'K C Louden', 9, ''),
(64, '18CS61', 'System software and operating system', 'D. M. Dhamdhere TMG', 0, ''),
(65, '18CS61', 'Compiler Design', 'K Muneeswaran', 4, '2013'),
(66, '18CS62', 'Computer graphics with OpenGL', 'Jasmes D Foley, Andries Van Dam, Steven K Feiner, John\nF Huge', 3, ''),
(67, '18CS62', 'Computer Graphics', 'Xiang, Plastock', 0, ''),
(68, '18CS62', 'Interactive Computer Graphics, concepts and applications', 'Kelvin Sung, Peter Shirley, steven Baer', 9, ''),
(69, '18CS62', 'Computer Graphics using OpenGL', 'M M Raikar & Shreedhara K S', 9, ''),
(70, '18CS63', '?Learning PHP, MySQL &JavaScript with jQuery, CSS and HTML5?', 'Robin Nixon', 16, ''),
(71, '18CS63', 'PHP and MySQL Web Development', 'Luke Welling, Laura Thomson', 3, ''),
(72, '18CS63', 'Professional JavaScript for Web Developers', '. Nicholas C Zakas', 0, ''),
(73, '18CS63', 'JavaScript & jQuery: The Missing Manual', 'David Sawyer Mcfarland', 16, ''),
(74, '18CS641', 'Data Warehousing in the Real World', 'Sam Anahory, Dennis Murray', 3, '2012'),
(75, '18CS641', 'Mastering Data Mining', 'Michael.J.Berry,Gordon.S.Linoff', 12, '2012'),
(76, '18CS642', 'Object-Oriented Analysis and Design with Applications', 'Grady Booch et. al', 3, '2007'),
(77, '18CS642', 'Pattern ? Oriented Software Architecture. A system of patterns , Volume 1', 'Frank Buschmann, RegineMeunier, Hans Rohnert, Peter Sommerlad, Michel\nStal', 0, '2007'),
(78, '18CS642', 'Object-Oriented Analysis and Design with Applications', 'Booch, Jacobson, Rambaugh', 0, '2013'),
(79, '18CS643', 'Cloud Computing Theory and Practice', 'Dan C. Marinescu', 0, '2013'),
(80, '18CS644', 'Introduction to JAVA Programming', 'Y. Daniel Liang', 3, '2007'),
(81, '18CS644', 'The J2EE Tutorial', 'Stephanie Bodoff et al', 3, '2004'),
(82, '18CS644', 'Advanced JAVA programming', 'Uttam K Roy', 4, '2015'),
(83, '18CS645', 'Discrete ? Event Simulation: A First Course', 'Lawrence M. Leemis, Stephen K. Park', 3, '2006'),
(84, '18CS645', 'Simulation Modeling and Analysis', 'Averill M. Law', 1, '2007'),
(85, '18CS651', 'Android Programming ? Pushing the Limits', 'Erik Hellman', 12, '2014'),
(86, '18CS651', '?Head First Android Development?', 'Dawn Griffiths and David Griffiths', 16, '2015'),
(87, '18CS651', 'Beginning Android Programming with Android Studio', 'J F DiMarzio', 12, '2016'),
(88, '18CS651', 'Composing Mobile Apps using Android', 'Anubhav Pradhan,\nAnil V Deshpande', 12, '2014'),
(90, '18CS652', 'Fundamentals of Data Structures in C', 'Ellis Horowitz and Sartaj Sahni', 0, '2014'),
(92, '18CS652', 'Data Structures Schaum\'s Outlines', 'Seymour Lipschutz', 0, ''),
(93, '18CS653', 'Core Java - Vol. 1 Fundamentals', 'Cay S Horstmann', 3, '2016'),
(94, '18CS653', 'Java 8 in Action', 'Raoul-Gabriel Urma, Mario Fusco, Alan\nMycrof', 0, '2014'),
(95, '18CS654', '\"Operating Systems: Internals and Design Principles\"', 'William Stalling', 3, '2018'),
(96, '18CS654', '\"Modern Operating Systems\"', 'Andrew S\nTanenbaum, Herbert BOS', 3, '2018'),
(97, '18CS71', 'Artificial Intelligence', 'Saroj Kaushik', 9, ''),
(98, '18CS71', 'Artificial Intelligence: A Modern Approach', 'Stuart Rusell, Peter Norving', 3, ''),
(99, '18CS71', 'Hands-On Machine Learning with Scikit-Learn and Tensor Flow: Concepts, Tools, and Techniques to\nBuild Intelligent Systems', 'Aur?lienG?ron', 16, '2017'),
(100, '18CS71', 'The Elements of Statistical Learning', 'Trevor Hastie, Robert\nTibshirani, Jerome Friedman', 0, ''),
(101, '18CS71', 'Introduction to machine learning', 'Ethem Alpayd?n', 0, ''),
(102, '18CS71', 'Artificial Intelligence and Machine Learning', 'Srinvivasa K G and Shreedhar', 9, ''),
(103, '18CS72', '?Hadoop: The Definitive Guide?', 'Tom White', 16, '2015'),
(104, '18CS72', '\"Professional Hadoop Solutions\"', 'Boris Lublinsky, Kevin T Smith, Alexey Yakubovich', 0, '2014'),
(106, '18CS72', '\"Hadoop Operations: A Guide for Developers and Administrators\"', 'Eric Sammer', 16, '2012'),
(107, '18CS72', '\"Big Data Analytics: A Hands-On Approach\"', 'Arshdeep Bahga, Vijay Madisetti', 0, '2018'),
(108, '18CS731', '?Pattern Oriented Software Architecture?\n?Volume 1', 'Frank Bachmann, RegineMeunier, Hans\nRohnert', 0, '1996'),
(109, '18CS731', '\"Anti-Patterns: Refactoring Software, Architectures and Projects in Crisis\"', 'William J Brown et al', 12, '1998'),
(110, '18CS732', 'An Introduction to Parallel Computing, Design and Analysis of Algorithms', 'Grama, A. Gupta, G. Karypis, V. Kumar', 0, '2003'),
(111, '18CS732', 'Parallel Scientific Computing in C++ and\nMPI: A Seamless Approach to Parallel Algorithms and their Implementation', 'G.E. Karniadakis,\nR.M. Kirby II', 0, '2003'),
(112, '18CS732', 'Parallel Programming: Techniques and\nApplications Using Networked Workstations and Parallel Computers', 'Wilkinson and M. Allen', 0, '2005'),
(113, '18CS732', 'Parallel Programming in C with MPI and OpenMP', 'M.J. Quinn', 1, '2004'),
(114, '18CS732', 'Highly Parallel Computing', 'G.S. Almasi and A. Gottlieb', 0, '1994'),
(115, '18CS732', 'Parallel Computer Architecture: A hardware/Software Approach', 'David Culler Jaswinder Pal Singh', 0, '1999'),
(116, '18CS732', '\"Scalable Parallel Computing\"', 'Kai Hwang', 1, '1998'),
(117, '18CS733', 'Computer Architecture: A quantitative approach', 'John L. Hennessy and David A. Patterson', 8, '2013'),
(118, '18CS734', '?Design the User Interface?', 'Ben Sheiderman', 3, '1998'),
(119, '18CS734', '?The Essential of User Interface Design?', 'Alan Cooper', 12, '2002'),
(120, '18CS741', 'Image Processing, analysis and Machine Vision', 'Milan Sonka', 5, ''),
(121, '18CS741', 'Fundamentals of Digital Image\nProcessing', 'Anil K. Jain', 0, ''),
(123, '18CS741', 'Digital Image Processing', 'S. Sridhar', 4, '2016'),
(124, '18CS741', 'Digital Image Processing (with Matlab and Labview)', 'Vipul singh', 0, ''),
(125, '18CS742', 'Network management Concepts and Practices: a Hands-On Approach', 'J. Richard Burke', 10, '2008'),
(126, '18CS743', '?Speech and Language Processing: An introduction to Natural Language Processing, Computational Linguistics and Speech\nRecognition?', 'Daniel Jurafsky and James H Martin', 0, '2008'),
(127, '18CS743', '?Natural Language Understanding?', 'James Allen', 0, '1995'),
(128, '18CS743', '?Information Storage and Retrieval systems?', 'Gerald J. Kowalski and Mark.T.\nMaybury', 0, '2000'),
(129, '18CS744', 'Cryptography and Information Security', 'V K Pachghare', 10, ''),
(130, '18CS745', '?Introduction to Robotic Process Automation: a Primer?', '?Introduction to Robotic Process Automation: a Primer?', 0, ''),
(131, '18CS745', 'Robotic Process Automation: Guide To Building Software Robots, Automate Repetitive Tasks & Become An RPA\nConsultant', 'Richard Murdoch', 0, ''),
(132, '18CS745', 'Robotic Process Automation Tools, Process Automation and their benefits:\nUnderstanding RPA and Intelligent Automation', 'Srikanth Merianda', 0, ''),
(133, '18CS751', '\"Big Data Analytics: A Hands-On Approach?', 'Arshdeep Bahga, Vijay Madisetti', 0, '2018'),
(134, '18CS751', '?Big Data Analytics Introduction to Hadoop, Spark, and Machine Learning?', 'Raj Kamal and Preeti Saxena', 7, '2018'),
(135, '18CS753', 'Artificial Intelligence: A Modern Approach', 'Stuart Rusell, Peter Norving', 3, ''),
(136, '18CS753', 'Introduction to Artificial Intelligence and Expert Systems', 'Dan W. Patterson', 0, ''),
(137, '18CS753', '?Artificial Intelligence: Structures and Strategies for complex problem Solving?', 'G. Luger', 3, '2002'),
(138, '18CS753', 'Artificial Intelligence and Expert\nSystems Development', 'D W Rolston', 1, ''),
(140, '18CS753', '?Artificial Intelligence and Intelligent Systems?', 'N.P. Padhy', 4, '2015'),
(141, '18CS754', '?C# 6 and .NET Core 1.0?', 'Christian Nagel', 12, '2016'),
(142, '18CS754', '?Head First C#?', 'Andrew Stellman and Jennifer Greene', 16, '2013'),
(143, '18CS754', '?Essential C# 6.0?', 'Mark Michaelis', 3, '2016'),
(144, '18CS754', '?Prof C# 5.0 and the .NET 4.5 Framework?', 'Andrew Troelsen', 0, '2012'),
(145, '18CS81', '?Internet of Things (A Hands-on- Approach)?', 'Vijay Madisetti and Arshdeep Bahga', 0, '2014'),
(146, '18CS81', '?Internet of Things: Architecture and Design Principles?', 'Raj Kamal', 7, '2017'),
(147, '18CS821', 'Mobile Computing', 'Raj kamal', 4, '2007'),
(148, '18CS821', 'Wireless Communications and Networks, 3G and Beyond', 'Iti Saha Misra', 1, '2009'),
(149, '18CS822', '\"Storage Area Network Essentials: A\nComplete Guide to Understanding and Implementating SANs Paperback?', 'Paul Massiglia, Richard Barker', 12, '2008'),
(150, '18CS823', '\"NoSQL For Mere Mortals\"', 'Dan Sullivan', 3, '2015'),
(151, '18CS823', '\"Making Sense of NoSQL: A guide for Managers and the Rest of us\"', 'Dan McCreary and Ann Kelly', 0, '2013'),
(152, '18CS823', '\"Mongodb: The Definitive Guide- Powerful and Scalable Data Storage?', 'Kristina Chodorow', 16, '2013'),
(153, '18CS824', '\"Fundamentals of Parallel Multicore Architecture\"', 'Yan Solihin', 0, '2015'),
(154, '18CS824', '\"Multicore and GPU Programming: An Integrated Approach Paperback\"', 'Gerassimos Barlas', 0, '2014'),
(155, '18CS824', '\"The x86 Microprocessors: 8086 to Pentium, Multicores, Atom and the 8051 Microcontroller: Architecture,\nProgramming and Interfacing', 'Lyla B Das', 3, '2014'),
(156, '18EC32', 'Engineering Circuit Analysis			', 'Hayt, Kemmerly and Durbin							', 1, '2010'),
(157, '18EC32', 'Basic Engineering Circuit Analysis			', 'J. David Irwin/R. Mark Nelms							', 12, '2006'),
(158, '18EC32', 'Fundamentals of Electric Circuits			', 'Charles K Alexander and Mathew N O Sadiku							', 1, '2009'),
(159, '18EC33', 'Physics of Semiconductor Devices				', 'S.M.Sze, Kwok K.Ng										', 12, '2018'),
(160, '18EC33', 'Semiconductor and Electronic Devices				', 'Adir Bar-Lev										', 10, '1993'),
(161, '18EC34', 'Digital Circuits and Design			', 'D.P.Kothari and J.S Dhillon						', 3, '2016'),
(162, '18EC34', 'Digital Design			', 'Morris Mano						', 17, ''),
(163, '18EC34', 'Electronics Lab Manual, Volume 1			', 'K.A.Navas						', 3, '2015'),
(164, '18EC35', 'Computer Organization and Design 						', 'David A. Patterson, John L. Hennessy					', 8, '2009'),
(165, '18EC35', 'Computer Organization & Architecture						', 'William Stallings					', 3, '2006'),
(166, '18EC35', 'Computer Systems Design and Architecture						', 'Vincent P. Heuring& Harry F. Jordan					', 3, '2004'),
(167, '18EC36', 'Power Electronics, Circuits, Devices and Applications					', 'Mohammad H Rashid					', 3, '2014'),
(168, '18EC36', 'Essentials and Applications					', 'L. Umanand					', 12, '2009'),
(169, '18EC36', '\"Electronic Instrumentation\n& Measurements\"					', 'David A. Bell					', 4, '2006'),
(170, '18EC36', 'Modern Electronic Instrumentation and Measuring Techniques					', '\"A. D. Helfrick and\nW.D. Cooper\"					', 3, '2015'),
(171, '18EC42', 'Electronic Devices and Circuit Theory				', 'Robert L Boylestad and Louis Nashelsky										', 3, '2013'),
(172, '18EC42', 'Fundamentals of Microelectronics				', 'BehzadRazavi										', 12, '2015'),
(173, '18EC42', 'Integrated Electronics										', 'J.Millman&C.C.Halkias				', 1, '2010'),
(174, '18EC43', 'Modern Control Engineering			', 'K.Ogata									', 3, '2002'),
(175, '18EC43', 'Automatic Control Systems			', 'Benjamin C. Kuo									', 12, '2008'),
(176, '18EC43', 'Feedback and Control System			', 'Joseph J Distefano III et al.									', 22, '2007'),
(177, '18EC44', 'Theory and Problems of Probability, Random Variables				', 'Hwei P. Hsu										Hwei P. Hsu										', 22, ''),
(178, '18EC44', 'Probability Theory and Stochastic Processes for Engineers				', '\"K. N. HariBhat, K Anitha Sheela, Jayant\nGanguly\"										', 9, '2019'),
(179, '18EC45', '\"Fundamentals of Signals\n& Systems\"			', 'Michael Roberts								', 1, '2010'),
(180, '18EC45', 'Signals and Systems			', 'Alan V Oppenheim, Alan S, Willsky and A Hamid							', 3, '1997'),
(181, '18EC45', 'Signals and Systems			', 'H.P Hsu, R. Ranjan								', 0, '2002'),
(182, '18EC45', 'Linear Systems and Signals			', 'B. P. Lathi								', 4, '2006'),
(183, '18EC45', 'Signals and Systems			', 'Ganesh Rao and SatishTunga								', 3, '2005'),
(184, '18EC46', '\"The 8051\nMicrocontroller Based Embedded Systems\"			', 'Manish K Patel							', 7, '2014'),
(185, '18EC46', 'Microcontrollers: Architecture, Programming, Interfacing and System Design			', 'Raj Kamal							', 3, '2005'),
(186, '18EC51', 'Essentials of Management: An International, Innovation and  perspective				', 'Harold Koontz, Heinz Weihrich									', 7, '2016'),
(187, '18EC52', 'Digital Signal Processing, A Computer Based Approach								', 'Sanjit K Mitra								', 7, '2013'),
(188, '18EC52', 'Discrete Time Signal Processing								', 'Oppenheim & Schaffer								', 10, '2003'),
(189, '18EC52', 'Digital Signal Processing								', 'D.Ganesh Rao and Vineeth P Gejji								', 9, '2017'),
(190, '18EC53', 'Modem Digital and Analog Communication Systems			', 'B. P. Lathi							', 4, ''),
(191, '18EC53', 'An Introduction to Analog and Digital Communication			', 'Simon Haykin							', 12, '2008'),
(192, '18EC53', 'Principles of Communication Systems			', 'H.Taub & D.L.Schilling							', 1, '2011'),
(193, '18EC53', 'Communication Systems			', 'Harold P.E, SamyA. Mahmoud, Lee Elliott Stern							', 3, '2004'),
(194, '18EC54', 'lTC and Cryptography			', 'Ranjan Bose							', 1, '2007'),
(195, '18EC54', 'Principles ofDigital Communication			', '\"J. Das, S.K.Mullick,\nP. K. Chatterjee\"							', 12, '1986'),
(196, '18EC54', 'Digital Conummications- Fundamentals andApplications			', 'Bernard Sklar							', 3, '2016'),
(197, '18EC54', 'Information Theory and Coding			', 'HariBhat, Ganesh Rao							', 9, '2017'),
(198, '18EC54', 'Error Correction Coding			', 'Todd K Moon							', 12, '2006'),
(199, '18EC55', 'Elements of Electromagnetics			', 'Matthew N.O., Sadiku							', 4, ''),
(200, '18EC55', 'Electromagnetic Waves and Radiating systems			', 'E. C. Jordan and K.G Balmain							', 10, ''),
(201, '18EC55', 'Electromagnetics			', 'Joseph Edminister							', 7, ''),
(202, '18EC55', 'Fundamentals of Electromagnetics for Engineering			', 'N. Narayana Rao							', 3, ''),
(203, '18EC56', 'The Verilog Hardware Description Language			', 'Donald E. Thomas, Philip R Moorby							', 23, ''),
(204, '18EC56', 'Advanced Digital Design with the Verilog HDL			', 'Michael D. Ciletti							', 3, ''),
(205, '18EC56', 'Design through Verilog HDL			', 'Padmanabhan, Tripura Sundari							', 12, ''),
(206, '18EC61', 'Modern Digital and Analog communication Systems							', 'B.P.Lathi and Zhi Ding					', 4, '2010'),
(207, '18EC61', 'Digital Communications							', 'Ian A Glover and Peter M Grant					', 3, '2010'),
(208, '18EC61', 'Digital Communications- Fundamentals and Applications							', 'Bernard Sklar and Ray					', 3, '2014'),
(209, '18EC62', 'Embedded systems- A contemporary design tool									', 'James K. Peckol						', 12, '2008'),
(210, '18EC62', 'Embedded Systems with Arm Cortex-M Microcontrollers in Assembly Language and C									', 'Yifeng Zhu						', 25, '2015'),
(211, '18EC62', 'Embedded Real Time Systems									', '\"K.V.\nK.KPrasad\"						', 24, '2003'),
(212, '18EC62', 'Embedded Systems									', 'Rajkamal						', 7, '2010'),
(213, '18EC63', 'Microwave Engineering						', 'John D. Krauss, Ronald J Marhefka, Ahmad SKhan					', 12, '2008'),
(214, '18EC63', 'Microwave Engineering						', 'Sushrut Das					', 4, '2015'),
(215, '18EC63', 'Antennas and Wave Propagation						', 'Harish and Sachidananda					', 4, '2007'),
(216, '18EC641', 'Operating Systems Concepts						', 'Silberschatz and Galvin					', 12, '2001'),
(217, '18EC641', 'Operating System-Internals and Design System						', 'William Stalling					', 3, '2006'),
(218, '18EC641', 'Operating Systems - Design and Implementation						', 'Tanenbaum					', 1, '2001'),
(219, '18EC642', 'Introduction to Artificial Neural Systems						', 'J.M. Zurada					', 26, '1994'),
(220, '18EC642', 'Artificial Neural Networks						', '\"B.\nYegnanarayana\"					', 10, '1998'),
(221, '18EC643', 'Object Oriented Programming with C++						', 'E.Balaguruswamy					', 1, '2013'),
(222, '18EC644', 'Digital System Designs and Practices: Using Verilog HDL and FPGAs					', 'Ming-Bo Lin					', 12, '2008'),
(223, '18EC644', 'Digital Systems Design Using Verilog					', 'Charles Roth, Lizy K. John, Byeong Kil Lee					', 9, ''),
(224, '18EC644', 'TheVerilog Hardware Description Language					', 'Donald E. Thomas, Philip R Moorby					', 0, ''),
(225, '18EC644', 'Advanced Digital Design with the Verilog HDL					', 'Michael D. Ciletti					', 3, ''),
(226, '18EC645', 'Hand Book of Nanoscience Engineering and Technology						', '\"Edited by William A Goddard III, Donald W Brenner, Sergey\nE. Lyshevski and Gerald J Iafrate\"							', 27, '2003'),
(227, '18EC646', 'Programming Python						', 'Mark Lutz					', 0, '2011'),
(228, '18EC646', 'Core Python Applications Programming						', 'Wesley J Chun					', 3, '2015'),
(229, '18EC646', 'Python Programming using problem solving approach						', 'Reema Thareja					', 4, '2017'),
(230, '18EC651', 'Theory and Application of Digital Signal Processing						', '', 28, ''),
(231, '18EC651', 'Signals and Systems						', '', 22, ''),
(232, '18EC651', 'Digital Signal Processing						', '', 22, ''),
(233, '18EC71', 'Computer Networks', 'James J Kurose, Keith W Ross', 3, ''),
(234, '18EC71', 'Introduction to Data Communication and Networking', 'Wayne Tomasi', 3, ''),
(235, '18EC71', 'Computer Networks', 'Andrew S Tanenbaum', 17, ''),
(236, '18EC71', 'Data and Computer Communications', 'William Stallings', 17, ''),
(237, '18EC72', 'Microelectronics Circuits Theory and Applications', 'Adel Sedra and K. C. Smith', 4, '2009'),
(238, '18EC72', 'Basic VLSIDesign', 'DouglasAPucknell & Kamran Eshragian', 10, '1994'),
(239, '18EC731', 'Real-Time Systems', 'C.M. Krishna, Kang G Shin', 7, '1997'),
(240, '18EC731', 'Real-Time Systems Design and Analysis', ' Phillip. A. Laplante', 10, '2005'),
(241, '18EC731', 'Embedded Systems', 'Raj Kamal', 1, '2005'),
(242, '18EC732', 'Satellite Communications', 'Dennis Roddy', 7, '2006'),
(243, '18EC732', 'Satellite Communications', 'Timothy Pratt, Charles Bostian', 12, '2017'),
(244, '18EC733', ' Digital Image Proce', 'S.Jayaraman, S. Esakkirajan', 1, '2014'),
(245, '18EC733', 'Fundamentals of Digital Image Processing', 'A K. Jain', 3, '2004'),
(246, '18EC733', ' Image Processing analysis and Machine', 'Milan Sonka and Roger Boile', 9, '2018'),
(247, '18EC734', 'Digital Signal Processing: Apractical approach', 'Ifeachor E. C., Jervis B', 10, '2002'),
(248, '18EC734', 'Digital Signal Processors', 'B Venkataramani and M Bhaskar', 1, '2010'),
(249, '18IS61', 'File Structures Using C++', 'K.R. Venugopal, K.G. Srinivas, P.M. Krishnaraj', 1, '2008'),
(250, '18IS61', ': C++ Components and Algorithms', 'Scot Robert Ladd', 17, '1993'),
(251, '18IS61', 'Database Management Systems', 'Raghu Ramakrishan and Johannes Gehrke', 1, '3rd Edition,2003'),
(252, '18IS62', 'Software testing Principles and Practices', 'Gopalaswamy Ramesh, Srinivasan Desikan', 3, '2 nd Edition, 2007'),
(253, '18IS62', 'Software Testing', 'Ron Patton', 3, '2nd edition, 2004'),
(254, '18IS62', 'The Craft of Software Testing', 'Brian Marrick', 3, '1995'),
(255, '18IS62', 'Software Quality Assurance, Testing and Metrics', 'Anirban Basu', 10, '2015'),
(256, '18IS62', 'Software Testing', 'Naresh Chauhan', 4, ''),
(257, '18IS645', 'Management Information System, Managing the Digital Firm', 'Kenneth C. Laudon and Jane P.Laudon', 3, '9th Edition'),
(258, '18IS645', 'Information Systems the Foundation of E-Business', 'Steven Alter', 3, '4th Edition'),
(259, '18IS645', 'Management Information System', 'W.S.Jawadekar', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `slno` int(11) NOT NULL,
  `stu_id` varchar(10) NOT NULL,
  `stu_email` varchar(50) NOT NULL,
  `bookname` varchar(100) NOT NULL,
  `bookid` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`slno`, `stu_id`, `stu_email`, `bookname`, `bookid`) VALUES
(1, '4GW20IS041', 'punyak@gmail.com', 'DAA', '4');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` varchar(20) NOT NULL,
  `stu_name` varchar(50) NOT NULL,
  `stu_dept` varchar(60) NOT NULL,
  `stu_email` varchar(50) NOT NULL,
  `stu_sem` int(11) NOT NULL,
  `password` varchar(15) NOT NULL,
  `stu_phone` bigint(10) NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_dept`, `stu_email`, `stu_sem`, `password`, `stu_phone`, `dept_id`) VALUES
('4GW19CS009', 'Gia', 'Computer Science & Engineering', 'gia@gmail.com', 7, 'gia@123', 8865651222, 1),
('4GW20CS010', 'Ram', 'Computer Science & Engineering', 'ram@gmail.com', 6, 'ram@1234', 9975332281, 1),
('4GW20EC011', 'Ananya', 'Electronics & Communication Engineering', 'ananya@gmail.com', 7, 'Ananya123', 8546578965, 3),
('4GW20EC041', 'Raju', 'Electronics & Communication Engineering', 'raju@gmail.com', 8, 'raju@123', 9865102375, 3),
('4GW20EC046', 'Rida', 'Electronics & Communication Engineering', 'rida@gmail.com', 4, 'Aa123', 8562132569, 3),
('4GW20IS020', 'Chetana', 'Information Science & Engineering', 'chetana15@gmail.com', 5, 'God@1234', 7795454216, 2),
('4GW20IS027', 'manasa', 'Information Science & Engineering', 'manasa@gmail.com', 5, 'manasa', 7022073899, 2),
('4GW20IS029', 'Megha K Prasad ', 'Information Science & Engineering', 'meghakprasad@gmail.com', 5, 'Megha@123', 9481312132, 2),
('4GW20IS041', 'Punya K', 'Information Science & Engineering', 'punyak@gmail.com', 6, '123', 8951293201, 2),
('4GW20IS047', 'Shreya', 'Information Science & Engineering', 'shreyags@gmail.com', 5, '123', 8951293201, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `slno` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `sub_code` varchar(10) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `sub_credits` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`slno`, `sem`, `sub_code`, `sub_name`, `sub_credits`, `dept_id`) VALUES
(1, 3, '18MAT31', 'Transform Calculus, Fourier Series And Numerical Techniques', 3, 2),
(2, 3, '18CS32', 'Data Structures and Applications', 4, 2),
(3, 3, '18CS33', 'Analog and Digital Electronics', 3, 2),
(4, 3, '18CS34', 'Computer Organization', 3, 2),
(5, 3, '18CS35', 'Software Engineering', 3, 2),
(6, 3, '18CS36', 'Discrete Mathematical Structures', 3, 2),
(7, 3, '18CSL37', 'Analog and Digital Electronics Laboratory', 2, 2),
(8, 3, '18CSL38', 'Data Structures Laboratory', 2, 2),
(9, 4, '18MAT41', 'Complex Analysis, Probability And Statistical Methods', 3, 2),
(10, 4, '18CS42', 'Design and Analysis of Algorithms', 4, 2),
(11, 4, '18CS43', 'Operating Systems', 3, 2),
(12, 4, '18CS44', 'Microcontroller and Embedded Systems', 3, 2),
(13, 4, '18CS45', 'Object Oriented Concepts', 3, 2),
(14, 4, '18CS46', 'Data Communication', 3, 2),
(15, 4, '18CSL47', 'Design and Analysis of Algorithm Laboratory', 2, 2),
(16, 4, '18CSL48', 'Microcontroller and Embedded Systems Laboratory', 2, 2),
(17, 5, '18CS51', 'Management, Entrepreneurship for IT Industry', 3, 2),
(18, 5, '18CS52', 'Computer Networks and Security', 4, 2),
(19, 5, '18CS53', 'Database Management System', 4, 2),
(20, 5, '18CS54', 'Automata theory and Computability', 3, 2),
(21, 5, '18CS55', 'Application Development using Python', 3, 2),
(22, 5, '18CS56', 'Unix Programming', 3, 2),
(23, 5, '18CSL57', 'Computer Network Laboratory', 2, 2),
(24, 5, '18CSL58', 'DBMS Laboratory with mini project', 2, 2),
(25, 5, '18CIV59', 'Environmental Studies', 1, 2),
(26, 6, '18IS61', 'File Structures', 4, 2),
(27, 6, '18IS62', 'Software Testing', 4, 2),
(28, 6, '18CS63', 'Web Technology and its applications', 4, 2),
(29, 6, '18CS64X', 'Professional Elective -1', 3, 2),
(30, 6, '18CS65X', 'Open Elective - A', 3, 2),
(31, 6, '18ISL66', 'Software Testing Laboratory', 2, 2),
(32, 6, '18ISL67', 'File Structures Laboratory with mini project', 2, 2),
(33, 6, '18CSMP68', 'Mobile Application Development', 2, 2),
(34, 6, '18CS641', 'Data Mining and Data Warehousing', 3, 2),
(35, 6, '18CS642', 'Object Oriented Modelling and Design', 3, 2),
(36, 6, '18CS643', 'Cloud Computing and its Applications', 3, 2),
(37, 6, '18CS644', 'Advanced JAVA and J2EE', 3, 2),
(38, 6, '18IS645', 'Information Management System', 3, 2),
(39, 6, '18CS651', 'Mobile Application Development', 3, 2),
(40, 6, '18CS652', 'Introduction to Data Structures and Algorithms', 3, 2),
(41, 6, '18CS653', 'Programming in JAVA', 3, 2),
(42, 6, '18CS654', 'Introduction to Operating System', 3, 2),
(43, 7, '18CS71', 'Artificial Intelligence and Machine Learning', 4, 2),
(44, 7, '18CS72', 'Big Data Analytics', 4, 2),
(45, 7, '18CS73X', 'Professional Elective - 2', 3, 2),
(46, 7, '18CS74X', 'Professional Elective - 3', 3, 2),
(47, 7, '18CS75X', 'Open Elective -B', 3, 2),
(48, 7, '18CSL76', 'Artificial Intelligence and Machine Learning Laboratory', 2, 2),
(49, 7, '18CSP77', 'Project Work Phase - 1', 1, 2),
(50, 7, '18CS731', 'Software Architecture and Design Patterns', 3, 2),
(51, 7, '18CS732', 'High Performance Computing', 3, 2),
(52, 7, '18CS733', 'Advanced Computer Architectures', 3, 2),
(53, 7, '18CS734', 'User Interface Design', 3, 2),
(54, 7, '18CS741', 'Digital Image Processing', 3, 2),
(55, 7, '18CS742', 'Network management', 3, 2),
(56, 7, '18CS743', 'Natural Language Processing', 3, 2),
(57, 7, '18CS744', 'Cryptography', 3, 2),
(58, 7, '18CS745', 'Robotic Process Automation Design & Development', 3, 2),
(59, 7, '18CS751', 'Introduction to Big Data Analytics', 3, 2),
(60, 7, '18CS752', 'Python Application Programming', 3, 2),
(61, 7, '18CS753', 'Introduction to Artificial Intelligence', 3, 2),
(62, 7, '18CS754', 'Introduction to Dot Net framework for Application Development', 3, 2),
(63, 8, '18CS81', 'Internet of Things', 3, 2),
(64, 8, '18CS82X', 'Professional Elective-4', 3, 2),
(65, 8, '18CSP83', 'Project Work Phase-2', 8, 2),
(66, 8, '18CSS84', 'Technical Seminar', 1, 2),
(67, 8, '18CSI85', 'Internship', 3, 2),
(68, 8, '18CS821', 'Mobile Computing', 3, 2),
(69, 8, '18CS822', 'Storage Area Networks', 3, 2),
(70, 8, '18CS823', 'NoSQL Database', 3, 2),
(71, 8, '18CS824', 'Multicore Architecture and Programming', 3, 2),
(72, 3, '18MAT31', 'Transform Calculus, Fourier Series And Numerical Techniques', 3, 1),
(73, 3, '18CS32', 'Data Structures and Applications', 4, 1),
(74, 3, '18CS33', 'Analog and Digital Electronics', 3, 1),
(75, 3, '18CS34', 'Computer Organization', 3, 1),
(76, 3, '18CS35', 'Software Engineering', 3, 1),
(77, 3, '18CS36', 'Discrete Mathematical Structures', 3, 1),
(78, 3, '18CSL37', 'Analog and Digital Electronics Laboratory', 2, 1),
(79, 3, '18CSL38', 'Data Structures Laboratory', 2, 1),
(80, 4, '18MAT41', 'Complex Analysis, Probability And Statistical Methods', 3, 1),
(81, 4, '18CS42', 'Design and Analysis of Algorithms', 4, 1),
(82, 4, '18CS43', 'Operating Systems', 3, 1),
(83, 4, '18CS44', 'Microcontroller and Embedded Systems', 3, 1),
(84, 4, '18CS45', 'Object Oriented Concepts', 3, 1),
(85, 4, '18CS46', 'Data Communication', 3, 1),
(86, 4, '18CSL47', 'Design and Analysis of Algorithm Laboratory', 2, 1),
(87, 4, '18CSL48', 'Microcontroller and Embedded Systems Laboratory', 2, 1),
(88, 5, '18CS51', 'Management, Entrepreneurship for IT Industry', 3, 1),
(89, 5, '18CS52', 'Computer Networks and Security', 4, 1),
(90, 5, '18CS53', 'Database Management System', 4, 1),
(91, 5, '18CS54', 'Automata theory and Computability', 3, 1),
(92, 5, '18CS55', 'Application Development using Python', 3, 1),
(93, 5, '18CS56', 'Unix Programming', 3, 1),
(94, 5, '18CSL57', 'Computer Network Laboratory', 2, 1),
(95, 5, '18CSL58', 'DBMS Laboratory with mini project', 2, 1),
(96, 5, '18CIV59', 'Environmental Studies', 1, 1),
(97, 6, '18CS61', 'System Software and Compilers', 4, 1),
(98, 6, '18CS62', 'Computer Graphics and Visualization', 4, 1),
(99, 6, '18CS63', 'Web Technology and its applications', 4, 1),
(100, 6, '18CS64X', 'Professional Elective -1', 3, 1),
(101, 6, '18CS65X', 'Open Elective ?A', 3, 1),
(102, 6, '18CSL66', 'System Software Laboratory', 2, 1),
(103, 6, '18CSL67', 'Computer Graphics Laboratory with mini project', 2, 1),
(104, 6, '18CSMP68', 'Mobile Application Development', 2, 1),
(105, 6, '18CS641', 'Data Mining and Data Warehousing', 3, 1),
(106, 6, '18CS642', 'Object Oriented Modelling and Design', 3, 1),
(107, 6, '18CS643', 'Cloud Computing and its Applications', 3, 1),
(108, 6, '18CS644', 'Advanced JAVA and J2EE', 3, 1),
(109, 6, '18CS645', 'System Modelling and Simulation', 3, 1),
(110, 6, '18CS651', 'Mobile Application Development', 3, 1),
(111, 6, '18CS652', 'Introduction to Data Structures and Algorithms', 3, 1),
(112, 6, '18CS653', 'Programming in JAVA', 3, 1),
(113, 6, '18CS654', 'Introduction to Operating System', 3, 1),
(114, 7, '18CS71', ' Artificial Intelligence and Machine Learning', 4, 1),
(115, 7, '18CS72', ' Big Data Analytics', 4, 1),
(116, 7, '18CS73X', ' Professional Elective ? 2', 3, 1),
(117, 7, '18CS74X', ' Professional Elective ? 3', 3, 1),
(118, 7, '18CS75X', ' Open Elective ?B', 3, 1),
(119, 7, '18CSL76 ', 'Artificial Intelligence and Machine Learning Laboratory', 2, 1),
(120, 7, '18CSP77', ' Project Work Phase ? 1', 1, 1),
(121, 7, '18CS731', 'Software Architecture and Design Patterns', 3, 1),
(122, 7, '18CS732', 'High Performance Computing', 3, 1),
(123, 7, '18CS733', 'Advanced Computer Architecture', 3, 1),
(124, 7, '18CS734', 'User Interface Design', 3, 1),
(125, 7, '18CS741', 'Digital Image Processing', 3, 1),
(126, 7, '18CS742', 'Network management', 3, 1),
(127, 7, '18CS743', 'Natural Language Processing', 3, 1),
(128, 7, '18CS744', 'Cryptography', 3, 1),
(129, 7, '18CS745', ' Robotic Process Automation Design & Development', 3, 1),
(130, 7, '18CS751', 'Introduction to Big Data Analytics', 3, 1),
(131, 7, '18CS752', 'Python Application Programming', 3, 1),
(132, 7, '18CS753', 'Introduction to Artificial Intelligence', 3, 1),
(133, 7, '18CS754', ' Introduction to Dot Net framework for Application Development', 3, 1),
(134, 8, '18CS81', 'Internet of Things', 3, 1),
(135, 8, '18CS82X', 'Professional Elective-4', 3, 1),
(136, 8, '18CSP83 ', 'Project Work Phase - 2', 8, 1),
(137, 8, '18CSS84', 'Technical Seminar', 1, 1),
(138, 8, '18CSI85', 'Internship', 3, 1),
(139, 8, '18CS821', 'Mobile Computing', 3, 1),
(140, 8, '18CS822', 'Storage Area Networks', 3, 1),
(141, 8, '18CS823', 'NoSQL Database', 3, 1),
(142, 8, '18CS824', 'Multicore Architecture and Programming', 3, 1),
(143, 3, '18MAT31', 'Transform Calculus, Fourier Series and Numerical Techniques ', 3, 3),
(144, 3, '18EC32', 'Network Theory', 4, 3),
(145, 3, '18EC33', 'Electronic Devices', 3, 3),
(146, 3, '18EC34', 'Digital System Design', 3, 3),
(147, 3, '18EC35', 'Computer Organization & Architecture ', 3, 3),
(148, 3, '18EC36', 'Power Electronics & Instrumentation ', 3, 3),
(149, 3, '18ECL37', 'Electronic Devices & Instrumentation Laboratory', 2, 3),
(150, 3, '18ECL38', 'Digital System DesignLaboratory', 2, 3),
(151, 4, '18MAT41 ', 'Complex Analysis, Probability and Statistical Methods', 3, 3),
(152, 4, '18EC42', 'Analog Circuits', 4, 3),
(153, 4, '18EC43', 'Control Systems', 3, 3),
(154, 4, '18EC44', 'Engineering Statistics & Linear Algebra', 3, 3),
(155, 4, '18EC45', 'Signals & Systems', 3, 3),
(156, 4, '18EC46', 'Microcontroller', 3, 3),
(157, 4, '18ECL47', 'Microcontroller Laboratory', 2, 3),
(158, 4, '18ECL48', 'Analog Circuits Laboratory', 2, 3),
(159, 5, '18ES51', 'Technological Innovation Management And Entrepreneurship', 3, 3),
(160, 5, '18EC52', 'Digital Signal Processing', 4, 3),
(161, 5, '18EC53', 'Principles of Communication Systems', 4, 3),
(162, 5, '18EC54', 'Information Theory & Coding', 3, 3),
(163, 5, '18EC55', 'Electromagnetic Waves', 3, 3),
(164, 5, '18EC56', 'Verilog HDL', 3, 3),
(165, 5, '18ECL57', 'Digital Signal Processing Laboratory', 2, 3),
(166, 5, '18ECL58', 'HDL Laboratory', 2, 3),
(167, 5, '18CIV59', 'Environmental Studies', 1, 3),
(168, 6, '18EC61', 'Digital Communication', 4, 3),
(169, 6, '18EC62', 'Embedded Systems', 4, 3),
(170, 6, '18EC63', 'Microwave & Antennas', 4, 3),
(171, 6, '18EC64X', 'Professional Elective -1', 3, 3),
(172, 6, '18EC65X', 'Open Elective ?A', 3, 3),
(173, 6, '18EC66', 'Embedded Systems Laboratory', 2, 3),
(174, 6, '18EC67', 'Communication Laboratory', 2, 3),
(175, 6, '18ECMP68', 'Mini-project', 2, 3),
(176, 6, '18EC641', 'Operating System', 3, 3),
(177, 6, '18EC642', 'Artificial Neural Networks', 3, 3),
(178, 6, '18EC643', 'Object Oriented Programming using C++', 3, 3),
(179, 6, '18EC644', 'Digital System Design using Verilog', 3, 3),
(180, 6, '18EC645', 'Nanoelectronics', 3, 3),
(181, 7, '18EC71', 'Computer Networks', 3, 3),
(182, 7, '18EC72', 'VLSI Design', 3, 3),
(183, 7, '18EC73X', 'Professional Elective - 2', 3, 3),
(184, 7, '18EC74X', 'Professional Elective - 3', 3, 3),
(185, 7, '18EC75X', 'Open Elective -B', 3, 3),
(186, 7, '18ECL76', 'Computer Networks Lab', 2, 3),
(187, 7, '18ECL77', 'VLSI Laboratory', 2, 3),
(188, 7, '18ECP78', 'Project Work Phase - 1', 1, 3),
(189, 7, '18EC731', 'Real Time System', 3, 3),
(190, 7, '18EC732', 'Satellite Communication', 3, 3),
(191, 7, '18EC733', 'Digital Image Processing', 3, 3),
(192, 7, '18EC734', 'Data Structures using C++', 3, 3),
(193, 7, '18EC735', 'DSP Algorithms &Architecture', 3, 3),
(194, 7, '18EC741', 'IOT & Wireless Sensor Networks', 3, 3),
(195, 7, '18EC742', 'Automotive Electronics', 3, 3),
(196, 7, '18EC743', 'Multimedia Communication', 3, 3),
(197, 7, '18EC744', 'Cryptography', 3, 3),
(198, 7, '18EC745', 'Machine Learning', 3, 3),
(199, 7, '18EC751', 'Communication Theory', 3, 3),
(200, 7, '18EC752', 'Neural Networks', 3, 3),
(201, 8, '18EC81', 'Wireless and Cellular Communication', 3, 3),
(202, 8, '18XX82X', 'Professional Elective - 4', 3, 3),
(203, 8, '18ECP83', 'Project Work Phase - 2', 8, 3),
(204, 8, '18ECS84', 'Technical Seminar', 1, 3),
(205, 8, '18ECI85', 'Internship', 3, 3),
(206, 8, '18EC821', 'Network Security', 3, 3),
(207, 8, '18EC822', 'Micro Electro Mechanical Systems', 3, 3),
(208, 8, '18EC823', 'Radar Engineering', 3, 3),
(209, 8, '18EC824', 'Optical Communication Networks', 3, 3),
(210, 8, '18EC825', 'Biomedical Signal Processing', 3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comments_post_id` (`post_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `donating`
--
ALTER TABLE `donating`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fac_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `prescribed_textbook`
--
ALTER TABLE `prescribed_textbook`
  ADD PRIMARY KEY (`Sl_no`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`Pub_id`);

--
-- Indexes for table `reference_textbook`
--
ALTER TABLE `reference_textbook`
  ADD PRIMARY KEY (`Sl_no`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`slno`),
  ADD KEY `stu_id` (`stu_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`slno`),
  ADD KEY `dept_id` (`dept_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `donating`
--
ALTER TABLE `donating`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `Pub_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`);

--
-- Constraints for table `prescribed_textbook`
--
ALTER TABLE `prescribed_textbook`
  ADD CONSTRAINT `Sub_code` FOREIGN KEY (`Sl_no`) REFERENCES `reference_textbook` (`Sl_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
