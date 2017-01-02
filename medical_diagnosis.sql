-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2017 at 03:48 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medical_diagnosis`
--

-- --------------------------------------------------------

--
-- Table structure for table `body_system_table`
--

CREATE TABLE `body_system_table` (
  `body_system_code` varchar(50) NOT NULL DEFAULT '0',
  `body_system_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `body_system_table`
--

INSERT INTO `body_system_table` (`body_system_code`, `body_system_name`) VALUES
('BS001', 'Head and Throat'),
('BS002', 'Respiratory System'),
('BS003', 'Generalized Problems'),
('BS004', 'Urinary System'),
('BS005', 'Cardiovascular System'),
('BS006', 'Neuro_Mental'),
('BS007', 'Skeletal Muscular'),
('BS008', 'Reproductive System'),
('BS009', 'Endocrine System'),
('BS010', 'Lymphatic System'),
('BS011', 'Immune System');

--
-- Triggers `body_system_table`
--
DELIMITER $$
CREATE TRIGGER `tg_body_sytem_table_insert` BEFORE INSERT ON `body_system_table` FOR EACH ROW BEGIN
  INSERT INTO body_system_table_seq VALUES (NULL);
  SET NEW.body_system_code= CONCAT('BS', LPAD(LAST_INSERT_ID(), 3, '0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `body_system_table_seq`
--

CREATE TABLE `body_system_table_seq` (
  `body_system_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `body_system_table_seq`
--

INSERT INTO `body_system_table_seq` (`body_system_code`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11);

-- --------------------------------------------------------

--
-- Table structure for table `contact_use_table`
--

CREATE TABLE `contact_use_table` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_use_table`
--

INSERT INTO `contact_use_table` (`id`, `name`, `email`, `subject`, `message`) VALUES
(2, 'Beatrice Abukuse', 'abukusebeatrice@gmail.com', 'Symptoms Missing', 'some symptoms are mising'),
(4, 'Edinah Nyaboke', 'otwoma.edinah@gmail.com', 'Diseases', 'Some Disease names are missing'),
(10, 'Edinah Nyaboke', 'otwoma.edinaah@gmail.com', 'Diseases', 'Data Entry'),
(15, 'ddd', 'dddd', 'dddd', 'dddddd'),
(16, 'ffff', 'fff', 'ggg', 'gggggg'),
(17, 'ggggg', 'gggg', 'hhhhh', 'ffffff'),
(18, 'edd', 'otwoma.edna@gmail.com', 'review of diseases', 'Pliz reviev the diseases with their spellings'),
(19, 'Beatok Beatit', 'beatok@gmail.com', 'Symptoms Missing', 'Symptoms are matching properly');

-- --------------------------------------------------------

--
-- Table structure for table `disease_symptom_table`
--

CREATE TABLE `disease_symptom_table` (
  `symptom_code` varchar(50) NOT NULL,
  `disease_code` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disease_symptom_table`
--

INSERT INTO `disease_symptom_table` (`symptom_code`, `disease_code`) VALUES
('SYMP001', 'DIS003'),
('SYMP001', 'DIS006'),
('SYMP004', 'DIS002'),
('SYMP005', 'DIS002'),
('SYMP006', 'DIS002'),
('SYMP007', 'DIS002'),
('SYMP008', 'DIS002'),
('SYMP009', 'DIS026'),
('SYMP011', 'DIS003'),
('SYMP013', 'DIS005'),
('SYMP014', 'DIS005'),
('SYMP015', 'DIS005'),
('SYMP016', 'DIS005'),
('SYMP016', 'DIS006'),
('SYMP017', 'DIS007'),
('SYMP018', 'DIS006'),
('SYMP018', 'DIS007'),
('SYMP019', 'DIS007'),
('SYMP021', 'DIS007'),
('SYMP021', 'DIS019'),
('SYMP022', 'DIS019'),
('SYMP024', 'DIS020'),
('SYMP025', 'DIS006'),
('SYMP026', 'DIS022'),
('SYMP027', 'DIS023'),
('SYMP028', 'DIS023'),
('SYMP029', 'DIS023'),
('SYMP030', 'DIS024'),
('SYMP031', 'DIS024'),
('SYMP032', 'DIS024'),
('SYMP033', 'DIS025'),
('SYMP034', 'DIS005'),
('SYMP035', 'DIS005'),
('SYMP035', 'DIS026'),
('SYMP038', 'DIS026'),
('SYMP040', 'DIS027'),
('SYMP041', 'DIS027'),
('SYMP042', 'DIS027'),
('SYMP043', 'DIS019'),
('SYMP044', 'DIS028'),
('SYMP045', 'DIS029'),
('SYMP046', 'DIS030'),
('SYMP047', 'DIS030'),
('SYMP048', 'DIS030'),
('SYMP049', 'DIS018'),
('SYMP050', 'DIS008'),
('SYMP050', 'DIS017'),
('SYMP050', 'DIS033'),
('SYMP051', 'DIS031'),
('SYMP051', 'DIS033'),
('SYMP052', 'DIS031'),
('SYMP053', 'DIS017'),
('SYMP055', 'DIS032'),
('SYMP056', 'DIS034'),
('SYMP056', 'DIS042'),
('SYMP057', 'DIS034'),
('SYMP058', 'DIS034'),
('SYMP059', 'DIS034'),
('SYMP060', 'DIS035'),
('SYMP061', 'DIS036'),
('SYMP062', 'DIS036'),
('SYMP063', 'DIS037'),
('SYMP064', 'DIS037'),
('SYMP065', 'DIS037'),
('SYMP066', 'DIS038'),
('SYMP067', 'DIS038'),
('SYMP068', 'DIS038'),
('SYMP069', 'DIS039'),
('SYMP070', 'DIS039'),
('SYMP071', 'DIS040'),
('SYMP072', 'DIS040'),
('SYMP073', 'DIS041'),
('SYMP074', 'DIS042'),
('SYMP075', 'DIS042'),
('SYMP076', 'DIS042'),
('SYMP077', 'DIS042'),
('SYMP079', 'DIS043'),
('SYMP080', 'DIS043'),
('SYMP081', 'DIS044'),
('SYMP082', 'DIS044'),
('SYMP083', 'DIS044'),
('SYMP084', 'DIS045'),
('SYMP085', 'DIS046'),
('SYMP086', 'DIS046'),
('SYMP087', 'DIS047'),
('SYMP088', 'DIS047'),
('SYMP089', 'DIS048'),
('SYMP090', 'DIS017'),
('SYMP091', 'DIS017');

-- --------------------------------------------------------

--
-- Table structure for table `disease_table`
--

CREATE TABLE `disease_table` (
  `disease_code` varchar(7) NOT NULL DEFAULT '0',
  `disease_name` varchar(50) DEFAULT NULL,
  `symptom_specific_code` varchar(7) NOT NULL,
  `body_system_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disease_table`
--

INSERT INTO `disease_table` (`disease_code`, `disease_name`, `symptom_specific_code`, `body_system_code`) VALUES
('DIS002', 'Sinusitis', '', 'BS001'),
('DIS003', 'Myopia', 'SSMP009', 'BS001'),
('DIS004', 'Hyperopia', 'SSMP007', 'BS001'),
('DIS005', 'Asthma', 'SSMP015', 'BS002'),
('DIS006', 'Bronchitis', 'SSMP006', 'BS002'),
('DIS007', 'malaria', 'SSMP002', 'BS003'),
('DIS008', 'Acid Indigestion and Upset Stomach', '', 'BS003'),
('DIS014', 'AIDS and HIV Infection', 'SSMP008', 'BS011'),
('DIS016', 'Acute Myocardial Infraction', '', 'BS003'),
('DIS017', 'Anemia', 'SSMP040', 'BS005'),
('DIS018', 'Hypertension (High Blood Pressure)', '', 'BS005'),
('DIS019', 'Kidney Stones', 'SSMP018', 'BS004'),
('DIS020', 'Headache (Cluster, Migraine, Sinus, Tension, Vascu', 'SSYM020', 'BS006'),
('DIS021', 'Cancer Of The Skin', 'SSMP010', 'BS003'),
('DIS022', 'Sore Throat', 'SSMP011', 'BS001'),
('DIS023', 'Glaucoma', 'SSMP012', 'BS001'),
('DIS024', 'Fever', 'SSMP013', 'BS003'),
('DIS025', 'Fatigue', 'SSMP014', 'BS003'),
('DIS026', 'Tuberculosis', 'SSMP016', 'BS002'),
('DIS027', 'Incontinence', 'SSMP017', 'BS004'),
('DIS028', 'Bladder Inflammation', 'SSMP019', 'BS004'),
('DIS029', 'Fluid Retention (Edema, Swelling)', 'SSMP020', 'BS004'),
('DIS030', 'Congestive Heart Failure', 'SSMP021', 'BS005'),
('DIS031', 'stroke', 'SSMP022', 'BS005'),
('DIS032', 'Insomnia', 'SSMP024', 'BS006'),
('DIS033', 'Vertigo', 'SSMP025', 'BS006'),
('DIS034', 'Anxiety', 'SSMP026', 'BS006'),
('DIS035', 'Headache', 'SSMP027', 'BS006'),
('DIS036', 'Trigeminal Neuralgia', '', 'BS006'),
('DIS037', 'Osteoporosis', 'SSMP028', 'BS007'),
('DIS038', 'Rickets', 'SSMP029', 'BS007'),
('DIS039', 'Arthritis (Osteoarthritis, Rheumatoid Arthritis)', 'SSMP030', 'BS007'),
('DIS040', 'Bursitis', 'SSMP031', 'BS007'),
('DIS041', 'Muscle Cramp, Spasm, Strain', 'SSMP032', 'BS007'),
('DIS042', 'Premenstrual Syndrome (PMS)', 'SSMP033', 'BS002'),
('DIS043', 'Menopause', 'SSMP034', 'BS008'),
('DIS044', 'Endometriosis', 'SSMP035', 'BS008'),
('DIS045', 'Leukemia', 'SSMP036', 'BS008'),
('DIS046', 'Diabetes', 'SSMP037', 'BS009'),
('DIS047', 'Hypothyroidism', 'SSMP038', 'BS009'),
('DIS048', 'Lyme Disease', 'SSMP039', 'BS010');

--
-- Triggers `disease_table`
--
DELIMITER $$
CREATE TRIGGER `tg_disease_table_insert` BEFORE INSERT ON `disease_table` FOR EACH ROW BEGIN
  INSERT INTO disease_table_seq VALUES (NULL);
  SET NEW.disease_code = CONCAT('DIS', LPAD(LAST_INSERT_ID(), 3, '0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `disease_table_seq`
--

CREATE TABLE `disease_table_seq` (
  `disease_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disease_table_seq`
--

INSERT INTO `disease_table_seq` (`disease_code`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48);

-- --------------------------------------------------------

--
-- Table structure for table `drug_disease_table`
--

CREATE TABLE `drug_disease_table` (
  `drug_code` varchar(7) NOT NULL,
  `disease_code` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug_disease_table`
--

INSERT INTO `drug_disease_table` (`drug_code`, `disease_code`) VALUES
('DRG002', 'DIS003'),
('DRG003', 'DIS007'),
('DRG004', 'DIS005'),
('DRG008', 'DIS006'),
('DRG008', 'DIS048'),
('DRG011', 'DIS002'),
('DRG012', 'DIS002'),
('DRG013', 'DIS008'),
('DRG014', 'DIS008'),
('DRG015', 'DIS020'),
('DRG016', 'DIS006'),
('DRG018', 'DIS006'),
('DRG019', 'DIS004'),
('DRG020', 'DIS003'),
('DRG020', 'DIS005'),
('DRG021', 'DIS021'),
('DRG022', 'DIS021'),
('DRG023', 'DIS022'),
('DRG024', 'DIS023'),
('DRG025', 'DIS024'),
('DRG025', 'DIS039'),
('DRG026', 'DIS024'),
('DRG027', 'DIS024'),
('DRG028', 'DIS025'),
('DRG029', 'DIS005'),
('DRG031', 'DIS026'),
('DRG032', 'DIS026'),
('DRG033', 'DIS026'),
('DRG034', 'DIS027'),
('DRG035', 'DIS019'),
('DRG036', 'DIS019'),
('DRG037', 'DIS028'),
('DRG038', 'DIS029'),
('DRG039', 'DIS029'),
('DRG040', 'DIS030'),
('DRG041', 'DIS030'),
('DRG042', 'DIS018'),
('DRG042', 'DIS031'),
('DRG044', 'DIS017'),
('DRG045', 'DIS032'),
('DRG045', 'DIS034'),
('DRG046', 'DIS033'),
('DRG048', 'DIS034'),
('DRG049', 'DIS035'),
('DRG050', 'DIS035'),
('DRG051', 'DIS036'),
('DRG051', 'DIS041'),
('DRG052', 'DIS036'),
('DRG053', 'DIS037'),
('DRG054', 'DIS037'),
('DRG055', 'DIS038'),
('DRG057', 'DIS039'),
('DRG057', 'DIS040'),
('DRG059', 'DIS040'),
('DRG061', 'DIS041'),
('DRG062', 'DIS042'),
('DRG063', 'DIS042'),
('DRG064', 'DIS043'),
('DRG065', 'DIS043'),
('DRG066', 'DIS044'),
('DRG067', 'DIS044'),
('DRG068', 'DIS045'),
('DRG069', 'DIS045'),
('DRG070', 'DIS046'),
('DRG071', 'DIS046'),
('DRG072', 'DIS047'),
('DRG073', 'DIS047');

-- --------------------------------------------------------

--
-- Table structure for table `drug_table`
--

CREATE TABLE `drug_table` (
  `drug_code` varchar(7) NOT NULL DEFAULT '0',
  `drug_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug_table`
--

INSERT INTO `drug_table` (`drug_code`, `drug_name`) VALUES
('DRG053', ' Alendronate'),
('DRG070', 'Acarbose'),
('DRG025', 'Acetaminophen'),
('DRG003', 'ACTM'),
('DRG004', 'Adrenocorticoids (Nasal Inhalation)'),
('DRG057', 'Adrenocorticoids (Systemic)'),
('DRG007', 'Allopurino'),
('DRG006', 'Alpha Adrenergic Receptor Blockers'),
('DRG023', 'Anesthetics (Mucosal-Local)'),
('DRG013', 'Antacids'),
('DRG019', 'Antibacterials (Ophthalmic)'),
('DRG062', 'Antidepressants, Tricyclic'),
('DRG024', 'Antiglaucoma, Adrenergic Antagonists '),
('DRG027', 'Aspirin '),
('DRG051', 'Baclofen'),
('DRG045', 'Barbiturates '),
('DRG048', 'Benzodiazepines'),
('DRG041', 'Beta-Adrenergic Blocking Agents'),
('DRG014', 'Bismuth Subsalicylate'),
('DRG029', 'Bronchodilators, Adrenergic'),
('DRG016', 'Bronchodilators, Xanthine'),
('DRG028', 'Caffeine'),
('DRG054', 'Calcitonin'),
('DRG063', 'Calcium Supplement'),
('DRG052', 'Carbamazepine'),
('DRG038', 'Carbonic Anhydrase Inhibitors'),
('DRG008', 'Cephalosporins'),
('DRG035', 'Citrates'),
('DRG020', 'Cromolyn '),
('DRG061', 'Cyclobenzaprine'),
('DRG031', 'Cycloserine '),
('DRG044', 'Cyclosporine '),
('DRG066', 'Danazol'),
('DRG067', 'Danazol Nafareklin'),
('DRG018', 'Dextromethorphan'),
('DRG072', 'Dextrothyroxine '),
('DRG040', 'Digitalis Preparations'),
('DRG037', 'Dimethyl Sulfoxide'),
('DRG039', 'Diuretics, Loop '),
('DRG049', 'Divalproex '),
('DRG050', 'Ergotamine'),
('DRG009', 'Erythromycins'),
('DRG064', 'Estrogens'),
('DRG032', 'Ethionamide'),
('DRG021', 'Fluorouracil'),
('DRG042', 'Guanadrel'),
('DRG068', 'Imatinib '),
('DRG071', 'Insulin'),
('DRG033', 'Isoniazid'),
('DRG010', 'Macrolide Antibiotics'),
('DRG022', 'Masoprocol'),
('DRG046', 'Meclizine'),
('DRG059', 'NSAID'),
('DRG026', 'NSAIDs'),
('DRG002', 'Panadol'),
('DRG036', 'Penicillamine '),
('DRG011', 'Penicillins'),
('DRG012', 'Penicillins and Beta Lactamase Inhibitors'),
('DRG065', 'Progestins'),
('DRG069', 'Thioguanine'),
('DRG073', 'Thyroid Hormones'),
('DRG034', 'Tolterodine'),
('DRG015', 'Vascular) 	Acetaminophen (Fioricet) '),
('DRG055', 'Vitamin D');

--
-- Triggers `drug_table`
--
DELIMITER $$
CREATE TRIGGER `tg_drug_table_insert` BEFORE INSERT ON `drug_table` FOR EACH ROW BEGIN
  INSERT INTO drug_table_seq VALUES (NULL);
  SET NEW.drug_code = CONCAT('DRG', LPAD(LAST_INSERT_ID(), 3, '0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `drug_table_seq`
--

CREATE TABLE `drug_table_seq` (
  `drug_table` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug_table_seq`
--

INSERT INTO `drug_table_seq` (`drug_table`) VALUES
(1),
(2),
(3),
(4),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(44),
(45),
(46),
(48),
(49),
(50),
(51),
(52),
(53),
(54),
(55),
(57),
(59),
(61),
(62),
(63),
(64),
(65),
(66),
(67),
(68),
(69),
(70),
(71),
(72),
(73);

-- --------------------------------------------------------

--
-- Table structure for table `job_table`
--

CREATE TABLE `job_table` (
  `job_code` varchar(7) NOT NULL DEFAULT '0',
  `job_description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_table`
--

INSERT INTO `job_table` (`job_code`, `job_description`) VALUES
('JBC001', 'Doctor'),
('JBC003', 'receptionist'),
('JBC004', 'Admin');

--
-- Triggers `job_table`
--
DELIMITER $$
CREATE TRIGGER `tg_job_table_insert` BEFORE INSERT ON `job_table` FOR EACH ROW BEGIN
  INSERT INTO job_table_seq VALUES (NULL);
  SET NEW.job_code = CONCAT('JBC', LPAD(LAST_INSERT_ID(), 3, '0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `job_table_seq`
--

CREATE TABLE `job_table_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_table_seq`
--

INSERT INTO `job_table_seq` (`id`) VALUES
(1),
(2),
(3),
(4);

-- --------------------------------------------------------

--
-- Table structure for table `patient_result_table`
--

CREATE TABLE `patient_result_table` (
  `id` int(50) NOT NULL,
  `patient_code` varchar(50) NOT NULL,
  `date_of_visit` varchar(50) NOT NULL,
  `disease_code` varchar(50) NOT NULL,
  `drug_code` varchar(50) NOT NULL,
  `staff_id_no` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_result_table`
--

INSERT INTO `patient_result_table` (`id`, `patient_code`, `date_of_visit`, `disease_code`, `drug_code`, `staff_id_no`) VALUES
(1, 'P025', '2016-04-04', 'DIS007', 'DRG003', 30175164),
(4, 'P001', '2016-03-04', 'DIS007', 'DRG003', 31485173),
(6, 'p022', '2016-04-02', 'DIS007', 'DRG003', 30175164),
(11, 'P027', '2016-04-01', 'DIS007', 'DRG003', 30175164),
(12, 'P029', '2016-04-16', 'DIS006', 'DRG018', 30175166),
(13, 'p024', '2016-04-03', 'DIS006', 'DRG018', 30175164),
(14, 'P015', '2016-04-06', 'DIS023', 'DRG024', 30175164),
(15, 'P023', '2016-04-06', 'DIS005', 'DRG029', 30175164),
(16, 'P029', '2016-04-06', 'DIS005', 'DRG029', 30175164),
(17, 'P029', '2016-04-06', 'DIS005', 'DRG029', 30175166),
(18, 'p031', '2016-04-08', 'DIS019', 'DRG036', 30175167),
(19, 'P030', '2016-04-11', 'DIS007', 'DRG003', 30175166),
(20, 'P030', '2016-04-05', 'DIS026', 'DRG033', 30175164),
(21, 'P032', '2016-04-06', 'DIS002', 'DRG012', 30175164),
(25, 'P026', '2016.04.5', 'DIS038', 'DRG055', 30175164),
(26, 'P030', '2016.04.5', 'DIS033', 'DRG046', 30175164),
(27, 'p030', '24/07/2013', '', '', 30175164);

-- --------------------------------------------------------

--
-- Table structure for table `patient_table`
--

CREATE TABLE `patient_table` (
  `patient_code` varchar(7) NOT NULL DEFAULT '0',
  `surname` varchar(50) DEFAULT NULL,
  `other_names` varchar(50) DEFAULT NULL,
  `box` int(50) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `postal_code` int(50) DEFAULT NULL,
  `y_o_b` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_table`
--

INSERT INTO `patient_table` (`patient_code`, `surname`, `other_names`, `box`, `town`, `postal_code`, `y_o_b`) VALUES
('P027', 'NJERI', 'MONICA', 234, 'Muranga', 10200, 24),
('P028', 'NYABOKE', 'DORPHINE NYACHAMA', 345, 'Nyamira', 40500, 1992),
('P029', 'OUMA', 'BENAERD', 255, 'Nairobi General Post Office', 100, 1993),
('P030', 'OLPHA', 'OTWOMA', 234, 'Kisii', 40200, 1997),
('P031', 'MUTHINI', 'MUTUA', 234, 'Machakos', 90100, 1993);

--
-- Triggers `patient_table`
--
DELIMITER $$
CREATE TRIGGER `tg_patient_table_insert` BEFORE INSERT ON `patient_table` FOR EACH ROW BEGIN
  INSERT INTO patient_table_seq VALUES (NULL);
  SET NEW.patient_code = CONCAT('P', LPAD(LAST_INSERT_ID(), 3, '0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `patient_table_seq`
--

CREATE TABLE `patient_table_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_table_seq`
--

INSERT INTO `patient_table_seq` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(27),
(28),
(29),
(30),
(31),
(32);

-- --------------------------------------------------------

--
-- Table structure for table `postal_code_table`
--

CREATE TABLE `postal_code_table` (
  `id` int(50) NOT NULL,
  `town` varchar(50) NOT NULL,
  `postal_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postal_code_table`
--

INSERT INTO `postal_code_table` (`id`, `town`, `postal_code`) VALUES
(1, 'Adungosi', '50413'),
(2, 'Agenga', '40406'),
(3, 'Ahero', '40101'),
(4, 'Ainabkoi', '30101'),
(5, 'Akado', '40114'),
(6, 'Akala', '40139'),
(7, 'Aluor', '40140'),
(8, 'Alupe', '50414'),
(9, 'Amagoro', '50244'),
(10, 'Amukura', '50403'),
(11, 'Andingo', '40136'),
(12, 'Angurai', '50412'),
(13, 'Anyiko', '40616'),
(14, 'Anyuongi', '40617'),
(15, 'Aram', '40618'),
(16, 'Archer''s Post', '60302'),
(17, 'Arror', '30708'),
(18, 'Asembo Bay', '40619'),
(19, 'Asumbi', '40309'),
(20, 'Athi River', '00204'),
(21, 'Awach Bridge', '40115'),
(22, 'Awach Tende', '40328'),
(23, 'Bahati', '20113'),
(24, 'Bamba', '80210'),
(25, 'Bamburi', '80101'),
(26, 'Banja', '50316'),
(27, ' Bar Ober', '50411'),
(28, 'Baragoi', '20601'),
(29, 'Baraton', '30306'),
(30, 'Baricho', '10302'),
(31, 'Bartabwa', '30409'),
(32, 'Bartolimo', '30408'),
(33, 'Barwesa', '30411'),
(34, 'Bibirioni', '00226'),
(35, 'Bissil', '01101'),
(36, 'Boito', '20409'),
(37, 'Bokoli', '50206'),
(38, 'Bomet', '20400'),
(39, 'Bondeni', '20101'),
(40, 'Bondo', '40601'),
(41, 'Boro', '40620'),
(42, 'Budalangi', '50415'),
(43, 'Bugar', '30702'),
(44, 'Buhuyi', '50416'),
(45, 'Bukebe', '50233'),
(46, 'Bukiri', '50417'),
(47, 'Bukura', '50105'),
(48, 'Bulimbo', '50109'),
(49, 'Bumala', '50404'),
(50, 'Bumutiru', '50418'),
(51, 'Bungoma', '50200'),
(52, 'Bunyore', '50301'),
(53, 'Bura Tana', '70104'),
(54, 'Burnt Forest', '30102'),
(55, 'Buru Buru', '00515'),
(56, 'Busia', '50400'),
(57, 'Butere', '50101'),
(58, 'Butula', '50405'),
(59, 'Buyofu', '50210'),
(60, 'Chamakhanga', '50302'),
(61, 'Changamwe', '80102'),
(62, 'Chavakali', '50317'),
(63, 'Chebara', '20138'),
(64, 'Chebiemit', '30706'),
(65, 'Cheborge', '20215'),
(66, 'Banja', '50316'),
(67, ' Bar Ober', '50411'),
(68, 'Baragoi', '20601'),
(69, 'Baraton', '30306'),
(70, 'Baricho', '10302'),
(71, 'Bartabwa', '30409'),
(72, 'Bartolimo', '30408'),
(73, 'Barwesa', '30411'),
(74, 'Bibirioni', '00226'),
(75, 'Bissil', '01101'),
(76, 'Boito', '20409'),
(77, 'Bokoli', '50206'),
(78, 'Bomet', '20400'),
(79, 'Bondeni', '20101'),
(80, 'Bondo', '40601'),
(81, 'Boro', '40620'),
(82, 'Budalangi', '50415'),
(83, 'Bugar', '30702'),
(84, 'Buhuyi', '50416'),
(85, 'Bukebe', '50233'),
(86, 'Bukiri', '50417'),
(87, 'Bukura', '50105'),
(88, 'Bulimbo', '50109'),
(89, 'Bumala', '50404'),
(90, 'Bumutiru', '50418'),
(91, 'Bungoma', '50200'),
(92, 'Bunyore', '50301'),
(93, 'Bura Tana', '70104'),
(94, 'Burnt Forest', '30102'),
(95, 'Buru Buru', '00515'),
(96, 'Busia', '50400'),
(97, 'Butere', '50101'),
(98, 'Butula', '50405'),
(99, 'Buyofu', '50210'),
(100, 'Chamakhanga', '50302'),
(101, 'Changamwe', '80102'),
(102, 'Chavakali', '50317'),
(103, 'Chebara', '20138'),
(104, 'Chebiemit', '30706'),
(105, 'Cheborge', '20215'),
(106, 'Banja', '50316'),
(107, ' Bar Ober', '50411'),
(108, 'Baragoi', '20601'),
(109, 'Baraton', '30306'),
(110, 'Baricho', '10302'),
(111, 'Bartabwa', '30409'),
(112, 'Bartolimo', '30408'),
(113, 'Barwesa', '30411'),
(114, 'Bibirioni', '00226'),
(115, 'Bissil', '01101'),
(116, 'Boito', '20409'),
(117, 'Bokoli', '50206'),
(118, 'Bomet', '20400'),
(119, 'Bondeni', '20101'),
(120, 'Bondo', '40601'),
(121, 'Boro', '40620'),
(122, 'Budalangi', '50415'),
(123, 'Bugar', '30702'),
(124, 'Buhuyi', '50416'),
(125, 'Bukebe', '50233'),
(126, 'Bukiri', '50417'),
(127, 'Bukura', '50105'),
(128, 'Bulimbo', '50109'),
(129, 'Bumala', '50404'),
(130, 'Bumutiru', '50418'),
(131, 'Bungoma', '50200'),
(132, 'Bunyore', '50301'),
(133, 'Bura Tana', '70104'),
(134, 'Burnt Forest', '30102'),
(135, 'Buru Buru', '00515'),
(136, 'Busia', '50400'),
(137, 'Butere', '50101'),
(138, 'Butula', '50405'),
(139, 'Buyofu', '50210'),
(140, 'Chamakhanga', '50302'),
(141, 'Changamwe', '80102'),
(142, 'Chavakali', '50317'),
(143, 'Chebara', '20138'),
(144, 'Chebiemit', '30706'),
(145, 'Cheborge', '20215'),
(146, 'Chebororwa', '30125'),
(147, 'Chebunyo', '20226'),
(148, 'Chebunyo', '20401'),
(149, 'Chemamul', '20222'),
(150, 'Chemaner', '20407'),
(151, 'Chemase', '40143'),
(152, 'Chemelil', '40116'),
(153, 'Chemiron', '30206'),
(154, 'Chepareria', '30605'),
(155, 'Chepchoina', '30207'),
(156, 'Chepkemel', '20216'),
(157, 'Chepkiswet', '20137'),
(158, 'Chepkorio', '30129'),
(159, 'Chepkunyuk', '30308'),
(160, 'Chepsonoi', '30309'),
(161, 'Cheptais', '50201'),
(162, 'Cheptalal', '20410'),
(163, 'Chepterwai', '30121'),
(164, 'Cheptongei', '30709'),
(165, 'Chesamisi', '50243'),
(166, 'Chesinendet', '20217'),
(167, 'Chesoi', '30712'),
(168, 'Chogoria', '60401'),
(169, 'Chuka', '60400'),
(170, 'Chuluni', '90219'),
(171, 'Chumvini', '80314'),
(172, 'Chwele', '50202'),
(173, 'City Square', '00200'),
(174, 'Coast General Hospital', '80103'),
(175, 'Community', '00201'),
(176, 'Dadaab', '70103'),
(177, 'Dago', '40112'),
(178, 'Dandora', '00516'),
(179, 'Daraja Mbili', '40117'),
(180, 'Dede', '40331'),
(181, 'Diani Beach', '80401'),
(182, 'Docks', '80104'),
(183, 'Dol Dol', '10401'),
(184, 'Donyo Sabuk', '01027'),
(185, 'Dorofu', '50213'),
(186, 'Dudi', '40621'),
(187, 'Dundori', '20118'),
(188, 'Eastleigh', '00610'),
(189, 'Egerton University', '20115'),
(190, 'Ekalakala', '90139'),
(191, 'El Wak', '70301'),
(192, 'Elburgon', '20102'),
(193, 'Eldama Ravine', '20103'),
(194, 'Eldoret', '30100'),
(195, 'Eldoret Airport', '30124'),
(196, 'Elementaita', '20119'),
(197, 'Elugulu', '50429'),
(198, 'Emali', '90121'),
(199, 'Emarinda', '50110'),
(200, 'Embakasi', '00501'),
(201, 'Embu', '60100'),
(202, 'Emining', '20140'),
(203, 'Emuhaya', '50314'),
(204, 'Endarasha', '10107'),
(205, 'Endau', '90206'),
(206, 'Endebess', '30201'),
(207, 'Enosaen', '40703'),
(208, 'Enterprise Road', '00500'),
(209, 'Equator', '30122'),
(210, 'Eregi', '50303'),
(211, 'Esso Plaza', '00620'),
(212, 'Etago', '40208'),
(213, 'Faza', '80501'),
(214, 'Fort Ternan', '20209'),
(215, 'Funyula', '50406'),
(216, 'Gacharageini', '10210'),
(217, 'Gachika', '00238'),
(218, 'Gachoka', '60119'),
(219, 'Gaitu', '60209'),
(220, 'Gakere Road', '10109'),
(221, 'Gakindu', '10111'),
(222, 'Gakoe', '01005'),
(223, 'Gakurwe', '10211'),
(224, 'Gambogi', '50318'),
(225, 'Ganze', '80205'),
(226, 'Garba Tulla', '60301'),
(227, 'Garissa', '70100'),
(228, 'Garsen', '80201'),
(229, 'Gatara', '10212'),
(230, 'Gatarakwa', '10212'),
(231, 'Gathiruini', '00239'),
(232, 'Gathugu', '00240'),
(233, 'Gathuthi', '10113'),
(234, 'Gatitu', '10114'),
(235, 'Gatondo', '10115'),
(236, 'Gatugura', '10305'),
(237, 'Gatukuyu', '01028'),
(238, 'Gatundu', '01030'),
(239, 'Gatunga', '60216'),
(240, 'Gatunga', '60404'),
(241, 'Gatura', '01013'),
(242, 'Gede', '80208'),
(243, 'Gembe', '40312'),
(244, 'Gesima', '40503'),
(245, 'Gesusu', '40201'),
(246, 'Giakaibei', '10116'),
(247, 'Giakanja', '10108'),
(248, '10117 Gichichi', '10117'),
(249, 'Gigiri', '00601'),
(250, 'Gikoe', '10213'),
(251, 'Gilgil', '20116'),
(252, 'Giribe', '40407'),
(253, 'Gisambai', '50304'),
(254, 'Githiga', '00903'),
(255, 'Githongo', '60205'),
(256, 'Githumu', '01032'),
(257, 'Githunguri', '00216'),
(258, 'Gitimene', '60212'),
(259, 'Gituamba', '01003'),
(260, 'Gitugi', '10209'),
(261, 'Gongoni', '80206'),
(262, 'Gorgor', '20111'),
(263, 'Got Oyaro', '40313'),
(264, 'Griftu', '70202'),
(265, 'Habaswein', '70201'),
(266, '50407 Hakati', '50407'),
(267, 'Hamisi', '50312'),
(268, 'Hawinga', '40640'),
(269, 'Highridge', '00612'),
(270, 'Hola', '70101'),
(271, 'Homa Bay', '40300'),
(272, 'Huruma', '30109'),
(273, 'Ichichi', '10227'),
(274, 'Igare', '40209'),
(275, 'Igegania', '01006'),
(276, 'Igoji', '60402'),
(277, 'Igwamiti', '20307'),
(278, 'Ihururu Market', '10118'),
(279, 'Iiani Yi Mang''Ulu', '90120'),
(280, 'Ikalaasa', '90135'),
(281, 'Ikerege', '40415'),
(282, 'Ikinu', '00904'),
(283, 'Ikonge', '40501'),
(284, 'Ikutha', '90207'),
(285, 'Ikuu', '60405'),
(286, 'Ilasit', '00214'),
(287, 'Ileho', '50111'),
(288, 'Imanga', '50112'),
(289, 'Indechero', '50113'),
(290, 'Iriwa', '80310'),
(291, 'Ishiara', '60102'),
(292, 'Isibania', '40414'),
(293, 'Isinya', '01102'),
(294, 'Isiolo', '60300'),
(295, 'Isulu', '50114'),
(296, 'Iten', '30700'),
(297, 'Ithanga', '01015'),
(298, 'Itibo', '40504'),
(299, 'Itumbe', '40210'),
(300, 'Jebrok', '50319'),
(301, 'Juja Road', '00622'),
(302, 'Kabarnet', '30400'),
(303, 'Kabartonjo', '30401'),
(304, 'Kabati', '90205'),
(305, 'Kabatini', '20120'),
(306, 'Kabazi', '20114'),
(307, 'Kabete', '00602'),
(308, 'Kabianga', '20201'),
(309, 'Kabiemit', '30130'),
(310, 'Kabimoi', '20139'),
(311, 'Kabiyet', '30303'),
(312, 'Kaboson', '20412'),
(313, 'Kabula', '50214'),
(314, 'Kacheliba', '30601'),
(315, 'Kadel', '40314'),
(316, 'Kadongo', '40223'),
(317, 'Kagicha', '10119'),
(318, 'Kagio', '10306'),
(319, 'Kagumo', '10307'),
(320, 'Kagunduini', '01033'),
(321, 'Kagwe', '00223'),
(322, 'Kaheho', '20304'),
(323, 'Kahuhia', '10206'),
(324, 'Kahuro', '10201'),
(325, 'Kahuti', '10214'),
(326, 'Kaibichbich', '30606'),
(327, 'Kaiboi', '30310'),
(328, 'Kaimosi', '50305'),
(329, 'Kainuk', '30604'),
(330, 'Kairi', '01007'),
(331, 'Kairo', '10215'),
(332, 'Kajiado', '01100'),
(333, 'Kakamega', '50100'),
(334, 'Kakemer', '50419'),
(335, 'Kakibora', '30216'),
(336, 'Kakoneni', '80209'),
(337, 'Kakuma', '30501'),
(338, 'Kakunga', '50115'),
(339, 'Kakuzi', '01014'),
(340, 'Kalamba', '90122'),
(341, 'Kalamba', '90306'),
(342, 'Kalawa', '90126'),
(343, 'Kalimoni', '01001'),
(344, 'Kalokol', '30502'),
(345, 'Kaloleni', '80105'),
(346, 'Kamaget', '20218'),
(347, 'Kamahuha', '10217'),
(348, 'Kamara', '20134'),
(349, 'Kamberua', '10216'),
(350, 'Kambiri', '50116'),
(351, 'Kambiti', '10226'),
(352, '00607 Kamiti', '00607'),
(353, 'Kampi Ya Moto', '20121'),
(354, 'Kampi Ya Samaki', '30406'),
(355, 'Kamukuywa', '50216'),
(356, 'Kamuriai', '50408'),
(357, 'Kamuwongo', '90403'),
(358, 'Kamwaura', '20132'),
(359, 'Kamwosor', '30113'),
(360, 'Kanam', '40315'),
(361, 'Kandara', '01034'),
(362, 'Kandiege', '40304'),
(363, 'Kanduyi', '50215'),
(364, 'Kangari', '10218'),
(365, 'Kangema', '10202'),
(366, 'Kangemi', '00625'),
(367, 'Kangeta', '60603'),
(368, 'Kangoo', '01008'),
(369, 'Kangundo', '90115'),
(370, 'Kanja', '60118'),
(371, 'Kanjuku', '01004'),
(372, 'Kanyaagia', '20309'),
(373, 'Kanyakine', '60206'),
(374, 'Kanyenyaini', '10220'),
(375, 'Kanyoni', '01011'),
(376, 'Kanyuambora', '60106'),
(377, 'Kanziko', '90208'),
(378, 'Kapcheno', '30304'),
(379, 'Kapcherany', '20413'),
(380, 'Kapcherop', '30204'),
(381, 'Kapchorwa', '30311'),
(382, 'Kapedo', '30410'),
(383, 'Kapenguria', '30600'),
(384, 'Kapkateny', '50232'),
(385, 'Kapkatet', '20214'),
(386, 'Kapkelek', '20219'),
(387, 'Kapkenda', '30119'),
(388, 'Kapkesosio', '20414'),
(389, 'Kapkoros', '20415'),
(390, 'Kapkugerwet', '20206'),
(391, 'Kapngetuny', '30111'),
(392, 'Kapsabet', '30300'),
(393, 'Kapsara', '30208'),
(394, 'Kapsoit', '20211'),
(395, 'Kapsokwony', '50203'),
(396, 'Kapsowar', '30705'),
(397, 'Kapsumbeiwa', '30313'),
(398, 'Kapsuser', '20207'),
(399, 'Kaptagat', '30114'),
(400, 'Kaptalamwa', '30710'),
(401, 'Kaptama', '50234'),
(402, 'Kaptarakwa', '30701'),
(403, 'Kaptebengwet', '20221'),
(404, 'Kaptel', '30312'),
(405, 'Kapteren', '30711'),
(406, 'Karaba', '60105'),
(407, 'Karatina', '10101'),
(408, 'Karatu', '00233'),
(409, 'Karemeno', '10120'),
(410, 'Karen', '00502'),
(411, ' Karima', '10121'),
(412, 'Karingari', '60107'),
(413, 'Kariobangi', '00615'),
(414, 'Karota', '40505'),
(415, 'Karumandi', '10308'),
(416, 'Karungu', '40401'),
(417, 'Karuri', '00219'),
(418, 'Karurumo', '60117'),
(419, 'Kasarani', '00608'),
(420, 'Kasigau', '80307'),
(421, 'Kasikeu', '90123'),
(422, 'Katangi', '90106'),
(423, 'Kathiani', '90105'),
(424, 'Kathonzweni', '90302'),
(425, 'Kathwana', '60406'),
(426, 'Katilu', '30508'),
(427, 'Katito', '40118'),
(428, 'Katse', '90404'),
(429, 'Katutu', '90217'),
(430, 'Kaviani', '90107'),
(431, 'Kaweru', '10219'),
(432, 'Kebirigo', '40506'),
(433, 'Kedowa', '20220'),
(434, 'Keekorok', '20501'),
(435, 'Kegogi', '40515'),
(436, 'Kegonga', '40416'),
(437, 'Kehancha', '40413'),
(438, 'Kendu Bay', '40301'),
(439, 'Kenyatta Hospital', '00202'),
(440, 'Kenyatta International Conference Center', '00203'),
(441, 'Kenyatta University', '00609'),
(442, 'Kenyenya', '40211'),
(443, 'Kericho', '20200'),
(444, 'Keroka', '40202'),
(445, 'Kerugoya', '10300'),
(446, 'Kerwa', '00906'),
(447, 'Kesogon', '30215'),
(448, 'Keumbu', '40212'),
(449, 'Kevote', '60108'),
(450, 'Khayega', '50104'),
(451, 'Khumusalaba', '50306'),
(452, 'Khwisero', '50135'),
(453, 'Kiamariga', '10122'),
(454, 'Kiambere', '60109'),
(455, 'Kiambu', '00900'),
(456, 'Kiambururu', '00224'),
(457, 'Kiamokama', '40213'),
(458, 'Kiamuringa', '60110'),
(459, 'Kiamutuga', '10309'),
(460, 'Kiamwangi', '00236'),
(461, 'Kiandu', '10123'),
(462, 'Kianjai', '60602'),
(463, 'Kianjokoma', '60111'),
(464, 'Kianyaga', '10301'),
(465, 'Kiawarigi', '10124'),
(466, 'Kibicho', '00237'),
(467, 'Kibigori', '40119'),
(468, 'Kibirichia', '60201'),
(469, 'Kibirigwi', '10141'),
(470, 'Kibos', '40120'),
(471, 'Kibugu', '60112'),
(472, 'Kibwezi', '90137'),
(473, 'Kiganjo', '10102'),
(474, 'Kigumo', '10203'),
(475, 'Kihoya', '10207'),
(476, 'Kihuga Square', '30110'),
(477, 'Kiirua', '60207'),
(478, 'Kijabe', '00220'),
(479, 'Kikima', '90125'),
(480, '00902 Kikuyu', '00902'),
(481, 'Kilala', '90305'),
(482, 'Kilgoris', '40700'),
(483, 'Kilibwoni', '30315'),
(484, 'Kilifi', '80108'),
(485, 'Kilindini', '80107'),
(486, 'Kilingili', '50315'),
(487, 'Kimahuri', '10125'),
(488, 'Kimana', '00215'),
(489, 'Kimathi Way', '10140'),
(490, 'Kimbimbi', '10310'),
(491, 'Kimilili', '50204'),
(492, 'Kiminini', '30209'),
(493, 'Kimoning', '30120'),
(494, 'Kimulot', '20225'),
(495, 'Kimwarer', '30128'),
(496, 'Kinamba', '20320'),
(497, 'Kinango', '80405'),
(498, 'Kinari', '00227'),
(499, 'Kindaruma', '01031'),
(500, 'Kinunga', '10126'),
(501, 'Kionyo', '60211'),
(502, 'Kipevu', '80116'),
(503, 'Kipkabus', '30103'),
(504, 'Kipkarren River', '50241'),
(505, 'Kipkelion', '20202'),
(506, 'Kiplegetet', '30117'),
(507, 'Kiplelji', '20416'),
(508, 'Kipsaina', '30203'),
(509, 'Kiptabach', '30118'),
(510, 'Kiptagich', '30402'),
(511, 'Kiptangwanyi', '20133'),
(512, 'Kiptere', '20213'),
(513, 'Kiptugumo', '20208'),
(514, 'Kirengeti', '20131'),
(515, 'Kiriaini', '10204'),
(516, 'Kirie', '60116'),
(517, 'Kirimun', '20605'),
(518, 'Kirisoi', '20135'),
(519, 'Kiritiri', '60113'),
(520, 'Kiritu', '50313'),
(521, 'Kiriua', '01017'),
(522, 'Kirobon', '20130'),
(523, 'Kiruara', '01018'),
(524, 'Kisanana', '20144'),
(525, 'Kisasi', '90204'),
(526, 'Kisii', '40200'),
(527, 'Kisumu', '40100'),
(528, 'Kitale', '30200'),
(529, 'Kithimani', '90124'),
(530, 'Kithimu', '60114'),
(531, 'Kithyoko', '90144'),
(532, 'Kitise', '90303'),
(533, 'Kitivo', '80316'),
(534, 'Kitui', '90200'),
(535, 'Kiunyu', '01019'),
(536, 'Kiusyani', '90218'),
(537, 'Kivaani', '90116'),
(538, 'Kivunga', '90111'),
(539, 'Kobujoi', '30305'),
(540, 'Kocholya', '50420'),
(541, 'Kodula', '40316'),
(542, 'Kodula', '40316'),
(543, 'Koilot', '30314'),
(544, 'Koiwa', '20417'),
(545, '40317 Kojwang', '40317'),
(546, 'Kola', '90108'),
(547, 'Kolanya', '50217'),
(548, 'Kombewa', '40102'),
(549, 'Kondele', '40103'),
(550, 'Kondik', '40121'),
(551, 'Konza', '00212'),
(552, 'Kopolo', '40644'),
(553, 'Koracha', '40639'),
(554, 'Koru', '40104'),
(555, 'Koyonzo', '50117'),
(556, 'Kurabei', '20224'),
(557, 'Kutus', '10304'),
(558, 'Kwale', '80403'),
(559, 'Kwanza', '30210'),
(560, 'Kwavonza', '90215'),
(561, 'Kyeni', '90209'),
(562, 'Kyuso', '90401'),
(563, 'Laare', '60601'),
(564, 'Laboret', '30126'),
(565, 'Labuiywo', '40144'),
(566, 'Ladhri Awasi', '40122'),
(567, 'Lamu', '80500'),
(568, 'Lamuria', '10139'),
(569, 'Lanet', '20112'),
(570, 'Langas', '30112'),
(571, 'Langata', '00509'),
(572, 'Lavington', '00603'),
(573, 'Lela', '40134'),
(574, 'Lengita', '20506'),
(575, 'Leseru', '30115'),
(576, 'Leshau', '20310'),
(577, 'Lessos', '30302'),
(578, 'Likoni', '80110'),
(579, 'Limuru', '00217'),
(580, 'Lita', '90109'),
(581, 'Litein', '20210'),
(582, 'Lodwar', '30500'),
(583, 'Loitokitok', '00209'),
(584, 'Loiyangalani', '60501'),
(585, 'Lokichar', '30505'),
(586, 'Lokichoggio', '30503'),
(587, 'Lokitaung', '30504'),
(588, 'Lokori', '30506'),
(589, 'Lolgorian', '40701'),
(590, 'Lolwe', '40128'),
(591, 'Londiani', '20203'),
(592, 'Longisa', '20402'),
(593, 'Longonot', '20146'),
(594, 'Lorugum', '30507'),
(595, 'Lower Kabete', '00604'),
(596, 'Luanda', '50307'),
(597, 'Luandanyi', '50219'),
(598, 'Luandeti', '50240'),
(599, 'Lubao', '50118'),
(600, 'Lugari', '50108'),
(601, 'Lugingo', '40622'),
(602, 'Lugulu', '50218'),
(603, 'Luhano', '40623'),
(604, 'Lukolis', '50421'),
(605, 'Lukore', '80408'),
(606, 'Lukume', '50132'),
(607, 'Lukusi', '50230'),
(608, 'Lumakanda', '50242'),
(609, 'Lunga Lunga', '80402'),
(610, 'Lunza', '50119'),
(611, 'Lurambi', '50120'),
(612, 'Lusingeti', '00905'),
(613, 'Lusiola', '50320'),
(614, 'Lutaso', '50121'),
(615, 'Lwakhakha', '50220'),
(616, 'Maai Mahiu', '20147'),
(617, 'Mabusi', '50535'),
(618, 'Machakos', '90100'),
(619, 'Madaraka', '01002'),
(620, 'Madeya', '40641'),
(621, 'Madiany', '40613'),
(622, 'Madina', '80207'),
(623, 'Magada', '50321'),
(624, 'Magadi', '00205'),
(625, 'Mageta', '40624'),
(626, 'Mago', '50325'),
(627, 'Magombo', '40507'),
(628, 'Magumoni', '60403'),
(629, 'Magunga', '40307'),
(630, 'Magutuni', '60407'),
(631, 'Magwagwa', '40508'),
(632, 'Mahanga', '50322'),
(633, 'Maiella', '20148'),
(634, 'Mairo Inya', '20314'),
(635, 'Maji Mazuri', '20145'),
(636, 'Makimeny', '20228'),
(637, 'Makimeny', '20418'),
(638, 'Makindu', '90138'),
(639, 'Makongeni', '00510'),
(640, 'Maktau', '80215'),
(641, 'Makueni', '90300'),
(642, 'Makumbi', '20149'),
(643, 'Makunga', '50133'),
(644, 'Makupa', '80112'),
(645, 'Makutano', '20141'),
(646, 'Makuyu', '01020'),
(647, 'Malaha', '50122'),
(648, 'Malakisi', '50209'),
(649, 'Malava', '50103'),
(650, 'Maliki', '50221'),
(651, 'Malindi', '80200'),
(652, 'Malinya', '50123'),
(653, 'Mandera', '70300'),
(654, 'Manga', '40509'),
(655, 'Manyani', '80301'),
(656, 'Manyatta', '60101'),
(657, 'Manyuanda', '40625'),
(658, 'Manyulia', '50126'),
(659, 'Maragi', '10221'),
(660, 'Maragoli', '50300'),
(661, 'Maragua', '10205'),
(662, 'Maralal', '20600'),
(663, 'Marani', '40214'),
(664, 'Mariakani', '80113'),
(665, 'Marigat', '30403'),
(666, 'Marima', '60408'),
(667, 'Marimanti', '60215'),
(668, 'Marinde', '40318'),
(669, 'Mariwa', '40408'),
(670, 'Marmanet', '20322'),
(671, 'Marsabit', '60500'),
(672, 'Marua', '10127'),
(673, 'Masana', '50324'),
(674, 'Maseno', '40105'),
(675, 'Mashini', '80312'),
(676, 'Mashuru', '01103'),
(677, 'Masii', '90101'),
(678, 'Masimba', '40215'),
(679, 'Masinga', '90141'),
(680, 'Mataara', '01009'),
(681, 'Matathia', '00221'),
(682, 'Matayos', '50422'),
(683, 'Mateka', '50222'),
(684, 'Matete', '50136'),
(685, 'Mathare Valley', '00611'),
(686, 'Matheini', '00211'),
(687, 'Mathuki', '90406'),
(688, 'Matiliku', '90140'),
(689, 'Matinyani', '90210'),
(690, 'Matokho', '50223'),
(691, 'Matuga', '80406'),
(692, 'Matunda', '30205'),
(693, 'Matuu', '90119'),
(694, 'Mau Narok', '20111'),
(695, 'Mau Summit', '20122'),
(696, 'Maua', '60600'),
(697, 'Mautuma', '50124'),
(698, 'Mavindini', '90304'),
(699, 'Mawego', '40310'),
(700, 'Mayanja', '50224'),
(701, 'Mazeras', '80114'),
(702, 'Mbagathi', '00503'),
(703, 'Mbakalo', '50236'),
(704, 'Mbari Ya Njiku', '00231'),
(705, 'Mbita', '40305'),
(706, 'Mbitini', '90214'),
(707, 'Mbiuni', '90110'),
(708, 'Mbono Road', '00616'),
(709, 'Mbumbuni', '90127'),
(710, 'Mbusyani', '90142'),
(711, 'Mchumbi Road', '00504'),
(712, 'Menengai', '20104'),
(713, 'Merigi', '20419'),
(714, 'Meru', '60200'),
(715, 'Mfangano', '40319'),
(716, 'Mgambonyi', '80313'),
(717, 'Mgange', '80306'),
(718, 'Miathene', '60604'),
(719, 'Migioini', '01029'),
(720, 'Migwani', '90402'),
(721, 'Miharati', '20301'),
(722, 'Mihuti', '10128'),
(723, 'Mikayi', '40225'),
(724, 'Mikinduri', '60607'),
(725, 'Mikumbuni', '60208'),
(726, 'Milton Siding', '20123'),
(727, 'Mirangine', '20124'),
(728, 'Mirogi', '40320'),
(729, 'Misikhu', '50207'),
(730, 'Misori', '40626'),
(731, 'Mitaboni', '90104'),
(732, 'Mitunguu', '60204'),
(733, 'Miu', '90112'),
(734, 'Miwani', '40106'),
(735, 'Mkomani', '80106'),
(736, 'Mochongoi', '20312'),
(737, 'Mogogosiek', '20403'),
(738, 'Mogonga', '40216'),
(739, 'Mogotio', '20105'),
(740, 'Moi Airport', '80115'),
(741, 'Moi Avenue', '00700'),
(742, 'Moi Ben', '30104'),
(743, 'Moi University', '30107'),
(744, 'Moi''s Bridge', '30202'),
(745, 'Moi''s Bridge', '30202'),
(746, 'Mokomoni', '40510'),
(747, 'Mokowe', '80502'),
(748, 'Molo', '20106'),
(749, 'Mombasa', '80100'),
(750, 'Mosocho', '40207'),
(751, 'Mosoriot', '30307'),
(752, 'Mosque Road', '20125'),
(753, 'Moyale', '60700'),
(754, 'Mpaka', '50323'),
(755, 'Mpeketoni', '80503'),
(756, 'Msambweni', '80404'),
(757, 'Mtito Andei', '90128'),
(758, 'Mtongwe', '80111'),
(759, 'Mtopanga', '80117'),
(760, 'Mtwapa', '80109'),
(761, 'Mubwayo', '50423'),
(762, 'Muchungucha', '10222'),
(763, 'Muddo Gashe', '70102'),
(764, 'Mudhiero', '40627'),
(765, 'Muguga', '00228'),
(766, 'Mugumoini', '01021'),
(767, 'Mugunda', '10129'),
(768, 'Muhoho', '00234'),
(769, 'Muhoroni', '40107'),
(770, 'Muhotetu', '20323'),
(771, 'Muhuru Bay', '40409'),
(772, 'Mukarara', '01022'),
(773, 'Mukerenju', '01023'),
(774, 'Mukeu', '20315'),
(775, 'Mukhe', '50225'),
(776, 'Mukuro', '40410'),
(777, 'Mukurweini', '10103'),
(778, 'Mulango', '90216'),
(779, 'Muluanda', '50428'),
(780, 'Mumias', '50102'),
(781, 'Munami', '50134'),
(782, 'Mundika', '50424'),
(783, 'Mundoro', '00235'),
(784, 'Mungatsi', '50425'),
(785, 'Munyu', '10130'),
(786, 'Muranga', '10200'),
(787, 'Murarandia', '10228'),
(788, 'Muruka', '01024'),
(789, 'Murumba', '50426'),
(790, 'Murungaru', '20316'),
(791, 'Mururi', '60120'),
(792, 'Musanda', '50125'),
(793, 'Mutha', '90211'),
(794, 'Muthaara', '60605'),
(795, 'Muthaiga', '00619'),
(796, 'Muthetheni', '90113'),
(797, 'Muthinga', '10131'),
(798, 'Muthithi', '10223'),
(799, 'Mutituni', '90117'),
(800, 'Mutomo', '90201'),
(801, 'Mutuati', '60606'),
(802, 'Mutumbu', '40628'),
(803, 'Muumandu', '90114'),
(804, 'Mwala', '90102'),
(805, 'Mwatate', '80305'),
(806, 'Mweiga', '10104'),
(807, 'Mweru', '10132'),
(808, 'Mwingi', '90400'),
(809, 'Myanga', '50226'),
(810, 'Nairage Enkare', '20504'),
(811, 'Nairobi General Post Office', '00100'),
(812, 'Naishi', '20142'),
(813, 'Naitiri', '50211'),
(814, 'Naivasha', '20117'),
(815, 'Nakuru', '20100'),
(816, 'Nalondo', '50227'),
(817, 'Namanga', '00207'),
(818, 'Nambacha', '50127'),
(819, 'Nambale', '50409'),
(820, 'Namorio', '50231'),
(821, 'Nandi Hills', '30301'),
(822, 'Nandolia', '50228'),
(823, 'Nangili', '50239'),
(824, 'Nango', '40615'),
(825, 'Nanyuki', '10400'),
(826, 'Naro Moru', '10105'),
(827, 'Naro Sura', '20505'),
(828, 'Narok', '20500'),
(829, 'Ndakaini', '01025'),
(830, 'Ndalani', '90118'),
(831, 'Ndalat', '30123'),
(832, 'Ndalu', '30219'),
(833, 'Ndalu', '50212'),
(834, 'Ndanai', '20404'),
(835, 'Ndaragwa', '20306'),
(836, 'Ndaraweta', '20420'),
(837, 'Ndenderu', '00230'),
(838, 'Ndere', '40629'),
(839, 'Nderu', '00229'),
(840, 'Ndhiwa', '40302'),
(841, 'Ndigwa', '40630'),
(842, 'Ndiru', '40321'),
(843, 'Ndithini', '01016'),
(844, 'Ndiyisi', '50229'),
(845, 'Ndooa', '90202'),
(846, 'Ndori', '40602'),
(847, 'Ndunyu Njeru', '20317'),
(848, 'Ngambwa', '80311'),
(849, 'Nganduri', '60115'),
(850, 'Ngano', '20308'),
(851, 'Ngara Road', '00600'),
(852, 'Ngarua', '20328'),
(853, 'Ngecha', '00218'),
(854, 'Ngelesha', '20324'),
(855, 'Ngewa', '00901'),
(856, 'Nginyang', '30404'),
(857, 'Ngiya', '40603'),
(858, 'Ngoliba', '01012'),
(859, 'Ngonda', '10229'),
(860, 'Ngong Hills', '00208'),
(861, 'Ngong Road', '00505'),
(862, 'Ngorika', '20126'),
(863, 'Ngorongo', '00225'),
(864, 'Nguni', '90407'),
(865, 'Nguyoini', '10224'),
(866, 'Ngwata', '90129'),
(867, 'Njipiship', '40702'),
(868, 'Njoro', '20107'),
(869, 'Nkondi', '60214'),
(870, 'Nkubu', '60202'),
(871, 'North Kinangop', '20154'),
(872, 'North Kinangop', '20318'),
(873, 'Ntimaru', '40417'),
(874, 'Nunguni', '90130'),
(875, 'Nuu', '90408'),
(876, 'Nyabondo', '40124'),
(877, 'Nyaburi', '40322'),
(878, 'Nyacheki', '40217'),
(879, 'Nyadorera', '40631'),
(880, 'Nyahururu', '20300'),
(881, 'Nyakwere', '40125'),
(882, 'Nyali', '80118'),
(883, 'Nyamache', '40203'),
(884, 'Nyamarambe', '40206'),
(885, 'Nyambunwa', '40205'),
(886, 'Nyamira', '40500'),
(887, '40632 Nyamonye', '40632'),
(888, 'Nyamtiro', '40419'),
(889, 'Nyangande', '40126'),
(890, 'Nyangori', '40127'),
(891, 'Nyangusu', '40218'),
(892, 'Nyangweso', '40311'),
(893, 'Nyansiongo', '40502'),
(894, 'Nyanturago', '40219'),
(895, 'Nyaramba', '40514'),
(896, 'Nyaru', '30131'),
(897, 'Nyatike', '40402'),
(898, 'Nyawara', '40633'),
(899, 'Nyayo Stadium', '00506'),
(900, 'Nyeri', '10100'),
(901, 'Nyilima', '40611'),
(902, '90136 Nzeeka', '90136'),
(903, 'Nziu', '90143'),
(904, 'Nziu', '90308'),
(905, 'Nzoia', '50237'),
(906, 'Obekai', '50427'),
(907, 'Oboch', '40129'),
(908, 'Ogembo', '40204'),
(909, 'Ogen', '40130'),
(910, 'Ogongo', '40323'),
(911, 'Okia', '90301'),
(912, 'Ol Butyo', '20229'),
(913, 'Ol Joro Orok', '20302'),
(914, 'Ol Kalou', '20303'),
(915, 'Olbutyo', '20421'),
(916, 'Olenguruone', '20152'),
(917, 'Olkurto', '20502'),
(918, 'Olololunga', '20503'),
(919, 'Oloomirani', '20424'),
(920, 'Oloomirani', '20507'),
(921, 'Oltepesi', '00213'),
(922, 'Omboga', '40306'),
(923, 'Omogonchoro', '40221'),
(924, 'Ongata Rongai', '00511'),
(925, 'Oriang', '40227'),
(926, 'Ortum', '30602'),
(927, 'Otaro', '40324'),
(928, 'Othaya', '101106'),
(929, 'Othoch Rakuom', '40411'),
(930, 'Othoro', '40224'),
(931, 'Otonglo', '40108'),
(932, 'Oyugis', '40222'),
(933, 'Pala', '40329'),
(934, 'Pap Onditi', '40111'),
(935, 'Parklands', '00623'),
(936, 'Passenga', '20311'),
(937, 'Paw Akuche', '40131'),
(938, 'Pembe Tatu', '40113'),
(939, 'Plateau', '30116'),
(940, 'Port Victoria', '50410'),
(941, 'Quarry Road', '00624'),
(942, 'Rabuor', '40132'),
(943, 'Racecourse Road', '00617'),
(944, 'Ragengni', '40604'),
(945, 'Rakwaro', '40325'),
(946, 'Ramba', '40330'),
(947, 'Ramula', '40142'),
(948, 'Ranen', '40412'),
(949, 'Rangala', '40634'),
(950, 'Rangwe', '40303'),
(951, 'Rapogi', '40403'),
(952, 'Ratta', '40137'),
(953, 'Reru', '40133'),
(954, 'Rhamu', '70302'),
(955, 'Rigoma', '40511'),
(956, 'Ringa', '40226'),
(957, 'Riochanda', '40512'),
(958, 'Riosiri', '40220'),
(959, 'Riruta', '00512'),
(960, 'Rodi Kopany', '40326'),
(961, 'Ronald Ngala Street', '00300'),
(962, 'Ronda', '20127'),
(963, 'Rongai', '20108'),
(964, 'Rongo', '40404'),
(965, 'Roret', '20204'),
(966, 'Ruaraka', '00618'),
(967, 'Ruiru', '00232'),
(968, 'Rumuruti', '20321'),
(969, 'Runyenjes', '60103'),
(970, 'Ruri', '20313'),
(971, 'Ruringu', '10133'),
(972, 'Rusinga', '40327'),
(973, 'Ruthangati ', '10134'),
(974, 'Saba Saba', '10208'),
(975, 'Sabatia', '20143'),
(976, 'Saboti', '30211'),
(977, 'Sagalla', '80308'),
(978, 'Sagana', '10230'),
(979, 'Samburu', '80120'),
(980, 'Samitsi', '50128'),
(981, 'Sare', '40405'),
(982, 'Sarit Centre', '00606'),
(983, 'Sasumua Road', '00513'),
(984, 'Sawagongo', '40612'),
(985, 'Sega', '40614'),
(986, 'Serem', '50308'),
(987, 'Seretunin', '30407'),
(988, 'Shabaab', '20150'),
(989, 'Shianda', '50106'),
(990, 'Shiatsala', '50129'),
(991, 'Shibuli', '50130'),
(992, 'Shimanyiro', '50131'),
(993, 'Shimba Hills', '80407'),
(994, 'Shinyalu', '50107'),
(995, 'Siakago', '60104'),
(996, 'Siaya', '40600'),
(997, 'Sidindi', '40605'),
(998, 'Sifuyo', '40643'),
(999, 'Sigomre', '40635'),
(1000, 'Sigor', '20405'),
(1001, 'Sigoti', '40135'),
(1002, 'Sigowet', '20212'),
(1003, 'Sikinwa', '30217'),
(1004, 'Silibwet', '20422'),
(1005, 'Simat', '30127'),
(1006, 'Sindo', '40308'),
(1007, 'Singore', '30703'),
(1008, 'Sio Port', '50401'),
(1009, 'Siongiroi', '20230'),
(1010, 'Siongiro', '20423'),
(1011, 'Sipili', '20326'),
(1012, 'Sirembe', '40636'),
(1013, 'Sirende', '30213'),
(1014, 'Sirisia', '50208'),
(1015, 'Sirongo', '40642'),
(1016, 'Solai', '20128'),
(1017, 'Sololo', '60701'),
(1018, 'Sondu', '40109'),
(1019, 'Songhor', '40110'),
(1020, 'Sorget', '20223'),
(1021, 'Sosiot', '20205'),
(1022, 'Sotik', '20227'),
(1023, 'Sotik', '20406'),
(1024, 'South Horr', '20604'),
(1025, 'South Kinangop', '20155'),
(1026, 'South Kinangop', '20319'),
(1027, 'Soy', '30105'),
(1028, 'Suba Kuria', '40418'),
(1029, 'Subukia', '20109'),
(1030, 'Suguta Mar Mar', '20602'),
(1031, 'Sulmac', '20151'),
(1032, 'Sultan Hamud', '90132'),
(1033, 'Suna', '40400'),
(1034, 'Suwerwa', '30212'),
(1035, 'Tabani', '30220'),
(1036, 'Tabani', '50238'),
(1037, 'Tala', '90131'),
(1038, 'Tambach', '30704'),
(1039, 'Tarasaa', '80203'),
(1040, 'Tausa', '80309'),
(1041, 'Taveta', '80302'),
(1042, 'Tawa', '90133'),
(1043, 'Tenges', '30405'),
(1044, 'Thaara', '10110'),
(1045, 'Thangathi', '10135'),
(1046, 'Thare', '01026'),
(1047, 'Thigio', '00210'),
(1048, 'Thika', '01000'),
(1049, 'Tigiji', '60210'),
(1050, 'Timau', '10402'),
(1051, 'Timau', '60203'),
(1052, 'Timber Mill Road', '20110'),
(1053, 'Timboroa', '30108'),
(1054, 'Tiriki', '50309'),
(1055, 'Tom Mboya', '00400'),
(1056, 'Tombe', '40513'),
(1057, 'Tongaren', '30218'),
(1058, 'Torongo', '20153'),
(1059, 'Tot', '30707'),
(1060, 'Tseikuru', '90409'),
(1061, 'Tulia', '90203'),
(1062, 'Tumu Tumu', '10136'),
(1063, 'Tunyai', '60213'),
(1064, 'Turbo', '30106'),
(1065, 'Turi', '20129'),
(1066, 'Uaso Nyiro', '10137'),
(1067, 'Ugunja', '40606'),
(1068, 'Uhuru Gardens', '00517'),
(1069, 'Ukunda', '80400'),
(1070, 'Ukwala', '40607'),
(1071, 'Uplands', '002222'),
(1072, 'Uranga', '40608'),
(1073, 'Uriri', '40228'),
(1074, 'Usenge', '40609'),
(1075, 'Usigu', '40637'),
(1076, 'Uthiru', '00605'),
(1077, 'Valley Arcade', '00514'),
(1078, 'Vihiga', '50310'),
(1079, 'Village Market', '00621'),
(1080, 'Vipingo', '80119'),
(1081, 'Vitengeni', '80211'),
(1082, 'Viwandani', '00507'),
(1083, 'Voi', '80300'),
(1084, 'Voo', '90212'),
(1085, 'Wagusu', '40638'),
(1086, 'Waithaka', '00613'),
(1087, 'Wajir', '70200'),
(1088, 'Wamagana', '10138'),
(1089, 'Wamba', '20603'),
(1090, 'Wamunyu', '90103'),
(1091, 'Wamwangi', '01010'),
(1092, 'Wangige', '00614'),
(1093, 'Wanguru', '10303'),
(1094, 'Wanjengi', '10225'),
(1095, 'Wanjohi', '20305'),
(1096, 'Watalii Road', '80204'),
(1097, 'Watamu', '80202'),
(1098, 'Webuye', '50205'),
(1099, 'Weiwei', '30603'),
(1100, 'Werugha', '80303'),
(1101, 'Westlands', '00800'),
(1102, 'Winam', '40141'),
(1103, 'Witu', '80504'),
(1104, 'Wiyumiririe', '20329'),
(1105, 'Wodanga', '50311'),
(1106, 'Wundanyi', '80304'),
(1107, 'Yala', '40610'),
(1108, 'Yaya Towers', '00508'),
(1109, 'Yoani30214 Ziwa', '90134'),
(1110, 'Zombe', '90213');

-- --------------------------------------------------------

--
-- Table structure for table `staff_table`
--

CREATE TABLE `staff_table` (
  `staff_id_no` int(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `other_names` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `job_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_table`
--

INSERT INTO `staff_table` (`staff_id_no`, `surname`, `other_names`, `user_name`, `job_code`) VALUES
(30175164, 'ABUKUSE', 'BEATRICE', 'beatok1992', 'JBC001'),
(30175166, 'OLPHA', 'ATIENO', 'olpha123', 'JBC003'),
(30175167, 'NJERI', 'MONICA', 'monica1992', 'JBC001'),
(30175168, 'SIMWENYI', 'BILHA', 'bilhaarias', 'JBC001'),
(30175169, 'otieno', 'kevin', 'kevindoctor', 'JBC001'),
(30175170, 'Abukuse', 'Beatrice', 'abukuse123', 'JBC004'),
(31485173, 'NYABOKE', 'EDINAH OTWOMA', 'otwoma123', 'JBC003');

-- --------------------------------------------------------

--
-- Table structure for table `symptom_specific_table`
--

CREATE TABLE `symptom_specific_table` (
  `symptom_specific_code` varchar(7) NOT NULL DEFAULT '0',
  `disease_code` varchar(30) DEFAULT NULL,
  `symptom_specific_description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `symptom_specific_table`
--

INSERT INTO `symptom_specific_table` (`symptom_specific_code`, `disease_code`, `symptom_specific_description`) VALUES
('SSMP002', 'DIS007', 'Presence of female anopheles in blood test'),
('SSMP005', 'DIS020', 'constant headche'),
('SSMP006', 'DIS006', 'Pain and difficulties in breathing'),
('SSMP007', 'DIS004', 'Distant vision is good but near vision is blurry'),
('SSMP008', 'DIS014', 'Presence of HIV virus in blood test'),
('SSMP009', 'DIS003', 'Seing this that are closeto a person'),
('SSMP010', 'DIS021', 'cancer cell positive in cancer test'),
('SSMP011', 'DIS022', 'Scratchy Sore Throat'),
('SSMP012', 'DIS023', 'Higher Pressure than normal in eyeball'),
('SSMP013', 'DIS024', 'Warm skin with some paspiration'),
('SSMP014', 'DIS025', 'fealing exhausted'),
('SSMP015', 'DIS005', 'Difficult in breathing and wheezing'),
('SSMP016', 'DIS026', 'Presence of Mycobacterium bacteria in test'),
('SSMP017', 'DIS027', 'Involuntary lose of urine'),
('SSMP018', 'DIS019', 'intermittent'),
('SSMP019', 'DIS028', 'swelling of the bladder'),
('SSMP020', 'DIS029', 'swelling of the hands,ankles,feet'),
('SSMP021', 'DIS030', 'Accumulation of the fluids'),
('SSMP022', 'DIS031', 'Test showing presence of clots'),
('SSMP023', 'DIS017', 'Blood Test Show Anemia Positive'),
('SSMP024', 'DIS032', 'Inability to get sleep nyght afetr nyght'),
('SSMP025', 'DIS033', 'Dizziness and Faiting'),
('SSMP026', 'DIS034', 'nervous exhaustion and iritability'),
('SSMP027', 'DIS035', 'Headache in anyb parts of the head'),
('SSMP028', 'DIS037', 'increased susceptibility to fractures'),
('SSMP029', 'DIS038', 'numbness and leg cramps'),
('SSMP030', 'DIS039', 'sharp burning or grinding pain'),
('SSMP031', 'DIS040', 'swelling,tenderness and redness'),
('SSMP032', 'DIS041', 'Pain in body muscle'),
('SSMP033', 'DIS042', 'abdominal bloating'),
('SSMP034', 'DIS043', 'insomnia'),
('SSMP035', 'DIS044', 'Bladder problems'),
('SSMP036', 'DIS045', 'Thick Vaginal Discharge'),
('SSMP037', 'DIS046', 'Blurred Vision'),
('SSMP038', 'DIS047', 'Muscle weakness and possible cramps'),
('SSMP039', 'DIS048', 'Graduated cold '),
('SSMP040', 'DIS017', 'Visible Veins'),
('SSMP041', 'DIS002', 'Tenderness in the Cheek');

--
-- Triggers `symptom_specific_table`
--
DELIMITER $$
CREATE TRIGGER `tg_symptom_specific_table_insert` BEFORE INSERT ON `symptom_specific_table` FOR EACH ROW BEGIN
  INSERT INTO symptom_specific_table_seq VALUES (NULL);
  SET NEW.symptom_specific_code = CONCAT('SSMP', LPAD(LAST_INSERT_ID(), 3, '0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `symptom_specific_table_seq`
--

CREATE TABLE `symptom_specific_table_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `symptom_specific_table_seq`
--

INSERT INTO `symptom_specific_table_seq` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41);

-- --------------------------------------------------------

--
-- Table structure for table `symptom_table`
--

CREATE TABLE `symptom_table` (
  `symptom_code` varchar(50) NOT NULL DEFAULT '0',
  `symptom_name` varchar(50) DEFAULT NULL,
  `body_system_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `symptom_table`
--

INSERT INTO `symptom_table` (`symptom_code`, `symptom_name`, `body_system_code`) VALUES
('SYMP002', 'Persistence Caughing', 'BS002'),
('SYMP003', 'Facial Pain', 'BS001'),
('SYMP004', 'Tenderness on the cheek', 'BS001'),
('SYMP005', 'Tenderness on the cheekbones', 'BS001'),
('SYMP006', 'Tenderness on the face and Forehead', 'BS001'),
('SYMP007', 'Dry Cough', 'BS001'),
('SYMP008', 'Bad Breadth', 'BS001'),
('SYMP009', 'Fever', 'BS001'),
('SYMP010', 'Dazed feeling in the head', 'BS001'),
('SYMP011', 'Shortsightedness', 'BS001'),
('SYMP012', 'Near vision is blured', 'BS001'),
('SYMP013', 'Difficult Breathing', 'BS002'),
('SYMP014', 'Coughing', 'BS002'),
('SYMP015', 'Wheezing', 'BS002'),
('SYMP016', 'Tight Chest', 'BS002'),
('SYMP017', 'Chest Pain', 'BS002'),
('SYMP018', 'Sore Throat', 'BS002'),
('SYMP019', 'Sudden Chills', 'BS002'),
('SYMP021', 'Headche', 'BS001'),
('SYMP022', 'dragging pain from the upper back to lower abdomen', 'BS004'),
('SYMP023', 'Intermittent', 'BS004'),
('SYMP024', 'head and shoulders eleveted', 'BS006'),
('SYMP025', 'Chest  Pains', 'BS002'),
('SYMP026', 'Throat Becomes Sore', 'BS001'),
('SYMP027', 'Eye pain', 'BS001'),
('SYMP028', 'blurred vision', 'BS001'),
('SYMP029', 'Inability to adjust to darker conditions', 'BS001'),
('SYMP030', 'Nausea', 'BS003'),
('SYMP031', 'flushed face', 'BS003'),
('SYMP032', 'vomitting', 'BS003'),
('SYMP033', 'fealing exhausted', 'BS003'),
('SYMP034', 'difficult in breathing', 'BS002'),
('SYMP035', 'Caughing', 'BS002'),
('SYMP038', 'ChestPain', 'BS002'),
('SYMP040', 'occasional Dribbling', 'BS004'),
('SYMP041', 'Involuntary lose of urine', 'BS004'),
('SYMP042', 'Caughing And sneezing', 'BS004'),
('SYMP043', 'dragging pain from upper abdomen to lower', 'BS004'),
('SYMP044', 'Swelling of the bladder', 'BS004'),
('SYMP045', 'swelling of the hands ', 'BS004'),
('SYMP046', 'Shortness of Breath', 'BS005'),
('SYMP047', 'poor color', 'BS005'),
('SYMP048', 'accumulation of the fluids', 'BS005'),
('SYMP049', 'Headache', 'BS005'),
('SYMP050', 'dizziness', 'BS005'),
('SYMP051', 'fainting', 'BS005'),
('SYMP052', 'loss of speach in memory', 'BS005'),
('SYMP053', 'Easy tiring', 'BS005'),
('SYMP055', 'Inability to get sleep', 'BS006'),
('SYMP056', 'depression', 'BS006'),
('SYMP057', 'irritability', 'BS006'),
('SYMP058', 'low stress tolerance', 'BS006'),
('SYMP059', 'nervous exhaustion', 'BS006'),
('SYMP060', 'Headche in any portion of the head', 'BS006'),
('SYMP061', 'sudden pains', 'BS006'),
('SYMP062', 'nerve trunks become tender to pressure', 'BS006'),
('SYMP063', 'skeletal pain especially in the hip and back', 'BS007'),
('SYMP064', 'deformities', 'BS007'),
('SYMP065', 'stooping and rounding of the shoulder', 'BS007'),
('SYMP066', 'nervousness', 'BS007'),
('SYMP067', 'numbness', 'BS007'),
('SYMP068', 'leg cramps', 'BS007'),
('SYMP069', 'Body stiffness and pain in joints', 'BS007'),
('SYMP070', 'sharp burning or grinding pain', 'BS007'),
('SYMP071', 'swelling,tenderness and posible redness', 'BS007'),
('SYMP072', 'dull persistent ', 'BS007'),
('SYMP073', 'Pain in body muscle', 'BS007'),
('SYMP074', 'Abnominal bloating', 'BS008'),
('SYMP075', 'Anxiety', 'BS008'),
('SYMP076', 'Breast Swelling and tenderness', 'BS008'),
('SYMP077', 'swollen feat', 'BS008'),
('SYMP079', 'Hot flashes', 'BS008'),
('SYMP080', 'Insomnia', 'BS008'),
('SYMP081', 'Abdominal Pain', 'BS008'),
('SYMP082', 'Back pain', 'BS008'),
('SYMP083', 'Bladder problems', 'BS008'),
('SYMP084', 'Thick vaginal discharge', 'BS008'),
('SYMP085', 'Extreme thirst', 'BS009'),
('SYMP086', 'Enormous Quantities of urine', 'BS009'),
('SYMP087', 'Fatigue and inability to tolerate cold', 'BS009'),
('SYMP088', 'A slow heart rate', 'BS009'),
('SYMP089', 'Graduated cold', 'BS010'),
('SYMP090', 'Pale eyes', 'BS011'),
('SYMP091', 'Visible veins', 'BS011');

--
-- Triggers `symptom_table`
--
DELIMITER $$
CREATE TRIGGER `tg_symptom_table_insert` BEFORE INSERT ON `symptom_table` FOR EACH ROW BEGIN
  INSERT INTO symptom_table_seq VALUES (NULL);
  SET NEW.symptom_code = CONCAT('SYMP', LPAD(LAST_INSERT_ID(), 3, '0'));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `symptom_table_seq`
--

CREATE TABLE `symptom_table_seq` (
  `symptom_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `symptom_table_seq`
--

INSERT INTO `symptom_table_seq` (`symptom_code`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(38),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53),
(55),
(56),
(57),
(58),
(59),
(60),
(61),
(62),
(63),
(64),
(65),
(66),
(67),
(68),
(69),
(70),
(71),
(72),
(73),
(74),
(75),
(76),
(77),
(79),
(80),
(81),
(82),
(83),
(84),
(85),
(86),
(87),
(88),
(89),
(90),
(91);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `body_system_table`
--
ALTER TABLE `body_system_table`
  ADD PRIMARY KEY (`body_system_code`);

--
-- Indexes for table `body_system_table_seq`
--
ALTER TABLE `body_system_table_seq`
  ADD PRIMARY KEY (`body_system_code`);

--
-- Indexes for table `contact_use_table`
--
ALTER TABLE `contact_use_table`
  ADD PRIMARY KEY (`id`,`email`);

--
-- Indexes for table `disease_symptom_table`
--
ALTER TABLE `disease_symptom_table`
  ADD PRIMARY KEY (`symptom_code`,`disease_code`),
  ADD KEY `disease_code` (`disease_code`),
  ADD KEY `symptom_code` (`symptom_code`),
  ADD KEY `symptom_code_2` (`symptom_code`),
  ADD KEY `symptom_code_3` (`symptom_code`);

--
-- Indexes for table `disease_table`
--
ALTER TABLE `disease_table`
  ADD PRIMARY KEY (`disease_code`),
  ADD UNIQUE KEY `disease_name_2` (`disease_name`),
  ADD KEY `body_system_code` (`body_system_code`),
  ADD KEY `body_system_code_2` (`body_system_code`),
  ADD KEY `disease_name` (`disease_name`),
  ADD KEY `disease_code` (`disease_code`);

--
-- Indexes for table `disease_table_seq`
--
ALTER TABLE `disease_table_seq`
  ADD PRIMARY KEY (`disease_code`);

--
-- Indexes for table `drug_disease_table`
--
ALTER TABLE `drug_disease_table`
  ADD PRIMARY KEY (`drug_code`,`disease_code`),
  ADD KEY `disease_code` (`disease_code`),
  ADD KEY `drug_code` (`drug_code`);

--
-- Indexes for table `drug_table`
--
ALTER TABLE `drug_table`
  ADD PRIMARY KEY (`drug_code`),
  ADD UNIQUE KEY `drug_name` (`drug_name`);

--
-- Indexes for table `drug_table_seq`
--
ALTER TABLE `drug_table_seq`
  ADD PRIMARY KEY (`drug_table`);

--
-- Indexes for table `job_table`
--
ALTER TABLE `job_table`
  ADD PRIMARY KEY (`job_code`);

--
-- Indexes for table `job_table_seq`
--
ALTER TABLE `job_table_seq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_result_table`
--
ALTER TABLE `patient_result_table`
  ADD PRIMARY KEY (`id`,`patient_code`),
  ADD KEY `staff_id_no` (`staff_id_no`) USING BTREE,
  ADD KEY `staff_id_no_2` (`staff_id_no`);

--
-- Indexes for table `patient_table`
--
ALTER TABLE `patient_table`
  ADD PRIMARY KEY (`patient_code`),
  ADD KEY `postal_code` (`postal_code`);

--
-- Indexes for table `patient_table_seq`
--
ALTER TABLE `patient_table_seq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postal_code_table`
--
ALTER TABLE `postal_code_table`
  ADD PRIMARY KEY (`id`,`postal_code`);

--
-- Indexes for table `staff_table`
--
ALTER TABLE `staff_table`
  ADD PRIMARY KEY (`staff_id_no`,`surname`),
  ADD KEY `job_code` (`job_code`);

--
-- Indexes for table `symptom_specific_table`
--
ALTER TABLE `symptom_specific_table`
  ADD PRIMARY KEY (`symptom_specific_code`),
  ADD KEY `disease_code` (`disease_code`);

--
-- Indexes for table `symptom_specific_table_seq`
--
ALTER TABLE `symptom_specific_table_seq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symptom_table`
--
ALTER TABLE `symptom_table`
  ADD PRIMARY KEY (`symptom_code`),
  ADD UNIQUE KEY `symptom_name` (`symptom_name`),
  ADD KEY `body_system_code` (`body_system_code`);

--
-- Indexes for table `symptom_table_seq`
--
ALTER TABLE `symptom_table_seq`
  ADD PRIMARY KEY (`symptom_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `body_system_table_seq`
--
ALTER TABLE `body_system_table_seq`
  MODIFY `body_system_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `contact_use_table`
--
ALTER TABLE `contact_use_table`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `disease_table_seq`
--
ALTER TABLE `disease_table_seq`
  MODIFY `disease_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `drug_table_seq`
--
ALTER TABLE `drug_table_seq`
  MODIFY `drug_table` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `job_table_seq`
--
ALTER TABLE `job_table_seq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `patient_result_table`
--
ALTER TABLE `patient_result_table`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `patient_table_seq`
--
ALTER TABLE `patient_table_seq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `postal_code_table`
--
ALTER TABLE `postal_code_table`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1111;
--
-- AUTO_INCREMENT for table `symptom_specific_table_seq`
--
ALTER TABLE `symptom_specific_table_seq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `symptom_table_seq`
--
ALTER TABLE `symptom_table_seq`
  MODIFY `symptom_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `disease_symptom_table`
--
ALTER TABLE `disease_symptom_table`
  ADD CONSTRAINT `disease_symptom_table_ibfk_1` FOREIGN KEY (`disease_code`) REFERENCES `disease_table` (`disease_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `disease_table`
--
ALTER TABLE `disease_table`
  ADD CONSTRAINT `disease_table_ibfk_1` FOREIGN KEY (`body_system_code`) REFERENCES `body_system_table` (`body_system_code`);

--
-- Constraints for table `drug_disease_table`
--
ALTER TABLE `drug_disease_table`
  ADD CONSTRAINT `drug_disease_table_ibfk_1` FOREIGN KEY (`disease_code`) REFERENCES `disease_table` (`disease_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `drug_disease_table_ibfk_2` FOREIGN KEY (`drug_code`) REFERENCES `drug_table` (`drug_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patient_result_table`
--
ALTER TABLE `patient_result_table`
  ADD CONSTRAINT `patient_result_table_ibfk_1` FOREIGN KEY (`staff_id_no`) REFERENCES `staff_table` (`staff_id_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_table`
--
ALTER TABLE `staff_table`
  ADD CONSTRAINT `staff_table_ibfk_1` FOREIGN KEY (`job_code`) REFERENCES `job_table` (`job_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `symptom_specific_table`
--
ALTER TABLE `symptom_specific_table`
  ADD CONSTRAINT `symptom_specific_table_ibfk_1` FOREIGN KEY (`disease_code`) REFERENCES `disease_table` (`disease_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `symptom_table`
--
ALTER TABLE `symptom_table`
  ADD CONSTRAINT `symptom_table_ibfk_1` FOREIGN KEY (`body_system_code`) REFERENCES `body_system_table` (`body_system_code`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
