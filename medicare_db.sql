-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2021 at 11:43 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medicare_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ashaworker_db`
--

CREATE TABLE `ashaworker_db` (
  `worker_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `state` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `location_type` varchar(20) NOT NULL,
  `location_name` varchar(20) NOT NULL,
  `ward_num` varchar(5) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ashaworker_db`
--

INSERT INTO `ashaworker_db` (`worker_id`, `name`, `mobile`, `email`, `address`, `state`, `district`, `location_type`, `location_name`, `ward_num`, `role_id`) VALUES
(1, 'Shahina K', 9999999, 'shayi', '', '', '', '11.7644227, 75.90839', '', '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `assign_patient`
--

CREATE TABLE `assign_patient` (
  `assign_id` int(11) NOT NULL,
  `hospital_id` int(10) NOT NULL,
  `nurse_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `date` varchar(15) NOT NULL,
  `starting_time` varchar(10) NOT NULL,
  `ending_time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assign_patient`
--

INSERT INTO `assign_patient` (`assign_id`, `hospital_id`, `nurse_id`, `patient_id`, `date`, `starting_time`, `ending_time`) VALUES
(1, 2, 7, 2, '2021-01-01', '01:31', '05:31'),
(2, 2, 4, 2, '2021-01-01', '05:32', '20:32'),
(4, 3, 3, 3, '2020-12-30', '22:08', '19:08');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_db`
--

CREATE TABLE `complaint_db` (
  `complaint_id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `complaint` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint_db`
--

INSERT INTO `complaint_db` (`complaint_id`, `name`, `subject`, `complaint`) VALUES
(3, 'Anilect Jose', 'About the problem', '\'In oour area(Mananthavady) a Covid patient- Ashin Thankachan is facing some isssues from his house. He was in quarantine for the last 2weeks and now facing some Covid symptoms but none of the authority is looking on that.\r\n                                  '),
(4, 'Arjun PP', 'Covid Patient', 'Some peaople are'),
(5, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `covid_db`
--

CREATE TABLE `covid_db` (
  `covid_id` int(11) NOT NULL,
  `patient_id` int(10) NOT NULL,
  `result` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `covid_db`
--

INSERT INTO `covid_db` (`covid_id`, `patient_id`, `result`) VALUES
(1, 2, 1),
(2, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_detail`
--

CREATE TABLE `medicine_detail` (
  `medicine_id` int(11) NOT NULL,
  `date` varchar(10) NOT NULL,
  `medicine_detail` varchar(200) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine_detail`
--

INSERT INTO `medicine_detail` (`medicine_id`, `date`, `medicine_detail`, `patient_id`, `time`) VALUES
(1, '2021-01-07', 'Diuretics.', 2, '17:28');

-- --------------------------------------------------------

--
-- Table structure for table `notification_db`
--

CREATE TABLE `notification_db` (
  `notification_id` int(11) NOT NULL,
  `sender_id` varchar(10) NOT NULL,
  `reciever_id` varchar(10) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification_db`
--

INSERT INTO `notification_db` (`notification_id`, `sender_id`, `reciever_id`, `content`, `status`) VALUES
(1, '2', '1', 'cvxvcxvxc', 1),
(2, '2', '1', 'hello there', 1),
(3, '2', '1', 'laskdjlsakdfaf', 1),
(4, '2', '1', 'sdfsafsadf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nurse_db`
--

CREATE TABLE `nurse_db` (
  `nurse_id` int(11) NOT NULL,
  `nurse_name` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `location_type` varchar(50) NOT NULL,
  `hospital_id` varchar(20) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nurse_db`
--

INSERT INTO `nurse_db` (`nurse_id`, `nurse_name`, `address`, `mobile`, `email`, `location_type`, `hospital_id`, `role_id`) VALUES
(1, 'vishnu', 'sdsadfv', 2147483647, 'vishnu@gmail.com', '', '3', 17),
(2, 'anil', 'kanjira', 96562911, 'ani', '11.7605472, 75.9073087', '12', 3),
(3, 'nurse2', 'dfasdfas', 2147483647, 'nurse2@gmail.com', '', '3', 20),
(4, 'akhil kc1', 'ksdjhflaksdfkasjf', 2147483647, 'akhilkc12@gmail.com', '', '2', 21),
(7, 'jincy', 'aaaaaaaaaaaaaaaaaaaaaaaa', 2147483647, 'jincy@gmail.com', '', '2', 24);

-- --------------------------------------------------------

--
-- Table structure for table `patient_detail`
--

CREATE TABLE `patient_detail` (
  `patient_id` int(11) NOT NULL,
  `hospital_id` int(10) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `disease` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `state` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `location_type` varchar(20) NOT NULL,
  `location_name` varchar(20) NOT NULL,
  `ward_num` varchar(20) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_detail`
--

INSERT INTO `patient_detail` (`patient_id`, `hospital_id`, `patient_name`, `mobile`, `email`, `address`, `disease`, `age`, `state`, `district`, `location_type`, `location_name`, `ward_num`, `role_id`) VALUES
(2, 2, 'maneesh', 654987321, 'maneesh@gmail.com', 'sddsfdsf', 'fvr', 20, '1', '1', '', '1', '2', 15),
(3, 3, 'jijosh ck', 2147483647, 'jijosh@gmail.com', 'fgdgf', 'fvr', 23, '1', '1', '', '2', '3', 16),
(4, 2, 'athul', 2147483647, 'seeram@gmail.com', 'asdadf', 'fvr', 78, '1', '1', '', '1', '2', 28),
(5, 2, 'kishor', 2147483647, 'kishor@gmail.com', 'kisho sdfasdfsdfadf', 'fvr', 15, '1', '1', '', '1', '2', 29);

-- --------------------------------------------------------

--
-- Table structure for table `patient_records`
--

CREATE TABLE `patient_records` (
  `record_id` int(11) NOT NULL,
  `record_name` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `patient_id` int(11) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_records`
--

INSERT INTO `patient_records` (`record_id`, `record_name`, `date`, `patient_id`, `file`) VALUES
(1, 'Medicines', '0000-00-00 00:00:00', 1, ''),
(2, 'Medicines', '0000-00-00 00:00:00', 2, ''),
(3, 'Consultation', '0000-00-00 00:00:00', 2, ''),
(4, 'Scanning', '0000-00-00 00:00:00', 2, ''),
(5, 'Operation', '0000-00-00 00:00:00', 2, ''),
(6, '', '2021-01-05 10:28:20', 2, 'Cover_Image_1200x768.jpg'),
(7, '', '2021-01-05 10:37:33', 2, 'dfd(grp9).pdf'),
(8, '', '2021-01-05 10:38:29', 2, 'dfd(grp9).pdf');

-- --------------------------------------------------------

--
-- Table structure for table `phr_db`
--

CREATE TABLE `phr_db` (
  `phr_id` int(11) NOT NULL,
  `lab_test_detail` varchar(20) NOT NULL,
  `blood_group` varchar(20) NOT NULL,
  `surgery_detail` varchar(20) NOT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phr_db`
--

INSERT INTO `phr_db` (`phr_id`, `lab_test_detail`, `blood_group`, `surgery_detail`, `patient_id`) VALUES
(1, '', 'AB-', '', 1),
(2, '', 'QQ+', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `role_db`
--

CREATE TABLE `role_db` (
  `role_id` int(11) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_db`
--

INSERT INTO `role_db` (`role_id`, `mail`, `password`, `role`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin'),
(2, 'healthministry@gmail.com', '123', 'health'),
(6, 'subhash@gmail.com', '5555', 'collector'),
(7, 'subhash@gmail.com', '12345', 'collector'),
(12, 'medicalcollege@gmail.com', '132', 'hospital'),
(13, 'hospital2@gmail.com', '111', 'hospital'),
(15, 'maneesh25@gmail.com', 'maneesh', 'patient'),
(16, 'jijo@gmail.com', 'jijosh', 'patient'),
(17, 'vishnu@gmail.com', '789', 'nurse'),
(18, 'nurse@gmail.com', '456', 'nurse'),
(19, 'jhvjhvv@g.com', '4568', 'nurse'),
(20, 'nurse2@gmail.com', '487', 'nurse'),
(21, 'akhilkc12@gmail.com', '456789', 'nurse'),
(24, 'jincy@gmail.com', 'jincy', 'nurse'),
(25, 'sdfsadfasdfas@gmail.com', 'dasf', 'health'),
(26, 'dxccZC@gmail.com', 'ssdsafdf', 'health'),
(27, 'sadf@gmail.com', 'dsfasdf', 'health'),
(28, 'seeram@gmail.com', 'athul', 'patient'),
(29, 'kishor@gmail.com', 'kishor', 'patient');

-- --------------------------------------------------------

--
-- Table structure for table `rootmap_db`
--

CREATE TABLE `rootmap_db` (
  `map_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rootmap_db`
--

INSERT INTO `rootmap_db` (`map_id`, `patient_id`, `latitude`, `longitude`, `date`) VALUES
(1, 2, '11.2722', '75.8372', '2021-01-05 07:31:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_collector`
--

CREATE TABLE `tbl_collector` (
  `collector_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL,
  `collector_name` varchar(100) NOT NULL,
  `state_id` int(10) NOT NULL,
  `district_id` int(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_collector`
--

INSERT INTO `tbl_collector` (`collector_id`, `role_id`, `collector_name`, `state_id`, `district_id`, `contact`, `email`) VALUES
(1, 6, 'SEERAM SAMBASIVA RAO', 1, 1, '0495237140', 'subhash@gmail.com'),
(2, 7, 'T.V SUBHASH IAS', 1, 2, '04972700', 'subhash@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `district_id` int(10) NOT NULL,
  `state_id` int(10) NOT NULL,
  `district_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`district_id`, `state_id`, `district_name`) VALUES
(1, 1, 'kozhikode'),
(2, 1, 'kannur'),
(3, 1, 'malappuram'),
(4, 1, 'wayanad'),
(5, 2, 'Bagalkot'),
(6, 2, 'Belagavi'),
(7, 2, 'Chamarajanagar');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital`
--

CREATE TABLE `tbl_hospital` (
  `hospital_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL,
  `hospital_name` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_hospital`
--

INSERT INTO `tbl_hospital` (`hospital_id`, `role_id`, `hospital_name`, `state`, `district`, `address`, `contact`, `email_id`, `status`) VALUES
(2, 12, 'medical college', '1', '1', 'medical college', '4657945678', 'medicalcollege@gmail.com', 1),
(3, 13, 'hospital2', '1', '1', 'dfasfdaf', '9633325215', 'hospital2@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location_name`
--

CREATE TABLE `tbl_location_name` (
  `location_id` int(10) NOT NULL,
  `district_id` int(10) NOT NULL,
  `type_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_location_name`
--

INSERT INTO `tbl_location_name` (`location_id`, `district_id`, `type_id`, `name`) VALUES
(1, 1, 1, 'kozhikode'),
(2, 1, 2, 'ramanattukara');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location_type`
--

CREATE TABLE `tbl_location_type` (
  `type_id` int(10) NOT NULL,
  `type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_location_type`
--

INSERT INTO `tbl_location_type` (`type_id`, `type_name`) VALUES
(1, 'corporation'),
(2, 'municipality'),
(3, 'panchayath');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ministry`
--

CREATE TABLE `tbl_ministry` (
  `ministry_id` int(10) NOT NULL,
  `state_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL,
  `state_ministry` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ministry`
--

INSERT INTO `tbl_ministry` (`ministry_id`, `state_id`, `role_id`, `state_ministry`, `contact`, `email_id`) VALUES
(2, 1, 2, 'kozhikode health', '4654679879', 'healthministry@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `state_id` int(10) NOT NULL,
  `state_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`state_id`, `state_name`) VALUES
(1, 'kerala'),
(3, 'tamilnadu');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ward`
--

CREATE TABLE `tbl_ward` (
  `ward_id` int(10) NOT NULL,
  `location_id` int(10) NOT NULL,
  `ward_no` int(10) NOT NULL,
  `ward_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ward`
--

INSERT INTO `tbl_ward` (`ward_id`, `location_id`, `ward_no`, `ward_name`) VALUES
(1, 1, 1, 'ELATHUR'),
(2, 1, 22, 'KOVOOR'),
(3, 2, 17, 'palakkaparambu'),
(4, 2, 18, 'thottaipaadam');

-- --------------------------------------------------------

--
-- Table structure for table `timing_db`
--

CREATE TABLE `timing_db` (
  `time_id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `medicine_id` varchar(20) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timing_db`
--

INSERT INTO `timing_db` (`time_id`, `date`, `time`, `medicine_id`, `patient_id`, `record_id`) VALUES
(1, '15-10-2020', '11:30', '1', 1, 1),
(2, '9-10-2020', '7:30', '3', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `location_type` varchar(100) NOT NULL,
  `location_name` varchar(100) NOT NULL,
  `ward_number` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `name`, `email`, `mobile`, `address`, `state`, `district`, `location_type`, `location_name`, `ward_number`, `role_id`) VALUES
(1, 'anilect', 'ani@gmail.com', 2147483647, 'Kanjirathingal House', 'KerAla', 'WaYaNaD', '', '', '', 1),
(3, 'anil', 'ani', 56883585, '', '', '', '', '', '', 3),
(4, 'babu s', 'babu', 987654321, '', '', '', '', '', '', 4),
(5, 'anil', 'shayi', 78965255, '', '', '', '', '', '', 5),
(6, 'arjun pp', 'arjyou', 963852741, '', '', '', '11.7644227, 75.9083976', '', '', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ashaworker_db`
--
ALTER TABLE `ashaworker_db`
  ADD PRIMARY KEY (`worker_id`);

--
-- Indexes for table `assign_patient`
--
ALTER TABLE `assign_patient`
  ADD PRIMARY KEY (`assign_id`);

--
-- Indexes for table `complaint_db`
--
ALTER TABLE `complaint_db`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `covid_db`
--
ALTER TABLE `covid_db`
  ADD PRIMARY KEY (`covid_id`);

--
-- Indexes for table `medicine_detail`
--
ALTER TABLE `medicine_detail`
  ADD PRIMARY KEY (`medicine_id`);

--
-- Indexes for table `notification_db`
--
ALTER TABLE `notification_db`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `nurse_db`
--
ALTER TABLE `nurse_db`
  ADD PRIMARY KEY (`nurse_id`);

--
-- Indexes for table `patient_detail`
--
ALTER TABLE `patient_detail`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `patient_records`
--
ALTER TABLE `patient_records`
  ADD PRIMARY KEY (`record_id`);

--
-- Indexes for table `phr_db`
--
ALTER TABLE `phr_db`
  ADD PRIMARY KEY (`phr_id`);

--
-- Indexes for table `role_db`
--
ALTER TABLE `role_db`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `rootmap_db`
--
ALTER TABLE `rootmap_db`
  ADD PRIMARY KEY (`map_id`);

--
-- Indexes for table `tbl_collector`
--
ALTER TABLE `tbl_collector`
  ADD PRIMARY KEY (`collector_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `tbl_hospital`
--
ALTER TABLE `tbl_hospital`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `tbl_location_name`
--
ALTER TABLE `tbl_location_name`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `tbl_location_type`
--
ALTER TABLE `tbl_location_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_ministry`
--
ALTER TABLE `tbl_ministry`
  ADD PRIMARY KEY (`ministry_id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `tbl_ward`
--
ALTER TABLE `tbl_ward`
  ADD PRIMARY KEY (`ward_id`);

--
-- Indexes for table `timing_db`
--
ALTER TABLE `timing_db`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ashaworker_db`
--
ALTER TABLE `ashaworker_db`
  MODIFY `worker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assign_patient`
--
ALTER TABLE `assign_patient`
  MODIFY `assign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `complaint_db`
--
ALTER TABLE `complaint_db`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `covid_db`
--
ALTER TABLE `covid_db`
  MODIFY `covid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medicine_detail`
--
ALTER TABLE `medicine_detail`
  MODIFY `medicine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification_db`
--
ALTER TABLE `notification_db`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nurse_db`
--
ALTER TABLE `nurse_db`
  MODIFY `nurse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `patient_detail`
--
ALTER TABLE `patient_detail`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patient_records`
--
ALTER TABLE `patient_records`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `phr_db`
--
ALTER TABLE `phr_db`
  MODIFY `phr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_db`
--
ALTER TABLE `role_db`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `rootmap_db`
--
ALTER TABLE `rootmap_db`
  MODIFY `map_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_collector`
--
ALTER TABLE `tbl_collector`
  MODIFY `collector_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `district_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_hospital`
--
ALTER TABLE `tbl_hospital`
  MODIFY `hospital_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_location_name`
--
ALTER TABLE `tbl_location_name`
  MODIFY `location_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_location_type`
--
ALTER TABLE `tbl_location_type`
  MODIFY `type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_ministry`
--
ALTER TABLE `tbl_ministry`
  MODIFY `ministry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `state_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_ward`
--
ALTER TABLE `tbl_ward`
  MODIFY `ward_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `timing_db`
--
ALTER TABLE `timing_db`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
