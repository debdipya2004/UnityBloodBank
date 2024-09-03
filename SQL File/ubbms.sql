
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;



INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 1234567890, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-09-03 10:06:52');



CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`, `Password`) VALUES
(6, 'Deb', '1234567890', 'deb@gmail.com', 'Male', 35, 'O-', 'ABCD', ' Call me if blood require', '2024-09-03 10:06:52', 1, '202cb962ac59075b964b07152d234b70'),
(9, 'Deb', '1234567890', 'deb@gmail.com', 'Male', 56, 'A+', 'ABCD', ' Call me if blood require', '2024-09-03 10:06:52', 1, '202cb962ac59075b964b07152d234b70'),
(10, 'Deb', '1234567890', 'deb@gmail.com', 'Male', 25, 'O-', 'ABCD', ' Call me if blood require', '2024-09-03 10:06:52', 1, 'f925916e2754e5e03f75dd58a5733251'),
(11, 'Deb', '1234567890', 'deb@gmail.com', 'Male', 26, 'AB+', 'ABCD', ' Call me if blood require', '2024-09-03 10:06:52', 1, 'f925916e2754e5e03f75dd58a5733251'),
(12, 'Deb', '1234567890', 'deb@gmail.com', 'Male', 30, 'A-', 'ABCD', ' Call me if blood require', '2024-09-03 10:06:52', 1, 'f925916e2754e5e03f75dd58a5733251');


CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;



INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(1, 'A-', '2024-09-03 10:06:52'),
(2, 'B-', '2024-09-03 10:06:52'),
(3, 'AB-', '2024-09-03 10:06:52'),
(4, 'O-', '2024-09-03 10:06:52'),
(5, 'O+', '2024-09-03 10:06:52'),
(6, 'A+', '2024-09-03 10:06:52'),
(7, 'B+', '2024-09-03 10:06:52'),
(8, 'AB+', '2024-09-03 10:06:52');



CREATE TABLE `tblbloodrequirer` (
  `ID` int(10) NOT NULL,
  `BloodDonarID` int(10) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `EmailId` varchar(250) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `BloodRequirefor` varchar(250) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;



INSERT INTO `tblbloodrequirer` (`ID`, `BloodDonarID`, `name`, `EmailId`, `ContactNumber`, `BloodRequirefor`, `Message`, `ApplyDate`) VALUES
(1, 6, 'CC', 'cc@cc.com', 7894561236, 'Father', 'Please help', '2024-09-03 10:06:52'),
(2, 3, 'DD', 'dd@dd.com', 5896231478, 'Others', 'Please help', '2024-09-03 10:06:52'),
(3, 6, 'EE', 'ee@ee.com', 1236547896, 'Brother', 'do the needful', '2024-09-03 10:06:52'),
(4, 10, 'FF', 'ffk@ff.com', 2536251425, 'Mother', 'Please help me', '2024-09-03 10:06:52'),
(5, 11, 'GG', 'gg@gg.com', 8525232102, 'Others', 'Need blood on urgent basis', '2024-09-03 10:06:52');



CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Test Demo test demo																									', 'test@test.com', '123456789');



CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;



CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Welcome to the unity blood bank management system.</span></div>');


ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);


ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bgroup` (`BloodGroup`);


ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `BloodGroup` (`BloodGroup`),
  ADD KEY `BloodGroup_2` (`BloodGroup`);


ALTER TABLE `tblbloodrequirer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `donorid` (`BloodDonarID`);


ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;


ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


ALTER TABLE `tblbloodrequirer`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;