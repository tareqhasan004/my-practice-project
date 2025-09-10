-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2025 at 11:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crimerecordmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `case_reports`
--

CREATE TABLE `case_reports` (
  `report_id` int(11) NOT NULL,
  `crime_id` int(11) DEFAULT NULL,
  `officer_id` int(11) DEFAULT NULL,
  `report` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `case_reports`
--

INSERT INTO `case_reports` (`report_id`, `crime_id`, `officer_id`, `report`, `created_at`) VALUES
(1, 1, 1, 'Interviewed witnesses and started investigation.', '2025-07-02 05:00:00'),
(2, 2, 2, 'Victim treated at hospital, suspect at large.', '2025-07-03 06:00:00'),
(3, 3, 3, 'Suspect arrested and confessed.', '2025-07-05 09:00:00'),
(4, 4, 4, 'Collected bank statements for fraud case.', '2025-07-06 04:00:00'),
(5, 5, 5, 'Illegal substances seized, case closed.', '2025-07-07 11:00:00'),
(6, 6, 6, 'Graffiti cleaned and public informed.', '2025-07-08 07:00:00'),
(7, 7, 7, 'Search parties deployed near Jatrabari.', '2025-07-09 08:00:00'),
(8, 8, 8, 'Arson suspect taken into custody.', '2025-07-10 10:00:00'),
(9, 9, 9, 'IT team investigating cybercrime.', '2025-07-11 05:00:00'),
(10, 10, 10, 'Forensic team collecting evidence.', '2025-07-12 03:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `case_status`
--

CREATE TABLE `case_status` (
  `status_id` int(11) NOT NULL,
  `crime_id` int(11) DEFAULT NULL,
  `status_update` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `case_status`
--

INSERT INTO `case_status` (`status_id`, `crime_id`, `status_update`, `updated_at`) VALUES
(1, 1, 'Robbery under active investigation.', '2025-07-02 04:00:00'),
(2, 2, 'Victim recovering from injuries.', '2025-07-03 05:00:00'),
(3, 3, 'Suspect arrested and charged.', '2025-07-05 08:00:00'),
(4, 4, 'Banking fraud report filed.', '2025-07-06 03:30:00'),
(5, 5, 'Drug possession case closed.', '2025-07-07 10:00:00'),
(6, 6, 'Vandalism reported and under review.', '2025-07-08 06:00:00'),
(7, 7, 'Search operation ongoing.', '2025-07-09 07:00:00'),
(8, 8, 'Arson suspect in custody.', '2025-07-10 09:00:00'),
(9, 9, 'Cyber attack investigation initiated.', '2025-07-11 04:30:00'),
(10, 10, 'Murder case evidence being collected.', '2025-07-12 02:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `court_cases`
--

CREATE TABLE `court_cases` (
  `court_case_id` int(11) NOT NULL,
  `crime_id` int(11) DEFAULT NULL,
  `case_number` varchar(100) DEFAULT NULL,
  `court_name` varchar(255) DEFAULT NULL,
  `judge_name` varchar(100) DEFAULT NULL,
  `case_status` enum('pending','closed','dismissed') DEFAULT 'pending',
  `hearing_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `court_cases`
--

INSERT INTO `court_cases` (`court_case_id`, `crime_id`, `case_number`, `court_name`, `judge_name`, `case_status`, `hearing_date`) VALUES
(1, 1, 'DH-C-2025-0001', 'Dhaka Metropolitan Court', 'Judge Alam', 'pending', '2025-08-01'),
(2, 2, 'DH-C-2025-0002', 'Dhaka Metropolitan Court', 'Judge Rahman', 'pending', '2025-08-05'),
(3, 3, 'CH-C-2025-0003', 'Chittagong Court', 'Judge Akter', 'closed', '2025-07-25'),
(4, 4, 'SY-C-2025-0004', 'Sylhet Court', 'Judge Karim', 'pending', '2025-08-10'),
(5, 5, 'KH-C-2025-0005', 'Khulna Court', 'Judge Chowdhury', 'closed', '2025-07-30'),
(6, 6, 'RA-C-2025-0006', 'Rajshahi Court', 'Judge Siddique', 'pending', '2025-08-15'),
(7, 7, 'BA-C-2025-0007', 'Barisal Court', 'Judge Nasreen', 'pending', '2025-08-20'),
(8, 8, 'CO-C-2025-0008', 'Comilla Court', 'Judge Ahmed', 'closed', '2025-07-28'),
(9, 9, 'JU-C-2025-0009', 'Jessore Court', 'Judge Sultana', 'pending', '2025-08-25'),
(10, 10, 'RA-C-2025-0010', 'Rangpur Court', 'Judge Hasan', 'pending', '2025-08-30');

-- --------------------------------------------------------

--
-- Table structure for table `crimes`
--

CREATE TABLE `crimes` (
  `crime_id` int(11) NOT NULL,
  `crime_type` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `date_reported` date DEFAULT NULL,
  `status` enum('open','closed','under investigation') DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crimes`
--

INSERT INTO `crimes` (`crime_id`, `crime_type`, `description`, `location_id`, `date_reported`, `status`) VALUES
(1, 'Robbery', 'Robbery at a jewelry shop', 1, '2025-07-01', 'under investigation'),
(2, 'Assault', 'Physical assault in a residential area', 2, '2025-07-02', 'open'),
(3, 'Burglary', 'Home break-in and theft', 3, '2025-07-03', 'closed'),
(4, 'Fraud', 'Online banking fraud reported', 4, '2025-07-04', 'open'),
(5, 'Drug Possession', 'Arrested with illegal substances', 5, '2025-07-05', 'closed'),
(6, 'Vandalism', 'Damage to public property', 6, '2025-07-06', 'open'),
(7, 'Kidnapping', 'Missing child case', 7, '2025-07-07', 'under investigation'),
(8, 'Arson', 'Fire incident at a warehouse', 8, '2025-07-08', 'closed'),
(9, 'Hacking', 'Cyber attack on company server', 9, '2025-07-09', 'open'),
(10, 'Homicide', 'Murder investigation ongoing', 10, '2025-07-10', 'under investigation');

-- --------------------------------------------------------

--
-- Table structure for table `crime_locations`
--

CREATE TABLE `crime_locations` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crime_locations`
--

INSERT INTO `crime_locations` (`location_id`, `location_name`, `address`) VALUES
(1, 'Gulshan', 'Road 27, Gulshan-2, Dhaka'),
(2, 'Dhanmondi', 'House 45, Road 2, Dhanmondi, Dhaka'),
(3, 'Mirpur', 'Sector 10, Mirpur, Dhaka'),
(4, 'Motijheel', 'Business Area, Motijheel, Dhaka'),
(5, 'Banani', 'Road 11, Banani, Dhaka'),
(6, 'Uttara', 'Sector 7, Uttara, Dhaka'),
(7, 'Jatrabari', 'Near Bus Stand, Jatrabari, Dhaka'),
(8, 'Mohammadpur', 'Block C, Mohammadpur, Dhaka'),
(9, 'Khilgaon', 'East Khilgaon, Dhaka'),
(10, 'Savar', 'Savar Upazila, Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `officers`
--

CREATE TABLE `officers` (
  `officer_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `badge_number` varchar(50) DEFAULT NULL,
  `rank` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `officers`
--

INSERT INTO `officers` (`officer_id`, `name`, `badge_number`, `rank`, `phone`) VALUES
(1, 'Inspector Riaz', 'BD2025001', 'Inspector', '01710000001'),
(2, 'Sergeant Tania', 'BD2025002', 'Sergeant', '01710000002'),
(3, 'Lieutenant Jamal', 'BD2025003', 'Lieutenant', '01710000003'),
(4, 'Captain Mim', 'BD2025004', 'Captain', '01710000004'),
(5, 'Detective Rasel', 'BD2025005', 'Detective', '01710000005'),
(6, 'Inspector Salma', 'BD2025006', 'Inspector', '01710000006'),
(7, 'Sergeant Karim', 'BD2025007', 'Sergeant', '01710000007'),
(8, 'Lieutenant Ruby', 'BD2025008', 'Lieutenant', '01710000008'),
(9, 'Captain Hasan', 'BD2025009', 'Captain', '01710000009'),
(10, 'Detective Nabila', 'BD2025010', 'Detective', '01710000010');

-- --------------------------------------------------------

--
-- Table structure for table `suspects`
--

CREATE TABLE `suspects` (
  `suspect_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suspects`
--

INSERT INTO `suspects` (`suspect_id`, `name`, `age`, `gender`, `address`) VALUES
(1, 'Rafiq Islam', 34, 'male', 'House 10, Road 5, Gulshan'),
(2, 'Salma Khatun', 28, 'female', 'House 15, Dhanmondi'),
(3, 'Abdul Karim', 40, 'male', 'Sector 12, Mirpur'),
(4, 'Ayesha Begum', 22, 'female', 'Banani, Road 14'),
(5, 'Jamal Uddin', 37, 'male', 'Uttara, Sector 9'),
(6, 'Fatema Rahman', 29, 'female', 'Motijheel, Block B'),
(7, 'Sultan Ahmed', 31, 'male', 'Jatrabari, Near Bus Stand'),
(8, 'Nabila Akter', 26, 'female', 'Mohammadpur, Block D'),
(9, 'Kamal Hossain', 45, 'male', 'East Khilgaon'),
(10, 'Rina Yasmin', 33, 'female', 'Savar Upazila');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','officer','guest') DEFAULT 'guest',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'admin_bd', '713bfda78870bf9d1b261f565286f85e97ee614efe5f0faf7c34e7ca4f65baca', 'admin', '2025-07-14 07:33:10'),
(2, 'officer_riaz', '09d7ea034c91ebc3cabf50dc38bfc634e21ddf43a7383a79b82f7a1b9d1565d9', 'officer', '2025-07-14 07:33:10'),
(3, 'officer_tania', '5c798b07cc0542168102c99c59908731492c64cfd2580f6183d8987a27fcb703', 'officer', '2025-07-14 07:33:10'),
(4, 'guest_shanto', 'acd793966c78003ce905c3e0238a261ecfbc61aba35cb9297069cc9c3dcca239', 'guest', '2025-07-14 07:33:10'),
(5, 'guest_rina', '0d0ac0ccc0c4348f17f976f13c17deaf55b748e9400338bb4ede1656199b5df6', 'guest', '2025-07-14 07:33:10'),
(6, 'admin_rasel', '60b3b2f7a454036f6378b287002e6b32445040cf7f6ea39d1aafa303ca51e2eb', 'admin', '2025-07-14 07:33:10'),
(7, 'officer_mim', '28d888ef2cb2984dfa0217f7a849c88ed70a814ee484ebe95ba7422a474e3709', 'officer', '2025-07-14 07:33:10'),
(8, 'guest_ruby', '56348ab052c6977d85695a3882dd4a668bbd4e9aeccb713f84a11d923393939d', 'guest', '2025-07-14 07:33:10'),
(9, 'officer_jamal', '3ce1c83cfffbaa48c7a8a6c0f00c0f78b3dd25afcf914e208acaac3ecc07565b', 'officer', '2025-07-14 07:33:10'),
(10, 'guest_salma', '7fcb3edb9669c5170696f4a1bfd7fe95f1941890a7454e0df4933583734e0bad', 'guest', '2025-07-14 07:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `victims`
--

CREATE TABLE `victims` (
  `victim_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `victims`
--

INSERT INTO `victims` (`victim_id`, `name`, `age`, `gender`, `address`) VALUES
(1, 'Monir Hossain', 30, 'male', 'Gulshan'),
(2, 'Nusrat Jahan', 38, 'female', 'Dhanmondi'),
(3, 'Sabbir Ahmed', 25, 'male', 'Mirpur'),
(4, 'Rokeya Sultana', 41, 'female', 'Motijheel'),
(5, 'Jahid Hasan', 36, 'male', 'Banani'),
(6, 'Mina Akter', 29, 'female', 'Uttara'),
(7, 'Shafiq Islam', 34, 'male', 'Jatrabari'),
(8, 'Anika Parvin', 27, 'female', 'Mohammadpur'),
(9, 'Saiful Islam', 39, 'male', 'Khilgaon'),
(10, 'Tasnim Ferdous', 44, 'female', 'Savar');

-- --------------------------------------------------------

--
-- Table structure for table `witnesses`
--

CREATE TABLE `witnesses` (
  `witness_id` int(11) NOT NULL,
  `crime_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `statement` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `witnesses`
--

INSERT INTO `witnesses` (`witness_id`, `crime_id`, `name`, `contact`, `statement`) VALUES
(1, 1, 'Emon Hossain', '01711110001', 'Saw suspicious men near the jewelry shop.'),
(2, 2, 'Shila Akter', '01711110002', 'Heard shouting and a fight.'),
(3, 3, 'Rafiq Chowdhury', '01711110003', 'Noticed break-in at night.'),
(4, 4, 'Nasrin Sultana', '01711110004', 'Received suspicious phone calls.'),
(5, 5, 'Jamal Uddin', '01711110005', 'Observed drug deal in Banani.'),
(6, 6, 'Sumaiya Begum', '01711110006', 'Saw people painting graffiti.'),
(7, 7, 'Karim Hossain', '01711110007', 'Noticed child missing from school.'),
(8, 8, 'Farhana Islam', '01711110008', 'Smelled smoke near warehouse.'),
(9, 9, 'Rashed Mia', '01711110009', 'Saw unusual computer activity.'),
(10, 10, 'Lina Akter', '01711110010', 'Heard gunshots near the river.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `case_reports`
--
ALTER TABLE `case_reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `crime_id` (`crime_id`),
  ADD KEY `officer_id` (`officer_id`);

--
-- Indexes for table `case_status`
--
ALTER TABLE `case_status`
  ADD PRIMARY KEY (`status_id`),
  ADD KEY `crime_id` (`crime_id`);

--
-- Indexes for table `court_cases`
--
ALTER TABLE `court_cases`
  ADD PRIMARY KEY (`court_case_id`),
  ADD KEY `crime_id` (`crime_id`);

--
-- Indexes for table `crimes`
--
ALTER TABLE `crimes`
  ADD PRIMARY KEY (`crime_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `crime_locations`
--
ALTER TABLE `crime_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `officers`
--
ALTER TABLE `officers`
  ADD PRIMARY KEY (`officer_id`),
  ADD UNIQUE KEY `badge_number` (`badge_number`);

--
-- Indexes for table `suspects`
--
ALTER TABLE `suspects`
  ADD PRIMARY KEY (`suspect_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `victims`
--
ALTER TABLE `victims`
  ADD PRIMARY KEY (`victim_id`);

--
-- Indexes for table `witnesses`
--
ALTER TABLE `witnesses`
  ADD PRIMARY KEY (`witness_id`),
  ADD KEY `crime_id` (`crime_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `case_reports`
--
ALTER TABLE `case_reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `case_status`
--
ALTER TABLE `case_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `court_cases`
--
ALTER TABLE `court_cases`
  MODIFY `court_case_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `crimes`
--
ALTER TABLE `crimes`
  MODIFY `crime_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `crime_locations`
--
ALTER TABLE `crime_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `officers`
--
ALTER TABLE `officers`
  MODIFY `officer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `suspects`
--
ALTER TABLE `suspects`
  MODIFY `suspect_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `victims`
--
ALTER TABLE `victims`
  MODIFY `victim_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `witnesses`
--
ALTER TABLE `witnesses`
  MODIFY `witness_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `case_reports`
--
ALTER TABLE `case_reports`
  ADD CONSTRAINT `case_reports_ibfk_1` FOREIGN KEY (`crime_id`) REFERENCES `crimes` (`crime_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `case_reports_ibfk_2` FOREIGN KEY (`officer_id`) REFERENCES `officers` (`officer_id`);

--
-- Constraints for table `case_status`
--
ALTER TABLE `case_status`
  ADD CONSTRAINT `case_status_ibfk_1` FOREIGN KEY (`crime_id`) REFERENCES `crimes` (`crime_id`) ON DELETE CASCADE;

--
-- Constraints for table `court_cases`
--
ALTER TABLE `court_cases`
  ADD CONSTRAINT `court_cases_ibfk_1` FOREIGN KEY (`crime_id`) REFERENCES `crimes` (`crime_id`) ON DELETE CASCADE;

--
-- Constraints for table `crimes`
--
ALTER TABLE `crimes`
  ADD CONSTRAINT `crimes_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `crime_locations` (`location_id`);

--
-- Constraints for table `witnesses`
--
ALTER TABLE `witnesses`
  ADD CONSTRAINT `witnesses_ibfk_1` FOREIGN KEY (`crime_id`) REFERENCES `crimes` (`crime_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
