-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2022 at 03:52 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(6, 'admin@gmail.com', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(5) NOT NULL,
  `busNo` int(5) NOT NULL,
  `time` time NOT NULL,
  `trip` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `busNo`, `time`, `trip`, `date`) VALUES
(182, 101, '07:00:00', 'Sosh-Main', '2022-06-07'),
(183, 102, '07:00:00', 'Sosh-Arcadia', '2022-06-07'),
(184, 103, '07:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(185, 104, '07:00:00', 'Main-Sosha', '2022-06-07'),
(186, 105, '07:00:00', 'Main-Arcadia', '2022-06-07'),
(187, 106, '07:00:00', 'Main-Garankuwa', '2022-06-07'),
(188, 107, '07:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(189, 108, '07:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(190, 109, '07:00:00', 'Garankuwa-Main', '2022-06-07'),
(191, 110, '07:00:00', 'Arcadia-Sosh', '2022-06-07'),
(192, 111, '07:00:00', 'Arcadia-Main', '2022-06-07'),
(193, 112, '07:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(194, 104, '08:00:00', 'Sosh-Main', '2022-06-07'),
(195, 110, '08:00:00', 'Sosh-Arcadia', '2022-06-07'),
(196, 107, '08:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(197, 101, '08:00:00', 'Main-Sosh', '2022-06-07'),
(198, 111, '08:00:00', 'Main-Arcadia', '2022-06-07'),
(199, 109, '08:00:00', 'Main-Garankuwa', '2022-06-07'),
(200, 103, '08:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(201, 112, '08:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(202, 106, '08:00:00', 'Garankuwa-Main', '2022-06-07'),
(203, 102, '08:00:00', 'Arcadia-Sosh', '2022-06-07'),
(204, 105, '08:00:00', 'Arcadia-Main', '2022-06-07'),
(205, 108, '08:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(206, 101, '09:00:00', 'Sosh-Main', '2022-06-07'),
(207, 102, '09:00:00', 'Sosh-Arcadia', '2022-06-07'),
(208, 103, '09:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(209, 104, '09:00:00', 'Main-Sosh', '2022-06-07'),
(210, 105, '09:00:00', 'Main-Arcadia', '2022-06-07'),
(211, 106, '09:00:00', 'Main-Garankuwa', '2022-06-07'),
(212, 107, '09:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(213, 108, '09:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(214, 109, '09:00:00', 'Garankuwa-Main', '2022-06-07'),
(215, 110, '09:00:00', 'Arcadia-Sosh', '2022-06-07'),
(216, 111, '09:00:00', 'Arcadia-Main', '2022-06-07'),
(217, 112, '09:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(218, 104, '10:00:00', 'Sosh-Main', '2022-06-07'),
(219, 110, '10:00:00', 'Sosh-Arcadia', '2022-06-07'),
(220, 107, '10:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(221, 101, '10:00:00', 'Main-Sosh', '2022-06-07'),
(222, 111, '10:00:00', 'Main-Arcadia', '2022-06-07'),
(223, 109, '10:00:00', 'Main-Garankuwa', '2022-06-07'),
(224, 103, '10:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(225, 112, '10:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(226, 106, '10:00:00', 'Garankuwa-Main', '2022-06-07'),
(227, 102, '10:00:00', 'Arcadia-Sosh', '2022-06-07'),
(228, 105, '10:00:00', 'Arcadia-Main', '2022-06-07'),
(229, 108, '10:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(230, 101, '11:00:00', 'Sosh-Main', '2022-06-07'),
(231, 102, '11:00:00', 'Sosh-Arcadia', '2022-06-07'),
(232, 103, '11:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(233, 104, '11:00:00', 'Main-Sosh', '2022-06-07'),
(234, 105, '11:00:00', 'Main-Arcadia', '2022-06-07'),
(235, 106, '11:00:00', 'Main-Garankuwa', '2022-06-07'),
(236, 107, '11:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(237, 108, '11:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(238, 109, '11:00:00', 'Garankuwa-Main', '2022-06-07'),
(239, 110, '11:00:00', 'Arcadia-Sosh', '2022-06-07'),
(240, 111, '11:00:00', 'Arcadia-Main', '2022-06-07'),
(241, 112, '11:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(242, 104, '12:00:00', 'Sosh-Main', '2022-06-07'),
(243, 110, '12:00:00', 'Sosh-Arcadia', '2022-06-07'),
(244, 107, '12:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(245, 101, '12:00:00', 'Main-Sosh', '2022-06-07'),
(246, 111, '12:00:00', 'Main-Arcadia', '2022-06-07'),
(247, 109, '12:00:00', 'Main-Garankuwa', '2022-06-07'),
(248, 103, '12:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(249, 112, '12:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(250, 106, '12:00:00', 'Garankuwa-Main', '2022-06-07'),
(251, 102, '12:00:00', 'Arcadia-Sosh', '2022-06-07'),
(252, 105, '12:00:00', 'Arcadia-Main', '2022-06-07'),
(253, 108, '12:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(254, 101, '13:00:00', 'Sosh-Main', '2022-06-07'),
(255, 102, '13:00:00', 'Sosh-Arcadia', '2022-06-07'),
(256, 103, '13:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(257, 104, '13:00:00', 'Main-Sosh', '2022-06-07'),
(258, 105, '13:00:00', 'Main-Arcadia', '2022-06-07'),
(259, 106, '13:00:00', 'Main-Garankuwa', '2022-06-07'),
(260, 107, '13:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(261, 108, '13:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(262, 109, '13:00:00', 'Garankuwa-Main', '2022-06-07'),
(263, 110, '13:00:00', 'Arcadia-Sosh', '2022-06-07'),
(264, 111, '13:00:00', 'Arcadia-Main', '2022-06-07'),
(265, 112, '13:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(266, 104, '14:00:00', 'Sosh-Main', '2022-06-07'),
(267, 110, '14:00:00', 'Sosh-Arcadia', '2022-06-07'),
(268, 107, '14:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(269, 101, '14:00:00', 'Main-Sosh', '2022-06-07'),
(270, 111, '14:00:00', 'Main-Arcadia', '2022-06-07'),
(271, 109, '14:00:00', 'Main-Garankuwa', '2022-06-07'),
(272, 103, '14:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(273, 112, '14:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(274, 106, '14:00:00', 'Garankuwa-Main', '2022-06-07'),
(275, 102, '14:00:00', 'Arcadia-Sosh', '2022-06-07'),
(276, 105, '14:00:00', 'Arcadia-Main', '2022-06-07'),
(277, 108, '14:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(278, 101, '15:00:00', 'Sosh-Main', '2022-06-07'),
(279, 102, '15:00:00', 'Sosh-Arcadia', '2022-06-07'),
(280, 103, '15:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(281, 104, '15:00:00', 'Main-Sosh', '2022-06-07'),
(282, 105, '15:00:00', 'Main-Arcadia', '2022-06-07'),
(283, 106, '15:00:00', 'Main-Garankuwa', '2022-06-07'),
(284, 107, '15:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(285, 108, '15:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(286, 109, '15:00:00', 'Garankuwa-Main', '2022-06-07'),
(287, 110, '15:00:00', 'Arcadia-Sosh', '2022-06-07'),
(288, 111, '15:00:00', 'Arcadia-Main', '2022-06-07'),
(289, 112, '15:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(290, 104, '16:00:00', 'Sosh-Main', '2022-06-07'),
(291, 110, '16:00:00', 'Sosh-Arcadia', '2022-06-07'),
(292, 107, '16:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(293, 101, '16:00:00', 'Main-Sosh', '2022-06-07'),
(294, 111, '16:00:00', 'Main-Arcadia', '2022-06-07'),
(295, 109, '16:00:00', 'Main-Garankuwa', '2022-06-07'),
(296, 103, '16:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(297, 112, '16:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(298, 106, '16:00:00', 'Garankuwa-Main', '2022-06-07'),
(299, 102, '16:00:00', 'Arcadia-Sosh', '2022-06-07'),
(300, 105, '16:00:00', 'Arcadia-Main', '2022-06-07'),
(301, 108, '16:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(302, 101, '17:00:00', 'Sosh-Main', '2022-06-07'),
(303, 102, '17:00:00', 'Sosh-Arcadia', '2022-06-07'),
(304, 103, '17:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(305, 104, '17:00:00', 'Main-Sosh', '2022-06-07'),
(306, 105, '17:00:00', 'Main-Arcadia', '2022-06-07'),
(307, 106, '17:00:00', 'Main-Garankuwa', '2022-06-07'),
(308, 107, '17:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(309, 108, '17:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(310, 109, '17:00:00', 'Garankuwa-Main', '2022-06-07'),
(311, 110, '17:00:00', 'Arcadia-Sosh', '2022-06-07'),
(312, 111, '17:00:00', 'Arcadia-Main', '2022-06-07'),
(313, 112, '17:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(314, 104, '18:00:00', 'Sosh-Main', '2022-06-07'),
(315, 110, '18:00:00', 'Sosh-Arcadia', '2022-06-07'),
(316, 107, '18:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(317, 101, '18:00:00', 'Main-Sosh', '2022-06-07'),
(318, 111, '18:00:00', 'Main-Arcadia', '2022-06-07'),
(319, 109, '18:00:00', 'Main-Garankuwa', '2022-06-07'),
(320, 103, '18:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(321, 112, '18:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(322, 106, '18:00:00', 'Garankuwa-Main', '2022-06-07'),
(323, 102, '18:00:00', 'Arcadia-Sosh', '2022-06-07'),
(324, 105, '18:00:00', 'Arcadia-Main', '2022-06-07'),
(325, 108, '18:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(326, 101, '19:00:00', 'Sosh-Main', '2022-06-07'),
(327, 102, '19:00:00', 'Sosh-Arcadia', '2022-06-07'),
(328, 103, '19:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(329, 104, '19:00:00', 'Main-Sosh', '2022-06-07'),
(330, 105, '19:00:00', 'Main-Arcadia', '2022-06-07'),
(331, 106, '19:00:00', 'Main-Garankuwa', '2022-06-07'),
(332, 107, '19:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(333, 108, '19:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(334, 109, '19:00:00', 'Garankuwa-Main', '2022-06-07'),
(335, 110, '19:00:00', 'Arcadia-Sosh', '2022-06-07'),
(336, 111, '19:00:00', 'Arcadia-Main', '2022-06-07'),
(337, 112, '19:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(338, 104, '20:00:00', 'Sosh-Main', '2022-06-07'),
(339, 110, '20:00:00', 'Sosh-Arcadia', '2022-06-07'),
(340, 107, '20:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(341, 101, '20:00:00', 'Main-Sosh', '2022-06-07'),
(342, 111, '20:00:00', 'Main-Arcadia', '2022-06-07'),
(343, 109, '20:00:00', 'Main-Garankuwa', '2022-06-07'),
(344, 103, '20:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(345, 112, '20:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(346, 106, '20:00:00', 'Garankuwa-Main', '2022-06-07'),
(347, 102, '20:00:00', 'Arcadia-Sosh', '2022-06-07'),
(348, 105, '20:00:00', 'Arcadia-Main', '2022-06-07'),
(349, 108, '20:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(350, 101, '21:00:00', 'Sosh-Main', '2022-06-07'),
(351, 102, '21:00:00', 'Sosh-Arcadia', '2022-06-07'),
(352, 103, '21:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(353, 104, '21:00:00', 'Main-Sosh', '2022-06-07'),
(354, 105, '21:00:00', 'Main-Arcadia', '2022-06-07'),
(355, 106, '21:00:00', 'Main-Garankuwa', '2022-06-07'),
(356, 107, '21:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(357, 108, '21:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(358, 109, '21:00:00', 'Garankuwa-Main', '2022-06-07'),
(359, 110, '21:00:00', 'Arcadia-Sosh', '2022-06-07'),
(360, 111, '21:00:00', 'Arcadia-Main', '2022-06-07'),
(361, 112, '21:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(362, 101, '07:00:00', 'Sosh-Main', '2022-06-07'),
(363, 102, '07:00:00', 'Sosh-Arcadia', '2022-06-07'),
(364, 103, '07:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(365, 104, '07:00:00', 'Main-Sosha', '2022-06-07'),
(366, 105, '07:00:00', 'Main-Arcadia', '2022-06-07'),
(367, 106, '07:00:00', 'Main-Garankuwa', '2022-06-07'),
(368, 107, '07:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(369, 108, '07:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(370, 109, '07:00:00', 'Garankuwa-Main', '2022-06-07'),
(371, 110, '07:00:00', 'Arcadia-Sosh', '2022-06-07'),
(372, 111, '07:00:00', 'Arcadia-Main', '2022-06-07'),
(373, 112, '07:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(374, 104, '08:00:00', 'Sosh-Main', '2022-06-07'),
(375, 110, '08:00:00', 'Sosh-Arcadia', '2022-06-07'),
(376, 107, '08:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(377, 101, '08:00:00', 'Main-Sosh', '2022-06-07'),
(378, 111, '08:00:00', 'Main-Arcadia', '2022-06-07'),
(379, 109, '08:00:00', 'Main-Garankuwa', '2022-06-07'),
(380, 103, '08:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(381, 112, '08:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(382, 106, '08:00:00', 'Garankuwa-Main', '2022-06-07'),
(383, 102, '08:00:00', 'Arcadia-Sosh', '2022-06-07'),
(384, 105, '08:00:00', 'Arcadia-Main', '2022-06-07'),
(385, 108, '08:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(386, 101, '09:00:00', 'Sosh-Main', '2022-06-07'),
(387, 102, '09:00:00', 'Sosh-Arcadia', '2022-06-07'),
(388, 103, '09:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(389, 104, '09:00:00', 'Main-Sosh', '2022-06-07'),
(390, 105, '09:00:00', 'Main-Arcadia', '2022-06-07'),
(391, 106, '09:00:00', 'Main-Garankuwa', '2022-06-07'),
(392, 107, '09:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(393, 108, '09:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(394, 109, '09:00:00', 'Garankuwa-Main', '2022-06-07'),
(395, 110, '09:00:00', 'Arcadia-Sosh', '2022-06-07'),
(396, 111, '09:00:00', 'Arcadia-Main', '2022-06-07'),
(397, 112, '09:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(398, 104, '10:00:00', 'Sosh-Main', '2022-06-07'),
(399, 110, '10:00:00', 'Sosh-Arcadia', '2022-06-07'),
(400, 107, '10:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(401, 101, '10:00:00', 'Main-Sosh', '2022-06-07'),
(402, 111, '10:00:00', 'Main-Arcadia', '2022-06-07'),
(403, 109, '10:00:00', 'Main-Garankuwa', '2022-06-07'),
(404, 103, '10:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(405, 112, '10:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(406, 106, '10:00:00', 'Garankuwa-Main', '2022-06-07'),
(407, 102, '10:00:00', 'Arcadia-Sosh', '2022-06-07'),
(408, 105, '10:00:00', 'Arcadia-Main', '2022-06-07'),
(409, 108, '10:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(410, 101, '11:00:00', 'Sosh-Main', '2022-06-07'),
(411, 102, '11:00:00', 'Sosh-Arcadia', '2022-06-07'),
(412, 103, '11:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(413, 104, '11:00:00', 'Main-Sosh', '2022-06-07'),
(414, 105, '11:00:00', 'Main-Arcadia', '2022-06-07'),
(415, 106, '11:00:00', 'Main-Garankuwa', '2022-06-07'),
(416, 107, '11:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(417, 108, '11:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(418, 109, '11:00:00', 'Garankuwa-Main', '2022-06-07'),
(419, 110, '11:00:00', 'Arcadia-Sosh', '2022-06-07'),
(420, 111, '11:00:00', 'Arcadia-Main', '2022-06-07'),
(421, 112, '11:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(422, 104, '12:00:00', 'Sosh-Main', '2022-06-07'),
(423, 110, '12:00:00', 'Sosh-Arcadia', '2022-06-07'),
(424, 107, '12:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(425, 101, '12:00:00', 'Main-Sosh', '2022-06-07'),
(426, 111, '12:00:00', 'Main-Arcadia', '2022-06-07'),
(427, 109, '12:00:00', 'Main-Garankuwa', '2022-06-07'),
(428, 103, '12:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(429, 112, '12:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(430, 106, '12:00:00', 'Garankuwa-Main', '2022-06-07'),
(431, 102, '12:00:00', 'Arcadia-Sosh', '2022-06-07'),
(432, 105, '12:00:00', 'Arcadia-Main', '2022-06-07'),
(433, 108, '12:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(434, 101, '13:00:00', 'Sosh-Main', '2022-06-07'),
(435, 102, '13:00:00', 'Sosh-Arcadia', '2022-06-07'),
(436, 103, '13:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(437, 104, '13:00:00', 'Main-Sosh', '2022-06-07'),
(438, 105, '13:00:00', 'Main-Arcadia', '2022-06-07'),
(439, 106, '13:00:00', 'Main-Garankuwa', '2022-06-07'),
(440, 107, '13:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(441, 108, '13:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(442, 109, '13:00:00', 'Garankuwa-Main', '2022-06-07'),
(443, 110, '13:00:00', 'Arcadia-Sosh', '2022-06-07'),
(444, 111, '13:00:00', 'Arcadia-Main', '2022-06-07'),
(445, 112, '13:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(446, 104, '14:00:00', 'Sosh-Main', '2022-06-07'),
(447, 110, '14:00:00', 'Sosh-Arcadia', '2022-06-07'),
(448, 107, '14:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(449, 101, '14:00:00', 'Main-Sosh', '2022-06-07'),
(450, 111, '14:00:00', 'Main-Arcadia', '2022-06-07'),
(451, 109, '14:00:00', 'Main-Garankuwa', '2022-06-07'),
(452, 103, '14:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(453, 112, '14:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(454, 106, '14:00:00', 'Garankuwa-Main', '2022-06-07'),
(455, 102, '14:00:00', 'Arcadia-Sosh', '2022-06-07'),
(456, 105, '14:00:00', 'Arcadia-Main', '2022-06-07'),
(457, 108, '14:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(458, 101, '15:00:00', 'Sosh-Main', '2022-06-07'),
(459, 102, '15:00:00', 'Sosh-Arcadia', '2022-06-07'),
(460, 103, '15:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(461, 104, '15:00:00', 'Main-Sosh', '2022-06-07'),
(462, 105, '15:00:00', 'Main-Arcadia', '2022-06-07'),
(463, 106, '15:00:00', 'Main-Garankuwa', '2022-06-07'),
(464, 107, '15:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(465, 108, '15:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(466, 109, '15:00:00', 'Garankuwa-Main', '2022-06-07'),
(467, 110, '15:00:00', 'Arcadia-Sosh', '2022-06-07'),
(468, 111, '15:00:00', 'Arcadia-Main', '2022-06-07'),
(469, 112, '15:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(470, 104, '16:00:00', 'Sosh-Main', '2022-06-07'),
(471, 110, '16:00:00', 'Sosh-Arcadia', '2022-06-07'),
(472, 107, '16:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(473, 101, '16:00:00', 'Main-Sosh', '2022-06-07'),
(474, 111, '16:00:00', 'Main-Arcadia', '2022-06-07'),
(475, 109, '16:00:00', 'Main-Garankuwa', '2022-06-07'),
(476, 103, '16:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(477, 112, '16:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(478, 106, '16:00:00', 'Garankuwa-Main', '2022-06-07'),
(479, 102, '16:00:00', 'Arcadia-Sosh', '2022-06-07'),
(480, 105, '16:00:00', 'Arcadia-Main', '2022-06-07'),
(481, 108, '16:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(482, 101, '17:00:00', 'Sosh-Main', '2022-06-07'),
(483, 102, '17:00:00', 'Sosh-Arcadia', '2022-06-07'),
(484, 103, '17:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(485, 104, '17:00:00', 'Main-Sosh', '2022-06-07'),
(486, 105, '17:00:00', 'Main-Arcadia', '2022-06-07'),
(487, 106, '17:00:00', 'Main-Garankuwa', '2022-06-07'),
(488, 107, '17:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(489, 108, '17:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(490, 109, '17:00:00', 'Garankuwa-Main', '2022-06-07'),
(491, 110, '17:00:00', 'Arcadia-Sosh', '2022-06-07'),
(492, 111, '17:00:00', 'Arcadia-Main', '2022-06-07'),
(493, 112, '17:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(494, 104, '18:00:00', 'Sosh-Main', '2022-06-07'),
(495, 110, '18:00:00', 'Sosh-Arcadia', '2022-06-07'),
(496, 107, '18:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(497, 101, '18:00:00', 'Main-Sosh', '2022-06-07'),
(498, 111, '18:00:00', 'Main-Arcadia', '2022-06-07'),
(499, 109, '18:00:00', 'Main-Garankuwa', '2022-06-07'),
(500, 103, '18:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(501, 112, '18:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(502, 106, '18:00:00', 'Garankuwa-Main', '2022-06-07'),
(503, 102, '18:00:00', 'Arcadia-Sosh', '2022-06-07'),
(504, 105, '18:00:00', 'Arcadia-Main', '2022-06-07'),
(505, 108, '18:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(506, 101, '19:00:00', 'Sosh-Main', '2022-06-07'),
(507, 102, '19:00:00', 'Sosh-Arcadia', '2022-06-07'),
(508, 103, '19:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(509, 104, '19:00:00', 'Main-Sosh', '2022-06-07'),
(510, 105, '19:00:00', 'Main-Arcadia', '2022-06-07'),
(511, 106, '19:00:00', 'Main-Garankuwa', '2022-06-07'),
(512, 107, '19:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(513, 108, '19:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(514, 109, '19:00:00', 'Garankuwa-Main', '2022-06-07'),
(515, 110, '19:00:00', 'Arcadia-Sosh', '2022-06-07'),
(516, 111, '19:00:00', 'Arcadia-Main', '2022-06-07'),
(517, 112, '19:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(518, 104, '20:00:00', 'Sosh-Main', '2022-06-07'),
(519, 110, '20:00:00', 'Sosh-Arcadia', '2022-06-07'),
(520, 107, '20:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(521, 101, '20:00:00', 'Main-Sosh', '2022-06-07'),
(522, 111, '20:00:00', 'Main-Arcadia', '2022-06-07'),
(523, 109, '20:00:00', 'Main-Garankuwa', '2022-06-07'),
(524, 103, '20:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(525, 112, '20:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(526, 106, '20:00:00', 'Garankuwa-Main', '2022-06-07'),
(527, 102, '20:00:00', 'Arcadia-Sosh', '2022-06-07'),
(528, 105, '20:00:00', 'Arcadia-Main', '2022-06-07'),
(529, 108, '20:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(530, 101, '21:00:00', 'Sosh-Main', '2022-06-07'),
(531, 102, '21:00:00', 'Sosh-Arcadia', '2022-06-07'),
(532, 103, '21:00:00', 'Sosh-Garankuwa', '2022-06-07'),
(533, 104, '21:00:00', 'Main-Sosh', '2022-06-07'),
(534, 105, '21:00:00', 'Main-Arcadia', '2022-06-07'),
(535, 106, '21:00:00', 'Main-Garankuwa', '2022-06-07'),
(536, 107, '21:00:00', 'Garankuwa-Sosh', '2022-06-07'),
(537, 108, '21:00:00', 'Garankuwa-Arcadia', '2022-06-07'),
(538, 109, '21:00:00', 'Garankuwa-Main', '2022-06-07'),
(539, 110, '21:00:00', 'Arcadia-Sosh', '2022-06-07'),
(540, 111, '21:00:00', 'Arcadia-Main', '2022-06-07'),
(541, 112, '21:00:00', 'Arcadia-Garankuwa', '2022-06-07'),
(542, 101, '07:00:00', 'Sosh-Main', '2022-06-08'),
(543, 102, '07:00:00', 'Sosh-Arcadia', '2022-06-08'),
(544, 103, '07:00:00', 'Sosh-Garankuwa', '2022-06-08'),
(545, 104, '07:00:00', 'Main-Sosha', '2022-06-08'),
(546, 105, '07:00:00', 'Main-Arcadia', '2022-06-08'),
(547, 106, '07:00:00', 'Main-Garankuwa', '2022-06-08'),
(548, 107, '07:00:00', 'Garankuwa-Sosh', '2022-06-08'),
(549, 108, '07:00:00', 'Garankuwa-Arcadia', '2022-06-08'),
(550, 109, '07:00:00', 'Garankuwa-Main', '2022-06-08'),
(551, 110, '07:00:00', 'Arcadia-Sosh', '2022-06-08'),
(552, 111, '07:00:00', 'Arcadia-Main', '2022-06-08'),
(553, 112, '07:00:00', 'Arcadia-Garankuwa', '2022-06-08'),
(554, 104, '08:00:00', 'Sosh-Main', '2022-06-08'),
(555, 110, '08:00:00', 'Sosh-Arcadia', '2022-06-08'),
(556, 107, '08:00:00', 'Sosh-Garankuwa', '2022-06-08'),
(557, 101, '08:00:00', 'Main-Sosh', '2022-06-08'),
(558, 111, '08:00:00', 'Main-Arcadia', '2022-06-08'),
(559, 109, '08:00:00', 'Main-Garankuwa', '2022-06-08'),
(560, 103, '08:00:00', 'Garankuwa-Sosh', '2022-06-08'),
(561, 112, '08:00:00', 'Garankuwa-Arcadia', '2022-06-08'),
(562, 106, '08:00:00', 'Garankuwa-Main', '2022-06-08'),
(563, 102, '08:00:00', 'Arcadia-Sosh', '2022-06-08'),
(564, 105, '08:00:00', 'Arcadia-Main', '2022-06-08'),
(565, 108, '08:00:00', 'Arcadia-Garankuwa', '2022-06-08'),
(566, 101, '09:00:00', 'Sosh-Main', '2022-06-08'),
(567, 102, '09:00:00', 'Sosh-Arcadia', '2022-06-08'),
(568, 103, '09:00:00', 'Sosh-Garankuwa', '2022-06-08'),
(569, 104, '09:00:00', 'Main-Sosh', '2022-06-08'),
(570, 105, '09:00:00', 'Main-Arcadia', '2022-06-08'),
(571, 106, '09:00:00', 'Main-Garankuwa', '2022-06-08'),
(572, 107, '09:00:00', 'Garankuwa-Sosh', '2022-06-08'),
(573, 108, '09:00:00', 'Garankuwa-Arcadia', '2022-06-08'),
(574, 109, '09:00:00', 'Garankuwa-Main', '2022-06-08'),
(575, 110, '09:00:00', 'Arcadia-Sosh', '2022-06-08'),
(576, 111, '09:00:00', 'Arcadia-Main', '2022-06-08'),
(577, 112, '09:00:00', 'Arcadia-Garankuwa', '2022-06-08'),
(578, 104, '10:00:00', 'Sosh-Main', '2022-06-08'),
(579, 110, '10:00:00', 'Sosh-Arcadia', '2022-06-08'),
(580, 107, '10:00:00', 'Sosh-Garankuwa', '2022-06-08'),
(581, 101, '10:00:00', 'Main-Sosh', '2022-06-08'),
(582, 111, '10:00:00', 'Main-Arcadia', '2022-06-08'),
(583, 109, '10:00:00', 'Main-Garankuwa', '2022-06-08'),
(584, 103, '10:00:00', 'Garankuwa-Sosh', '2022-06-08'),
(585, 112, '10:00:00', 'Garankuwa-Arcadia', '2022-06-08'),
(586, 106, '10:00:00', 'Garankuwa-Main', '2022-06-08'),
(587, 102, '10:00:00', 'Arcadia-Sosh', '2022-06-08'),
(588, 105, '10:00:00', 'Arcadia-Main', '2022-06-08'),
(589, 108, '10:00:00', 'Arcadia-Garankuwa', '2022-06-08'),
(590, 101, '11:00:00', 'Sosh-Main', '2022-06-08'),
(591, 102, '11:00:00', 'Sosh-Arcadia', '2022-06-08'),
(592, 103, '11:00:00', 'Sosh-Garankuwa', '2022-06-08'),
(593, 104, '11:00:00', 'Main-Sosh', '2022-06-08'),
(594, 105, '11:00:00', 'Main-Arcadia', '2022-06-08'),
(595, 106, '11:00:00', 'Main-Garankuwa', '2022-06-08'),
(596, 107, '11:00:00', 'Garankuwa-Sosh', '2022-06-08'),
(597, 108, '11:00:00', 'Garankuwa-Arcadia', '2022-06-08'),
(598, 109, '11:00:00', 'Garankuwa-Main', '2022-06-08'),
(599, 110, '11:00:00', 'Arcadia-Sosh', '2022-06-08'),
(600, 111, '11:00:00', 'Arcadia-Main', '2022-06-08'),
(601, 112, '11:00:00', 'Arcadia-Garankuwa', '2022-06-08'),
(602, 104, '12:00:00', 'Sosh-Main', '2022-06-08'),
(603, 110, '12:00:00', 'Sosh-Arcadia', '2022-06-08'),
(604, 107, '12:00:00', 'Sosh-Garankuwa', '2022-06-08'),
(605, 101, '12:00:00', 'Main-Sosh', '2022-06-08'),
(606, 111, '12:00:00', 'Main-Arcadia', '2022-06-08'),
(607, 109, '12:00:00', 'Main-Garankuwa', '2022-06-08'),
(608, 103, '12:00:00', 'Garankuwa-Sosh', '2022-06-08'),
(609, 112, '12:00:00', 'Garankuwa-Arcadia', '2022-06-08'),
(610, 106, '12:00:00', 'Garankuwa-Main', '2022-06-08'),
(611, 102, '12:00:00', 'Arcadia-Sosh', '2022-06-08'),
(612, 105, '12:00:00', 'Arcadia-Main', '2022-06-08'),
(613, 108, '12:00:00', 'Arcadia-Garankuwa', '2022-06-08'),
(614, 101, '13:00:00', 'Sosh-Main', '2022-06-08'),
(615, 102, '13:00:00', 'Sosh-Arcadia', '2022-06-08'),
(616, 103, '13:00:00', 'Sosh-Garankuwa', '2022-06-08'),
(617, 104, '13:00:00', 'Main-Sosh', '2022-06-08'),
(618, 105, '13:00:00', 'Main-Arcadia', '2022-06-08'),
(619, 106, '13:00:00', 'Main-Garankuwa', '2022-06-08'),
(620, 107, '13:00:00', 'Garankuwa-Sosh', '2022-06-08'),
(621, 108, '13:00:00', 'Garankuwa-Arcadia', '2022-06-08'),
(622, 109, '13:00:00', 'Garankuwa-Main', '2022-06-08'),
(623, 110, '13:00:00', 'Arcadia-Sosh', '2022-06-08'),
(624, 111, '13:00:00', 'Arcadia-Main', '2022-06-08'),
(625, 112, '13:00:00', 'Arcadia-Garankuwa', '2022-06-08'),
(626, 104, '14:00:00', 'Sosh-Main', '2022-06-08'),
(627, 110, '14:00:00', 'Sosh-Arcadia', '2022-06-08'),
(628, 107, '14:00:00', 'Sosh-Garankuwa', '2022-06-08'),
(629, 101, '14:00:00', 'Main-Sosh', '2022-06-08'),
(630, 111, '14:00:00', 'Main-Arcadia', '2022-06-08'),
(631, 109, '14:00:00', 'Main-Garankuwa', '2022-06-08'),
(632, 103, '14:00:00', 'Garankuwa-Sosh', '2022-06-08'),
(633, 112, '14:00:00', 'Garankuwa-Arcadia', '2022-06-08'),
(634, 106, '14:00:00', 'Garankuwa-Main', '2022-06-08'),
(635, 102, '14:00:00', 'Arcadia-Sosh', '2022-06-08'),
(636, 105, '14:00:00', 'Arcadia-Main', '2022-06-08'),
(637, 108, '14:00:00', 'Arcadia-Garankuwa', '2022-06-08'),
(638, 101, '15:00:00', 'Sosh-Main', '2022-06-08'),
(639, 102, '15:00:00', 'Sosh-Arcadia', '2022-06-08'),
(640, 103, '15:00:00', 'Sosh-Garankuwa', '2022-06-08'),
(641, 104, '15:00:00', 'Main-Sosh', '2022-06-08'),
(642, 105, '15:00:00', 'Main-Arcadia', '2022-06-08'),
(643, 106, '15:00:00', 'Main-Garankuwa', '2022-06-08'),
(644, 107, '15:00:00', 'Garankuwa-Sosh', '2022-06-08'),
(645, 108, '15:00:00', 'Garankuwa-Arcadia', '2022-06-08'),
(646, 109, '15:00:00', 'Garankuwa-Main', '2022-06-08'),
(647, 110, '15:00:00', 'Arcadia-Sosh', '2022-06-08'),
(648, 111, '15:00:00', 'Arcadia-Main', '2022-06-08'),
(649, 112, '15:00:00', 'Arcadia-Garankuwa', '2022-06-08'),
(650, 104, '16:00:00', 'Sosh-Main', '2022-06-08'),
(651, 110, '16:00:00', 'Sosh-Arcadia', '2022-06-08'),
(652, 107, '16:00:00', 'Sosh-Garankuwa', '2022-06-08'),
(653, 101, '16:00:00', 'Main-Sosh', '2022-06-08'),
(654, 111, '16:00:00', 'Main-Arcadia', '2022-06-08'),
(655, 109, '16:00:00', 'Main-Garankuwa', '2022-06-08'),
(656, 103, '16:00:00', 'Garankuwa-Sosh', '2022-06-08'),
(657, 112, '16:00:00', 'Garankuwa-Arcadia', '2022-06-08'),
(658, 106, '16:00:00', 'Garankuwa-Main', '2022-06-08'),
(659, 102, '16:00:00', 'Arcadia-Sosh', '2022-06-08'),
(660, 105, '16:00:00', 'Arcadia-Main', '2022-06-08'),
(661, 108, '16:00:00', 'Arcadia-Garankuwa', '2022-06-08'),
(662, 101, '17:00:00', 'Sosh-Main', '2022-06-08'),
(663, 102, '17:00:00', 'Sosh-Arcadia', '2022-06-08'),
(664, 103, '17:00:00', 'Sosh-Garankuwa', '2022-06-08'),
(665, 104, '17:00:00', 'Main-Sosh', '2022-06-08'),
(666, 105, '17:00:00', 'Main-Arcadia', '2022-06-08'),
(667, 106, '17:00:00', 'Main-Garankuwa', '2022-06-08'),
(668, 107, '17:00:00', 'Garankuwa-Sosh', '2022-06-08'),
(669, 108, '17:00:00', 'Garankuwa-Arcadia', '2022-06-08'),
(670, 109, '17:00:00', 'Garankuwa-Main', '2022-06-08'),
(671, 110, '17:00:00', 'Arcadia-Sosh', '2022-06-08'),
(672, 111, '17:00:00', 'Arcadia-Main', '2022-06-08'),
(673, 112, '17:00:00', 'Arcadia-Garankuwa', '2022-06-08'),
(674, 104, '18:00:00', 'Sosh-Main', '2022-06-08'),
(675, 110, '18:00:00', 'Sosh-Arcadia', '2022-06-08'),
(676, 107, '18:00:00', 'Sosh-Garankuwa', '2022-06-08'),
(677, 101, '18:00:00', 'Main-Sosh', '2022-06-08'),
(678, 111, '18:00:00', 'Main-Arcadia', '2022-06-08'),
(679, 109, '18:00:00', 'Main-Garankuwa', '2022-06-08'),
(680, 103, '18:00:00', 'Garankuwa-Sosh', '2022-06-08'),
(681, 112, '18:00:00', 'Garankuwa-Arcadia', '2022-06-08'),
(682, 106, '18:00:00', 'Garankuwa-Main', '2022-06-08'),
(683, 102, '18:00:00', 'Arcadia-Sosh', '2022-06-08'),
(684, 105, '18:00:00', 'Arcadia-Main', '2022-06-08'),
(685, 108, '18:00:00', 'Arcadia-Garankuwa', '2022-06-08'),
(686, 101, '19:00:00', 'Sosh-Main', '2022-06-08'),
(687, 102, '19:00:00', 'Sosh-Arcadia', '2022-06-08'),
(688, 103, '19:00:00', 'Sosh-Garankuwa', '2022-06-08'),
(689, 104, '19:00:00', 'Main-Sosh', '2022-06-08'),
(690, 105, '19:00:00', 'Main-Arcadia', '2022-06-08'),
(691, 106, '19:00:00', 'Main-Garankuwa', '2022-06-08'),
(692, 107, '19:00:00', 'Garankuwa-Sosh', '2022-06-08'),
(693, 108, '19:00:00', 'Garankuwa-Arcadia', '2022-06-08'),
(694, 109, '19:00:00', 'Garankuwa-Main', '2022-06-08'),
(695, 110, '19:00:00', 'Arcadia-Sosh', '2022-06-08'),
(696, 111, '19:00:00', 'Arcadia-Main', '2022-06-08'),
(697, 112, '19:00:00', 'Arcadia-Garankuwa', '2022-06-08'),
(698, 104, '20:00:00', 'Sosh-Main', '2022-06-08'),
(699, 110, '20:00:00', 'Sosh-Arcadia', '2022-06-08'),
(700, 107, '20:00:00', 'Sosh-Garankuwa', '2022-06-08'),
(701, 101, '20:00:00', 'Main-Sosh', '2022-06-08'),
(702, 111, '20:00:00', 'Main-Arcadia', '2022-06-08'),
(703, 109, '20:00:00', 'Main-Garankuwa', '2022-06-08'),
(704, 103, '20:00:00', 'Garankuwa-Sosh', '2022-06-08'),
(705, 112, '20:00:00', 'Garankuwa-Arcadia', '2022-06-08'),
(706, 106, '20:00:00', 'Garankuwa-Main', '2022-06-08'),
(707, 102, '20:00:00', 'Arcadia-Sosh', '2022-06-08'),
(708, 105, '20:00:00', 'Arcadia-Main', '2022-06-08'),
(709, 108, '20:00:00', 'Arcadia-Garankuwa', '2022-06-08'),
(710, 101, '21:00:00', 'Sosh-Main', '2022-06-08'),
(711, 102, '21:00:00', 'Sosh-Arcadia', '2022-06-08'),
(712, 103, '21:00:00', 'Sosh-Garankuwa', '2022-06-08'),
(713, 104, '21:00:00', 'Main-Sosh', '2022-06-08'),
(714, 105, '21:00:00', 'Main-Arcadia', '2022-06-08'),
(715, 106, '21:00:00', 'Main-Garankuwa', '2022-06-08'),
(716, 107, '21:00:00', 'Garankuwa-Sosh', '2022-06-08'),
(717, 108, '21:00:00', 'Garankuwa-Arcadia', '2022-06-08'),
(718, 109, '21:00:00', 'Garankuwa-Main', '2022-06-08'),
(719, 110, '21:00:00', 'Arcadia-Sosh', '2022-06-08'),
(720, 111, '21:00:00', 'Arcadia-Main', '2022-06-08'),
(721, 112, '21:00:00', 'Arcadia-Garankuwa', '2022-06-08');

-- --------------------------------------------------------

--
-- Table structure for table `usesr`
--

CREATE TABLE `usesr` (
  `studentNo` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usesr`
--

INSERT INTO `usesr` (`studentNo`, `name`, `email`, `password`) VALUES
('215199460', 'test', 'test@gmail.com', 'test123'),
('344322', 'test', 'test@gmail.com', 'test123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usesr`
--
ALTER TABLE `usesr`
  ADD PRIMARY KEY (`studentNo`),
  ADD KEY `name` (`name`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=722;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
