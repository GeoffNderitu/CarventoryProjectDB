-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 28, 2023 at 10:16 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CarNation`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `make` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `image4` varchar(255) NOT NULL,
  `specs` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_car_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `brand`, `make`, `model`, `image`, `image2`, `image3`, `image4`, `specs`, `created_at`, `user_car_id`) VALUES
(1, 'Subaru', 'Subaru', 'Wrx Sti', '05sti_white.webp', '2005_subaru_impreza_wrx_sti_161765425908495d565e2005_subaru_impreza_wrx_sti_1617654258565ef66e7dff9f986678f661-568f-4dc4-b51c-b56fb98e0c09-xTp1S4-scaled.webp', '14446940402_1c5c0babde_o.jpeg', '14446940402_1c5c0babde_o.jpeg', 'The 2005 Subaru WRX STI, also known as the Subaru Impreza WRX STI (GD chassis), was a high-performance variant of the Subaru Impreza compact car. Here are the specifications for the 2005 Subaru WRX STI:\r\n\r\nEngine:\r\n- 2.5-liter turbocharged horizontally opposed (boxer) four-cylinder engine\r\n- Power output: 300 horsepower\r\n- Torque: 300 lb-ft\r\n\r\nTransmission:\r\n- 6-speed manual transmission\r\n- Symmetrical All-Wheel Drive (AWD) system\r\n\r\nPerformance:\r\n- 0-60 mph (0-97 km/h): approximately 4.8 seconds\r\n- Top speed: electronically limited to 155 mph (250 km/h)\r\n\r\nSuspension and Brakes:\r\n- Front suspension: MacPherson struts\r\n- Rear suspension: Double wishbone\r\n- Brembo brakes with 4-piston front and 2-piston rear calipers\r\n\r\nDimensions:\r\n- Length: 173.8 inches (4,416 mm)\r\n- Width: 68.5 inches (1,740 mm)\r\n- Height: 56.3 inches (1,430 mm)\r\n- Wheelbase: 100 inches (2,540 mm)\r\n\r\nWeight:\r\n- Curb weight: approximately 3,300 lbs (1,500 kg)\r\n\r\nFuel Economy:\r\n- EPA estimated fuel economy: 18 mpg city / 24 mpg highway', '2023-06-12 14:48:23', NULL),
(2, 'Toyota', 'Toyota', 'Corolla', 'corolla.jpg', 'corolla2.jpg', 'corolla3.jpg', 'corolla4.jpg', 'Engine: 1.8L 4-cylinder, Horsepower: 132 hp, Fuel Efficiency: 30 mpg city / 38 mpg highway, Dimensions: 183.1\" L x 70.1\" W x 56.5\" H', '2023-06-13 08:10:07', NULL),
(3, 'Toyota', 'Toyota', 'Camry', 'camry.jpg', 'camry2.jpg', 'camry3.jpg', 'camry4.jpg', 'Engine: 2.5L 4-cylinder, Horsepower: 203 hp, Fuel Efficiency: 28 mpg city / 39 mpg highway, Dimensions: 192.1\" L x 72.4\" W x 56.9\" H', '2023-06-13 08:10:07', NULL),
(4, 'Toyota', 'Toyota', 'RAV4', 'rav4.jpg', 'rav4_2.jpg', 'rav4_3.jpg', 'rav4_4.jpg', 'Engine: 2.5L 4-cylinder, Horsepower: 203 hp, Fuel Efficiency: 28 mpg city / 35 mpg highway, Dimensions: 180.9\" L x 73\" W x 67\" H', '2023-06-13 08:10:07', NULL),
(5, 'Toyota', 'Toyota', 'Highlander', 'highlander.jpg', 'highlander2.jpg', 'highlander3.jpg', 'highlander4.jpg', 'Engine: 3.5L V6, Horsepower: 295 hp, Fuel Efficiency: 21 mpg city / 29 mpg highway, Dimensions: 194.9\" L x 75.8\" W x 68.1\" H', '2023-06-13 08:10:07', NULL),
(6, 'Toyota', 'Toyota', 'Prius', 'prius.jpg', 'prius2.jpg', 'prius3.jpg', 'prius4.jpg', 'Engine: 1.8L 4-cylinder + Electric Motor, Horsepower: 121 hp, Fuel Efficiency: 54 mpg city / 50 mpg highway, Dimensions: 180\" L x 69.3\" W x 57.9\" H', '2023-06-13 08:10:07', NULL),
(7, 'Toyota', 'Toyota', 'Sienna', 'sienna.jpg', 'sienna2.jpg', 'sienna3.jpg', 'sienna4.jpg', 'Engine: 3.5L V6, Horsepower: 296 hp, Fuel Efficiency: 19 mpg city / 27 mpg highway, Dimensions: 200.6\" L x 78.1\" W x 68.5\" H', '2023-06-13 08:10:07', NULL),
(8, 'Toyota', 'Toyota', 'Tacoma', 'tacoma.jpg', 'tacoma2.jpg', 'tacoma3.jpg', 'tacoma4.jpg', 'Engine: 3.5L V6, Horsepower: 278 hp, Fuel Efficiency: 18 mpg city / 22 mpg highway, Dimensions: 212.3\" L x 74.4\" W x 70.6\" H', '2023-06-13 08:10:07', NULL),
(9, 'Toyota', 'Toyota', 'Tundra', 'tundra.jpg', 'tundra2.jpg', 'tundra3.jpg', 'tundra4.jpg', 'Engine: 5.7L V8, Horsepower: 381 hp, Fuel Efficiency: 13 mpg city / 18 mpg highway, Dimensions: 228.9\" L x 79.9\" W x 75.8\" H', '2023-06-13 08:10:07', NULL),
(10, 'Toyota', 'Toyota', 'C-HR', 'chr.jpg', 'chr2.jpg', 'chr3.jpg', 'chr4.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 144 hp, Fuel Efficiency: 27 mpg city / 31 mpg highway, Dimensions: 171.2\" L x 70.7\" W x 61.6\" H', '2023-06-13 08:10:07', NULL),
(11, 'Toyota', 'Toyota', 'Supra', 'supra.jpg', 'suprabay.jpg', 'suprafront.jpg', 'supraback.jpg', 'The Toyota A80 Supra, also known as the fourth-generation Supra, was produced from 1993 to 2002. It gained significant popularity due to its powerful performance and sleek design. Here are some general specifications for the Toyota A80 Supra:\r\n<br>\r\nEngine Options:\r\n- 2JZ-GE: 3.0-liter inline-six engine\r\n  - Naturally aspirated (non-turbo) version\r\n  - Power Output: Approximately 220 horsepower\r\n  - Torque: Approximately 210 lb-ft\r\n<br>\r\n- 2JZ-GTE: 3.0-liter twin-turbocharged inline-six engine\r\n  - Turbocharged version (found in the Supra Turbo model)\r\n  - Power Output: Approximately 320 horsepower\r\n  - Torque: Approximately 315 lb-ft\r\n<br>\r\nTransmission:\r\n- 6-speed manual transmission\r\n- 4-speed automatic transmission (optional)\r\n<br>\r\nDrivetrain:\r\n- Rear-wheel drive (RWD)\r\n<br>\r\nPerformance:\r\n- 0-60 mph (0-97 km/h): Approximately 4.6 seconds (for the Turbo model)\r\n- Top Speed: Electronically limited to 155 mph (250 km/h)\r\n<br>\r\nSuspension and Brakes:\r\n- Front Suspension: Double-wishbone\r\n- Rear Suspension: Independent multilink\r\n- Brakes: Ventilated disc brakes on all four wheels\r\n<br>\r\nDimensions:\r\n- Length: Approximately 178 inches (4,520 mm)\r\n- Width: Approximately 72 inches (1,820 mm)\r\n- Height: Approximately 50 inches (1,275 mm)\r\n- Wheelbase: Approximately 100 inches (2,550 mm)\r\n<br>\r\nWeight:\r\n- Curb Weight: Varies depending on model and options, but typically around 3,400-3,500 lbs (1,540-1,590 kg)\r\n<br>\r\nFuel Economy:\r\n- EPA estimated fuel economy varies depending on the engine and transmission options, but it typically ranges from 15-20 mpg in the city and 22-28 mpg on the highway.\r\n', '2023-06-13 08:10:07', NULL),
(12, 'Toyota', 'Toyota', 'Yaris', 'yaris.jpg', 'yaris2.jpg', 'yaris3.jpg', 'yaris4.jpg', 'Engine: 1.5L 4-cylinder, Horsepower: 106 hp, Fuel Efficiency: 32 mpg city / 40 mpg highway, Dimensions: 171.2\" L x 66.7\" W x 58.9\" H', '2023-06-13 08:10:07', NULL),
(13, 'Toyota', 'Toyota', 'Avalon', 'avalon.jpg', 'avalon2.jpg', 'avalon3.jpg', 'avalon4.jpg', 'Engine: 3.5L V6, Horsepower: 301 hp, Fuel Efficiency: 22 mpg city / 31 mpg highway, Dimensions: 195.9\" L x 72.8\" W x 56.5\" H', '2023-06-13 08:10:07', NULL),
(14, 'Toyota', 'Toyota', '4Runner', '4runner.jpg', '4runner2.jpg', '4runner3.jpg', '4runner4.jpg', 'Engine: 4.0L V6, Horsepower: 270 hp, Fuel Efficiency: 17 mpg city / 21 mpg highway, Dimensions: 190.7\" L x 75.8\" W x 71.5\" H', '2023-06-13 08:10:07', NULL),
(15, 'Toyota', 'Toyota', 'Land Cruiser', 'landcruiser.jpg', 'landcruiser2.jpg', 'landcruiser3.jpg', 'landcruiser4.jpg', 'Engine: 5.7L V8, Horsepower: 381 hp, Fuel Efficiency: 13 mpg city / 17 mpg highway, Dimensions: 194.9\" L x 78\" W x 74\" H', '2023-06-13 08:10:07', NULL),
(16, 'Toyota', 'Toyota', 'Mirai', 'mirai.jpg', 'mirai2.jpg', 'mirai3.jpg', 'mirai4.jpg', 'Engine: Hydrogen Fuel Cell, Horsepower: 182 hp, Fuel Efficiency: 67 MPGe, Dimensions: 195.8\" L x 73.2\" W x 57.9\" H', '2023-06-13 08:10:07', NULL),
(17, 'Toyota', 'Toyota', 'Sequoia', 'sequoia.jpg', 'sequoia2.jpg', 'sequoia3.jpg', 'sequoia4.jpg', 'Engine: 5.7L V8, Horsepower: 381 hp, Fuel Efficiency: 13 mpg city / 17 mpg highway, Dimensions: 205.1\" L x 79.9\" W x 77\" H', '2023-06-13 08:10:07', NULL),
(18, 'Toyota', 'Toyota', 'Crown', 'crown.jpg', 'crown2.jpg', 'crown3.jpg', 'crown4.jpg', 'Engine: 2.0L 4-cylinder Hybrid, Horsepower: 242 hp, Fuel Efficiency: 29 mpg city / 40 mpg highway, Dimensions: 194.8\" L x 72.8\" W x 57.3\" H', '2023-06-13 08:10:07', NULL),
(19, 'Toyota', 'Toyota', 'Century', 'century.jpg', 'century2.jpg', 'century3.jpg', 'century4.jpg', 'Engine: 5.0L V8 Hybrid, Horsepower: 425 hp, Fuel Efficiency: 13.6 km/L, Dimensions: 204.7\" L x 76.8\" W x 60.8\" H', '2023-06-13 08:10:07', NULL),
(20, 'Toyota', 'Toyota', 'Vellfire', 'vellfire.jpg', 'vellfire2.jpg', 'vellfire3.jpg', 'vellfire4.jpg', 'Engine: 2.5L 4-cylinder Hybrid, Horsepower: 197 hp, Fuel Efficiency: 19.4 km/L, Dimensions: 192.5\" L x 74.8\" W x 75.2\" H', '2023-06-13 08:10:07', NULL),
(21, 'Toyota', 'Toyota', 'Alphard', 'alphard.jpg', 'alphard2.jpg', 'alphard3.jpg', 'alphard4.jpg', 'Engine: 2.5L 4-cylinder Hybrid, Horsepower: 197 hp, Fuel Efficiency: 19.6 km/L, Dimensions: 194.9\" L x 74.4\" W x 78.3\" H', '2023-06-13 08:10:07', NULL),
(22, 'Toyota', 'Toyota', 'Hilux', 'hilux.jpg', 'hilux2.jpg', 'hilux3.jpg', 'hilux4.jpg', 'Engine: 2.8L 4-cylinder Diesel, Horsepower: 201 hp, Fuel Efficiency: 11.6 km/L, Dimensions: 210.9\" L x 73.6\" W x 71.3\" H', '2023-06-13 08:10:07', NULL),
(23, 'Toyota', 'Toyota', 'Aygo', 'aygo.jpg', 'aygo2.jpg', 'aygo3.jpg', 'aygo4.jpg', 'Engine: 1.0L 3-cylinder, Horsepower: 71 hp, Fuel Efficiency: 56.5 mpg, Dimensions: 139.8\" L x 62.8\" W x 65.6\" H', '2023-06-13 08:21:10', NULL),
(24, 'Toyota', 'Toyota', 'Verso', 'verso.jpg', 'verso2.jpg', 'verso3.jpg', 'verso4.jpg', 'Engine: 1.6L 4-cylinder, Horsepower: 130 hp, Fuel Efficiency: 42.8 mpg, Dimensions: 180.5\" L x 72\" W x 63.4\" H', '2023-06-13 08:21:10', NULL),
(25, 'Toyota', 'Toyota', 'Proace', 'proace.jpg', 'proace2.jpg', 'proace3.jpg', 'proace4.jpg', 'Engine: 2.0L 4-cylinder Diesel, Horsepower: 118 hp, Fuel Efficiency: 47.8 mpg, Dimensions: 190.2\" L x 90.9\" W x 74\" H', '2023-06-13 08:21:10', NULL),
(26, 'Toyota', 'Toyota', 'Land Cruiser Prado', 'landcruiser_prado.jpg', 'landcruiser_prado2.jpg', 'landcruiser_prado3.jpg', 'landcruiser_prado4.jpg', 'Engine: 2.8L 4-cylinder Diesel, Horsepower: 201 hp, Fuel Efficiency: 31.7 mpg, Dimensions: 188.9\" L x 74.2\" W x 73\" H', '2023-06-13 08:21:10', NULL),
(27, 'Toyota', 'Toyota', 'GT86', 'gt86.jpg', 'gt86_2.jpg', 'gt86_3.jpg', 'gt86_4.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 197 hp, Fuel Efficiency: 29.1 mpg, Dimensions: 166.7\" L x 69.9\" W x 50.6\" H', '2023-06-13 08:21:10', NULL),
(28, 'Toyota', 'Toyota', 'Mirai FCEV', 'mirai_fcev.jpg', 'mirai_fcev2.jpg', 'mirai_fcev3.jpg', 'mirai_fcev4.jpg', 'Engine: Hydrogen Fuel Cell, Horsepower: 182 hp, Fuel Efficiency: 66.8 MPGe, Dimensions: 192.5\" L x 71.9\" W x 58.5\" H', '2023-06-13 08:21:10', NULL),
(29, 'Toyota', 'Toyota', 'Hiace', 'hiace.jpg', 'hiace2.jpg', 'hiace3.jpg', 'hiace4.jpg', 'Engine: 2.8L 4-cylinder Diesel, Horsepower: 161 hp, Fuel Efficiency: 32.1 mpg, Dimensions: 195.7\" L x 70.3\" W x 75.2\" H', '2023-06-13 08:21:10', NULL),
(30, 'Toyota', 'Toyota', 'Urban Cruiser', 'urban_cruiser.jpg', 'urban_cruiser2.jpg', 'urban_cruiser3.jpg', 'urban_cruiser4.jpg', 'Engine: 1.5L 4-cylinder, Horsepower: 101 hp, Fuel Efficiency: 44.1 mpg, Dimensions: 157.3\" L x 66.7\" W x 61.6\" H', '2023-06-13 08:21:10', NULL),
(31, 'Toyota', 'Toyota', 'Century GRMN', 'century_grmn.jpg', 'century_grmn2.jpg', 'century_grmn3.jpg', 'century_grmn4.jpg', 'Engine: 5.0L V8 Hybrid, Horsepower: 425 hp, Fuel Efficiency: 13.6 km/L, Dimensions: 204.7\" L x 76.8\" W x 60.8\" H', '2023-06-13 08:21:10', NULL),
(32, 'Toyota', 'Toyota', 'Sienta', 'sienta.jpg', 'sienta2.jpg', 'sienta3.jpg', 'sienta4.jpg', 'Engine: 1.5L 4-cylinder Hybrid, Horsepower: 73 hp, Fuel Efficiency: 39.2 mpg, Dimensions: 169.3\" L x 66.9\" W x 66.9\" H', '2023-06-13 08:21:10', NULL),
(33, 'Toyota', 'Toyota', 'GR Yaris', 'gr_yaris.jpg', 'gr_yaris2.jpg', 'gr_yaris3.jpg', 'gr_yaris4.jpg', 'Engine: 1.6L 3-cylinder Turbocharged, Horsepower: 257 hp, Fuel Efficiency: 34.8 mpg, Dimensions: 157.3\" L x 70.9\" W x 57.9\" H', '2023-06-13 08:21:10', NULL),
(34, 'Toyota', 'Toyota', 'Pixis Joy', 'pixis_joy.jpg', 'pixis_joy2.jpg', 'pixis_joy3.jpg', 'pixis_joy4.jpg', 'Engine: 0.66L 3-cylinder, Horsepower: 51 hp, Fuel Efficiency: 46.1 mpg, Dimensions: 135.6\" L x 58.7\" W x 65.4\" H', '2023-06-13 08:21:10', NULL),
(35, 'Toyota', 'Toyota', 'GranAce', 'granace.jpg', 'granace2.jpg', 'granace3.jpg', 'granace4.jpg', 'Engine: 2.8L 4-cylinder Diesel, Horsepower: 161 hp, Fuel Efficiency: 31.7 mpg, Dimensions: 207.3\" L x 74.8\" W x 78\" H', '2023-06-13 08:21:10', NULL),
(36, 'Toyota', 'Toyota', 'Raize', 'raize.jpg', 'raize2.jpg', 'raize3.jpg', 'raize4.jpg', 'Engine: 1.0L 3-cylinder Turbocharged, Horsepower: 98 hp, Fuel Efficiency: 47.6 mpg, Dimensions: 156.7\" L x 66.7\" W x 63.4\" H', '2023-06-13 08:21:10', NULL),
(37, 'Toyota', 'Toyota', 'Avanza', 'avanza.jpg', 'avanza2.jpg', 'avanza3.jpg', 'avanza4.jpg', 'Engine: 1.5L 4-cylinder, Horsepower: 103 hp, Fuel Efficiency: 36.2 mpg, Dimensions: 166.7\" L x 65.4\" W x 66.9\" H', '2023-06-13 08:21:10', NULL),
(38, 'Toyota', 'Toyota', 'Tank', 'tank.jpg', 'tank2.jpg', 'tank3.jpg', 'tank4.jpg', 'Engine: 1.0L 3-cylinder Turbocharged, Horsepower: 97 hp, Fuel Efficiency: 45.6 mpg, Dimensions: 159.8\" L x 66.7\" W x 67.1\" H', '2023-06-13 08:21:10', NULL),
(39, 'Toyota', 'Toyota', 'Crown Athlete', 'crown_athlete.jpg', 'crown_athlete2.jpg', 'crown_athlete3.jpg', 'crown_athlete4.jpg', 'Engine: 2.5L 4-cylinder Hybrid, Horsepower: 226 hp, Fuel Efficiency: 43.2 mpg, Dimensions: 193.5\" L x 72.8\" W x 57.3\" H', '2023-06-13 08:21:10', NULL),
(40, 'Toyota', 'Toyota', 'Aqua', 'aqua.jpg', 'aqua2.jpg', 'aqua3.jpg', 'aqua4.jpg', 'Engine: 1.5L 4-cylinder Hybrid, Horsepower: 73 hp, Fuel Efficiency: 62.5 mpg, Dimensions: 157.3\" L x 66.7\" W x 59.1\" H', '2023-06-13 08:21:10', NULL),
(41, 'Toyota', 'Toyota', 'C-HR GR Sport', 'chr_gr_sport.jpg', 'chr_gr_sport2.jpg', 'chr_gr_sport3.jpg', 'chr_gr_sport4.jpg', 'Engine: 1.8L 4-cylinder Hybrid, Horsepower: 120 hp, Fuel Efficiency: 52.3 mpg, Dimensions: 171.2\" L x 70.7\" W x 61.6\" H', '2023-06-13 08:21:10', NULL),
(42, 'Toyota', 'Toyota', 'Proace Verso', 'proace_verso.jpg', 'proace_verso2.jpg', 'proace_verso3.jpg', 'proace_verso4.jpg', 'Engine: 2.0L 4-cylinder Diesel, Horsepower: 148 hp, Fuel Efficiency: 41.3 mpg, Dimensions: 187.8\" L x 74.4\" W x 75.2\" H', '2023-06-13 08:21:10', NULL),
(43, 'Toyota', 'Toyota', 'Camry Hybrid', 'camry_hybrid.jpg', 'camry_hybrid2.jpg', 'camry_hybrid3.jpg', 'camry_hybrid4.jpg', 'Engine: 2.5L 4-cylinder Hybrid, Horsepower: 208 hp, Fuel Efficiency: 52.4 mpg, Dimensions: 192.7\" L x 72.4\" W x 56.9\" H', '2023-06-13 08:21:10', NULL),
(44, 'Toyota', 'Toyota', 'Crown Royal Saloon', 'crown_royal_saloon.jpg', 'crown_royal_saloon2.jpg', 'crown_royal_saloon3.jpg', 'crown_royal_saloon4.jpg', 'Engine: 3.5L V6 Hybrid, Horsepower: 354 hp, Fuel Efficiency: 41.9 mpg, Dimensions: 193.5\" L x 72.8\" W x 57.1\" H', '2023-06-13 08:21:10', NULL),
(45, 'Toyota', 'Toyota', 'Coaster', 'coaster.jpg', 'coaster2.jpg', 'coaster3.jpg', 'coaster4.jpg', 'Engine: 4.0L V6 Petrol, Horsepower: 276 hp, Fuel Efficiency: 19.6 mpg, Dimensions: 233\" L x 79.9\" W x 108.7\" H', '2023-06-13 08:21:10', NULL),
(46, 'Toyota', 'Toyota', 'Crown Majesta', 'crown_majesta.jpg', 'crown_majesta2.jpg', 'crown_majesta3.jpg', 'crown_majesta4.jpg', 'Engine: 3.5L V6 Hybrid, Horsepower: 354 hp, Fuel Efficiency: 39.2 mpg, Dimensions: 199.2\" L x 74.8\" W x 57.3\" H', '2023-06-13 08:21:10', NULL),
(47, 'Toyota', 'Toyota', 'Proace City', 'proace_city.jpg', 'proace_city2.jpg', 'proace_city3.jpg', 'proace_city4.jpg', 'Engine: 1.5L 4-cylinder Diesel, Horsepower: 100 hp, Fuel Efficiency: 51.4 mpg, Dimensions: 181.7\" L x 84.6\" W x 72.6\" H', '2023-06-13 08:21:10', NULL),
(48, 'Toyota', 'Toyota', 'RAV4 PHEV', 'rav4_phev.jpg', 'rav4_phev2.jpg', 'rav4_phev3.jpg', 'rav4_phev4.jpg', 'Engine: 2.5L 4-cylinder Hybrid, Horsepower: 302 hp, Fuel Efficiency: 94.1 mpg, Dimensions: 180.9\" L x 73\" W x 67.1\" H', '2023-06-13 08:21:10', NULL),
(49, 'Toyota', 'Toyota', 'Dyna', 'dyna.jpg', 'dyna2.jpg', 'dyna3.jpg', 'dyna4.jpg', 'Engine: 3.0L 4-cylinder Diesel, Horsepower: 135 hp, Fuel Efficiency: 25.5 mpg, Dimensions: 201.2\" L x 75.6\" W x 110.2\" H', '2023-06-13 08:21:10', NULL),
(50, 'Toyota', 'Toyota', 'Corolla Cross', 'corolla_cross.jpg', 'corolla_cross2.jpg', 'corolla_cross3.jpg', 'corolla_cross4.jpg', 'Engine: 1.8L 4-cylinder Hybrid, Horsepower: 121 hp, Fuel Efficiency: 60.1 mpg, Dimensions: 175.8\" L x 71.1\" W x 62.6\" H', '2023-06-13 08:21:10', NULL),
(51, 'Toyota', 'Toyota', 'Supra GRMN', 'supra_grmn.jpg', 'supra_grmn2.jpg', 'supra_grmn3.jpg', 'supra_grmn4.jpg', 'Engine: 3.0L 6-cylinder Turbocharged, Horsepower: 382 hp, Fuel Efficiency: 24.8 mpg, Dimensions: 172.5\" L x 73\" W x 50.9\" H', '2023-06-13 08:21:10', NULL),
(52, 'Toyota', 'Toyota', 'Crown RS', 'crown_rs.jpg', 'crown_rs2.jpg', 'crown_rs3.jpg', 'crown_rs4.jpg', 'Engine: 2.0L 4-cylinder Turbocharged, Horsepower: 241 hp, Fuel Efficiency: 34.3 mpg, Dimensions: 193.5\" L x 72.8\" W x 57.5\" H', '2023-06-13 08:21:10', NULL),
(53, 'Toyota', 'Toyota', 'Camry GR Sport', 'camry_gr_sport.jpg', 'camry_gr_sport2.jpg', 'camry_gr_sport3.jpg', 'camry_gr_sport4.jpg', 'Engine: 2.5L 4-cylinder Hybrid, Horsepower: 208 hp, Fuel Efficiency: 47.9 mpg, Dimensions: 192.7\" L x 72.4\" W x 56.9\" H', '2023-06-13 08:21:10', NULL),
(54, 'Nissan', 'Nissan', 'Sentra', 'sentra.jpg', 'sentrafront.jpg', 'sentraback.jpg', 'sentraright.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 149 hp, Fuel Efficiency: 29 mpg city / 39 mpg highway, Dimensions: 182.7\" L x 71.5\" W x 57.3\" H', '2023-06-13 08:24:36', NULL),
(55, 'Nissan', 'Nissan', 'Altima', 'altima.jpg', 'altima2.jpg', 'altima3.jpg', 'altima4.jpg', 'Engine: 2.5L 4-cylinder, Horsepower: 188 hp, Fuel Efficiency: 28 mpg city / 39 mpg highway, Dimensions: 192.9\" L x 72.9\" W x 56.7\" H', '2023-06-13 08:24:36', NULL),
(56, 'Nissan', 'Nissan', 'Maxima', 'maxima.jpg', 'maxima2.jpg', 'maxima3.jpg', 'maxima4.jpg', 'Engine: 3.5L V6, Horsepower: 300 hp, Fuel Efficiency: 20 mpg city / 30 mpg highway, Dimensions: 192.8\" L x 73.2\" W x 56.5\" H', '2023-06-13 08:24:36', NULL),
(57, 'Nissan', 'Nissan', 'Rogue', 'rogue.jpg', 'rogue2.jpg', 'rogue3.jpg', 'rogue4.jpg', 'Engine: 2.5L 4-cylinder, Horsepower: 170 hp, Fuel Efficiency: 26 mpg city / 33 mpg highway, Dimensions: 183\" L x 72.4\" W x 66.3\" H', '2023-06-13 08:24:36', NULL),
(58, 'Nissan', 'Nissan', 'Murano', 'murano.jpg', 'murano2.jpg', 'murano3.jpg', 'murano4.jpg', 'Engine: 3.5L V6, Horsepower: 260 hp, Fuel Efficiency: 20 mpg city / 28 mpg highway, Dimensions: 192.8\" L x 75.4\" W x 67.8\" H', '2023-06-13 08:24:36', NULL),
(59, 'Nissan', 'Nissan', 'Pathfinder', 'pathfinder.jpg', 'pathfinder2.jpg', 'pathfinder3.jpg', 'pathfinder4.jpg', 'Engine: 3.5L V6, Horsepower: 284 hp, Fuel Efficiency: 19 mpg city / 26 mpg highway, Dimensions: 198.5\" L x 77.3\" W x 69.6\" H', '2023-06-13 08:24:36', NULL),
(60, 'Nissan', 'Nissan', 'Frontier', 'frontier.jpg', 'frontier2.jpg', 'frontier3.jpg', 'frontier4.jpg', 'Engine: 3.8L V6, Horsepower: 310 hp, Fuel Efficiency: 18 mpg city / 24 mpg highway, Dimensions: 205.5\" L x 72.8\" W x 73.9\" H', '2023-06-13 08:24:36', NULL),
(61, 'Nissan', 'Nissan', '370Z', '370z.jpg', '370z2.jpg', '370z3.jpg', '370z4.jpg', 'Engine: 3.7L V6, Horsepower: 332 hp, Fuel Efficiency: 18 mpg city / 26 mpg highway, Dimensions: 170.5\" L x 72.6\" W x 51.8\" H', '2023-06-13 08:24:36', NULL),
(62, 'Nissan', 'Nissan', 'GT-R', 'R32.jpg', 'R33.jpg', 'whiter34.jpg', 'nismor35.jpg', '\r\n1. R32 Skyline GT-R (1989-1994):\r\n- Engine: 2.6L turbocharged inline-six\r\n- Power: 276 hp\r\n- AWD system: ATTESA E-TS\r\n- Legendary performance and dominance in motorsports.\r\n<br>\r\n2. R33 Skyline GT-R (1995-1998):\r\n- Engine: 2.6L turbocharged inline-six\r\n- Power: 276 hp\r\n- Improved aerodynamics and chassis rigidity.\r\n<br>\r\n3. R34 Skyline GT-R (1999-2002):\r\n- Engine: 2.6L twin-turbocharged inline-six\r\n- Power: 276 hp (base) or 326 hp (V-Spec II Nür)\r\n- Advanced technology and iconic styling.\r\n- Featured in popular media, such as \"2 Fast 2 Furious.\"\r\n<br>\r\n4. R35 GT-R (2007-present):\r\n- Engine: 3.8L twin-turbocharged V6\r\n- Power: Varies by model, starting from 480 hp to over 600 hp (current models)\r\n- Advanced AWD system and cutting-edge technology.\r\n- Superb performance and lap times on the Nürburgring.\r\n', '2023-06-13 08:24:36', NULL),
(63, 'Nissan', 'Nissan', 'Leaf', 'leaffront.jpg', 'leaffront.jpg', 'leafleft.jpg', 'leafback.jpg', 'Engine: Electric Motor, Horsepower: 147 hp, Range: Up to 226 miles, Dimensions: 176.4\" L x 70.5\" W x 61.4\" H', '2023-06-13 08:24:36', NULL),
(64, 'Nissan', 'Nissan', 'Versa', 'versa.jpg', 'versa2.jpg', 'versa3.jpg', 'versa4.jpg', 'Engine: 1.6L 4-cylinder, Horsepower: 122 hp, Fuel Efficiency: 32 mpg city / 40 mpg highway, Dimensions: 177\" L x 68.5\" W x 57.3\" H', '2023-06-13 08:24:36', NULL),
(65, 'Nissan', 'Nissan', 'Juke', 'juke.jpg', 'juke2.jpg', 'juke3.jpg', 'juke4.jpg', 'Engine: 1.6L 4-cylinder, Horsepower: 188 hp, Fuel Efficiency: 27 mpg city / 31 mpg highway, Dimensions: 169.1\" L x 70.7\" W x 63.8\" H', '2023-06-13 08:24:36', NULL),
(66, 'Nissan', 'Nissan', 'Kicks', 'kicks.jpg', 'kicks2.jpg', 'kicks3.jpg', 'kicks4.jpg', 'Engine: 1.6L 4-cylinder, Horsepower: 122 hp, Fuel Efficiency: 31 mpg city / 36 mpg highway, Dimensions: 169.1\" L x 69.3\" W x 62.4\" H', '2023-06-13 08:24:36', NULL),
(67, 'Nissan', 'Nissan', 'Titan', 'titan.jpg', 'titanright.jpg', 'titanback.jpg', 'titanleft.jpg', 'Engine: 5.6L V8, Horsepower: 400 hp, Fuel Efficiency: 16 mpg city / 22 mpg highway, Dimensions: 228.5\" L x 79.5\" W x 75.2\" H', '2023-06-13 08:24:36', NULL),
(68, 'Nissan', 'Nissan', 'Armada', 'armada.jpg', 'armada2.jpg', 'armada3.jpg', 'armada4.jpg', 'Engine: 5.6L V8, Horsepower: 400 hp, Fuel Efficiency: 14 mpg city / 19 mpg highway, Dimensions: 208.9\" L x 79.9\" W x 75.8\" H', '2023-06-13 08:24:36', NULL),
(69, 'Mitsubishi', 'Mitsubishi', 'ASX', 'asx.jpg', 'asx2.jpg', 'asx3.jpg', 'asx4.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 148 hp, Fuel Efficiency: 23 mpg city / 29 mpg highway, Dimensions: 171.5\" L x 71.3\" W x 64.8\" H', '2023-06-13 08:37:29', NULL),
(70, 'Mitsubishi', 'Mitsubishi', 'Pajero', 'pajero.jpg', 'pajero2.jpg', 'pajero3.jpg', 'pajero4.jpg', 'Engine: 3.2L 4-cylinder, Horsepower: 187 hp, Fuel Efficiency: 19 mpg city / 26 mpg highway, Dimensions: 189\" L x 74.8\" W x 73.8\" H', '2023-06-13 08:37:29', NULL),
(71, 'Mitsubishi', 'Mitsubishi', 'Attrage', 'attrage.jpg', 'attrage2.jpg', 'attrage3.jpg', 'attrage4.jpg', 'Engine: 1.2L 3-cylinder, Horsepower: 78 hp, Fuel Efficiency: 36 mpg city / 44 mpg highway, Dimensions: 168.5\" L x 65.5\" W x 58.7\" H', '2023-06-13 08:37:29', NULL),
(72, 'Mitsubishi', 'Mitsubishi', 'Outlander PHEV', 'outlanderphev.jpg', 'outlanderphev2.jpg', 'outlanderphev3.jpg', 'outlanderphev4.jpg', 'Engine: 2.4L 4-cylinder Plug-in Hybrid, Horsepower: 126 hp, Fuel Efficiency: 74 MPGe, Dimensions: 184.8\" L x 70.9\" W x 67.3\" H', '2023-06-13 08:37:29', NULL),
(73, 'Mitsubishi', 'Mitsubishi', 'Eclipse Cross PHEV', 'eclipsecrossphev.jpg', 'eclipsecrossphev2.jpg', 'eclipsecrossphev3.jpg', 'eclipsecrossphev4.jpg', 'Engine: 2.4L 4-cylinder Plug-in Hybrid, Horsepower: 126 hp, Fuel Efficiency: 74 MPGe, Dimensions: 173.4\" L x 71.1\" W x 66.3\" H', '2023-06-13 08:37:29', NULL),
(74, 'Mitsubishi', 'Mitsubishi', 'Galant', 'galant.jpg', 'galant2.jpg', 'galant3.jpg', 'galant4.jpg', 'Engine: 2.4L 4-cylinder, Horsepower: 168 hp, Fuel Efficiency: 21 mpg city / 29 mpg highway, Dimensions: 190.2\" L x 72.4\" W x 57.7\" H', '2023-06-13 08:37:29', NULL),
(75, 'Mitsubishi', 'Mitsubishi', 'Space Star', 'spacestar.jpg', 'spacestar2.jpg', 'spacestar3.jpg', 'spacestar4.jpg', 'Engine: 1.2L 3-cylinder, Horsepower: 79 hp, Fuel Efficiency: 41 mpg city / 49 mpg highway, Dimensions: 149.6\" L x 65.6\" W x 58.7\" H', '2023-06-13 08:37:29', NULL),
(76, 'Mitsubishi', 'Mitsubishi', 'Outlander Sport', 'outlandersport.jpg', 'outlandersport2.jpg', 'outlandersport3.jpg', 'outlandersport4.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 148 hp, Fuel Efficiency: 24 mpg city / 30 mpg highway, Dimensions: 171.9\" L x 71.3\" W x 64.8\" H', '2023-06-13 08:37:29', NULL),
(77, 'Mitsubishi', 'Mitsubishi', 'Mirage G4', 'mirageg4.jpg', 'mirageg4_2.jpg', 'mirageg4_3.jpg', 'mirageg4_4.jpg', 'Engine: 1.2L 3-cylinder, Horsepower: 78 hp, Fuel Efficiency: 35 mpg city / 41 mpg highway, Dimensions: 169.5\" L x 66.7\" W x 59.2\" H', '2023-06-13 08:37:29', NULL),
(78, 'Mitsubishi', 'Mitsubishi', 'Lancer', 'lancer.jpg', 'lancer2.jpg', 'lancer3.jpg', 'lancer4.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 148 hp, Fuel Efficiency: 27 mpg city / 34 mpg highway, Dimensions: 182.7\" L x 69.4\" W x 58.7\" H', '2023-06-13 08:37:29', NULL),
(79, 'Mitsubishi', 'Mitsubishi', 'Triton', 'triton.jpg', 'triton2.jpg', 'triton3.jpg', 'triton4.jpg', 'Engine: 2.4L 4-cylinder, Horsepower: 126 hp, Fuel Efficiency: 22 mpg city / 30 mpg highway, Dimensions: 210.2\" L x 73.8\" W x 70.1\" H', '2023-06-13 08:37:29', NULL),
(80, 'Mazda', 'Mazda', 'CX-5', 'cx5.jpg', 'cx5_2.jpg', 'cx5_3.jpg', 'cx5_4.jpg', 'Engine: 2.5L 4-cylinder, Horsepower: 187 hp, Fuel Efficiency: 25 mpg city / 31 mpg highway, Dimensions: 179.1\" L x 72.5\" W x 66.5\" H', '2023-06-13 08:39:33', NULL),
(81, 'Mazda', 'Mazda', 'CX-9', 'cx9.jpg', 'cx9_2.jpg', 'cx9_3.jpg', 'cx9_4.jpg', 'Engine: 2.5L 4-cylinder, Horsepower: 227 hp, Fuel Efficiency: 22 mpg city / 28 mpg highway, Dimensions: 199.4\" L x 77.5\" W x 67.6\" H', '2023-06-13 08:39:33', NULL),
(82, 'Mazda', 'Mazda', 'RX-7', 'rx7.jpg', 'rx7_2.jpg', 'rx7_3.jpg', 'rx7_4.jpg', 'Engine: 1.3L Rotary, Horsepower: 276 hp, Fuel Efficiency: N/A, Dimensions: 168.5\" L x 69.1\" W x 48.8\" H', '2023-06-13 08:39:33', NULL),
(83, 'Mazda', 'Mazda', 'CX-4', 'cx4.jpg', 'cx4_2.jpg', 'cx4_3.jpg', 'cx4_4.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 158 hp, Fuel Efficiency: 23 mpg city / 30 mpg highway, Dimensions: 174.2\" L x 72.4\" W x 62.6\" H', '2023-06-13 08:39:33', NULL),
(84, 'Mazda', 'Mazda', 'RX-8', 'rx8.jpg', 'rx8_2.jpg', 'rx8_3.jpg', 'rx8_4.jpg', 'Engine: 1.3L Rotary, Horsepower: 232 hp, Fuel Efficiency: 16 mpg city / 23 mpg highway, Dimensions: 174.3\" L x 69.7\" W x 52.8\" H', '2023-06-13 08:39:33', NULL),
(85, 'Mazda', 'Mazda', 'CX-7', 'cx7.jpg', 'cx7_2.jpg', 'cx7_3.jpg', 'cx7_4.jpg', 'Engine: 2.3L 4-cylinder, Horsepower: 244 hp, Fuel Efficiency: 17 mpg city / 23 mpg highway, Dimensions: 184.1\" L x 73.7\" W x 64.8\" H', '2023-06-13 08:39:33', NULL),
(86, 'Mazda', 'Mazda', 'Bongo', 'bongo.jpg', 'bongo2.jpg', 'bongo3.jpg', 'bongo4.jpg', 'Engine: 1.8L 4-cylinder, Horsepower: 83 hp, Fuel Efficiency: 17 mpg city / 25 mpg highway, Dimensions: 176\" L x 63.8\" W x 77.2\" H', '2023-06-13 08:39:33', NULL),
(87, 'Mazda', 'Mazda', 'Mazda3', 'mazda3.jpg', 'mazda3_2.jpg', 'mazda3_3.jpg', 'mazda3_4.jpg', 'Engine: 2.5L 4-cylinder, Horsepower: 186 hp, Fuel Efficiency: 28 mpg city / 36 mpg highway, Dimensions: 183.5\" L x 70.7\" W x 56.9\" H', '2023-06-13 08:39:33', NULL),
(88, 'Mazda', 'Mazda', 'Mazda6', 'mazda6.jpg', 'mazda6_2.jpg', 'mazda6_3.jpg', 'mazda6_4.jpg', 'Engine: 2.5L 4-cylinder, Horsepower: 187 hp, Fuel Efficiency: 26 mpg city / 35 mpg highway, Dimensions: 192.7\" L x 72.4\" W x 57.1\" H', '2023-06-13 08:39:33', NULL),
(89, 'Mazda', 'Mazda', 'CX-3', 'cx3.jpg', 'cx3_2.jpg', 'cx3_3.jpg', 'cx3_4.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 148 hp, Fuel Efficiency: 29 mpg city / 34 mpg highway, Dimensions: 168.3\" L x 69.6\" W x 60.7\" H', '2023-06-13 08:39:33', NULL),
(90, 'Mazda', 'Mazda', 'CX-30', 'cx30.jpg', 'cx30_2.jpg', 'cx30_3.jpg', 'cx30_4.jpg', 'Engine: 2.5L 4-cylinder, Horsepower: 186 hp, Fuel Efficiency: 25 mpg city / 33 mpg highway, Dimensions: 173\" L x 70.7\" W x 61.7\" H', '2023-06-13 08:39:33', NULL),
(91, 'Mazda', 'Mazda', 'MX-5 Miata', 'mx5miata.jpg', 'mx5miata2.jpg', 'mx5miata3.jpg', 'mx5miata4.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 181 hp, Fuel Efficiency: 26 mpg city / 34 mpg highway, Dimensions: 154.1\" L x 68.3\" W x 48.6\" H', '2023-06-13 08:39:33', NULL),
(92, 'Lamborghini', 'Lamborghini', 'Huracan', 'huracan.jpg', 'huracan2.jpg', 'huracan3.jpg', 'huracan4.jpg', 'Engine: 5.2L V10, Horsepower: 602 hp, Fuel Efficiency: 13 mpg city / 18 mpg highway, Dimensions: 175.6\" L x 88.1\" W x 45.9\" H', '2023-06-13 09:02:06', NULL),
(93, 'Lamborghini', 'Lamborghini', 'Aventador', 'aventador.jpg', 'aventador2.jpg', 'aventador3.jpg', 'aventador4.jpg', 'Engine: 6.5L V12, Horsepower: 729 hp, Fuel Efficiency: 9 mpg city / 15 mpg highway, Dimensions: 194.6\" L x 79.9\" W x 44.7\" H', '2023-06-13 09:02:06', NULL),
(94, 'Lamborghini', 'Lamborghini', 'Urus', 'urus.jpg', 'urus2.jpg', 'urus3.jpg', 'urus4.jpg', 'Engine: 4.0L V8, Horsepower: 641 hp, Fuel Efficiency: 12 mpg city / 17 mpg highway, Dimensions: 201.3\" L x 85.8\" W x 64.5\" H', '2023-06-13 09:02:06', NULL),
(95, 'Bentley', 'Bentley', 'Continental GT', 'continentalgt.jpg', 'continentalgt2.jpg', 'continentalgt3.jpg', 'continentalgt4.jpg', 'Engine: 4.0L V8, Horsepower: 542 hp, Fuel Efficiency: 16 mpg city / 26 mpg highway, Dimensions: 190.9\" L x 77.3\" W x 55.3\" H', '2023-06-13 09:02:06', NULL),
(96, 'Bentley', 'Bentley', 'Bentayga', 'bentayga.jpg', 'bentayga2.jpg', 'bentayga3.jpg', 'bentayga4.jpg', 'Engine: 4.0L V8, Horsepower: 542 hp, Fuel Efficiency: 14 mpg city / 23 mpg highway, Dimensions: 202.4\" L x 78.7\" W x 68.6\" H', '2023-06-13 09:02:06', NULL),
(97, 'Bentley', 'Bentley', 'Flying Spur', 'flyingspur.jpg', 'flyingspur2.jpg', 'flyingspur3.jpg', 'flyingspur4.jpg', 'Engine: 4.0L V8, Horsepower: 542 hp, Fuel Efficiency: 15 mpg city / 24 mpg highway, Dimensions: 209.3\" L x 77.8\" W x 58.2\" H', '2023-06-13 09:02:06', NULL),
(98, 'BMW', 'BMW', '3 Series', '3series.jpg', '3series2.jpg', '3series3.jpg', '3series4.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 255 hp, Fuel Efficiency: 26 mpg city / 36 mpg highway, Dimensions: 185.7\" L x 71.9\" W x 56.8\" H', '2023-06-13 09:02:06', NULL),
(99, 'BMW', 'BMW', '5 Series', '5series.jpg', '5series2.jpg', '5series3.jpg', '5series4.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 248 hp, Fuel Efficiency: 26 mpg city / 36 mpg highway, Dimensions: 195.4\" L x 73.5\" W x 58.2\" H', '2023-06-13 09:02:06', NULL),
(100, 'BMW', 'BMW', 'X5', 'x5.jpg', 'x5_2.jpg', 'x5_3.jpg', 'x5_4.jpg', 'Engine: 3.0L 6-cylinder, Horsepower: 335 hp, Fuel Efficiency: 21 mpg city / 26 mpg highway, Dimensions: 194.3\" L x 78.9\" W x 69\" H', '2023-06-13 09:02:06', NULL),
(101, 'Audi', 'Audi', 'A4', 'a4.jpg', 'a4_2.jpg', 'a4_3.jpg', 'a4_4.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 201 hp, Fuel Efficiency: 25 mpg city / 34 mpg highway, Dimensions: 187.5\" L x 72.7\" W x 56.2\" H', '2023-06-13 09:02:06', NULL),
(102, 'Audi', 'Audi', 'Q5', 'q5.jpg', 'q5_2.jpg', 'q5_3.jpg', 'q5_4.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 261 hp, Fuel Efficiency: 23 mpg city / 28 mpg highway, Dimensions: 184.3\" L x 74.5\" W x 65.3\" H', '2023-06-13 09:02:06', NULL),
(103, 'Audi', 'Audi', 'Q7', 'q7.jpg', 'q7_2.jpg', 'q7_3.jpg', 'q7_4.jpg', 'Engine: 3.0L 6-cylinder, Horsepower: 335 hp, Fuel Efficiency: 19 mpg city / 23 mpg highway, Dimensions: 199.6\" L x 77.6\" W x 68.5\" H', '2023-06-13 09:02:06', NULL),
(104, 'Volkswagen', 'Volkswagen', 'Golf', 'golf.jpg', 'golf2.jpg', 'golf3.jpg', 'golf4.jpg', 'Engine: 1.4L 4-cylinder, Horsepower: 147 hp, Fuel Efficiency: 29 mpg city / 39 mpg highway, Dimensions: 167.8\" L x 70.8\" W x 58.2\" H', '2023-06-13 09:02:06', NULL),
(105, 'Volkswagen', 'Volkswagen', 'Tiguan', 'tiguan.jpg', 'tiguan2.jpg', 'tiguan3.jpg', 'tiguan4.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 184 hp, Fuel Efficiency: 23 mpg city / 29 mpg highway, Dimensions: 185.1\" L x 72.4\" W x 66.3\" H', '2023-06-13 09:02:06', NULL),
(106, 'Volkswagen', 'Volkswagen', 'Atlas', 'atlas.jpg', 'atlas2.jpg', 'atlas3.jpg', 'atlas4.jpg', 'Engine: 3.6L V6, Horsepower: 276 hp, Fuel Efficiency: 17 mpg city / 23 mpg highway, Dimensions: 198.3\" L x 78.3\" W x 70\" H', '2023-06-13 09:02:06', NULL),
(107, 'Rolls-Royce', 'Rolls-Royce', 'Phantom', 'phantom.jpg', 'phantom2.jpg', 'phantom3.jpg', 'phantom4.jpg', 'Engine: 6.8L V12, Horsepower: 563 hp, Fuel Efficiency: 12 mpg city / 20 mpg highway, Dimensions: 227.2\" L x 79.5\" W x 64.8\" H', '2023-06-13 09:02:06', NULL),
(108, 'Rolls-Royce', 'Rolls-Royce', 'Cullinan', 'cullinan.jpg', 'cullinan2.jpg', 'cullinan3.jpg', 'cullinan4.jpg', 'Engine: 6.8L V12, Horsepower: 563 hp, Fuel Efficiency: 12 mpg city / 20 mpg highway, Dimensions: 210.3\" L x 79.8\" W x 72.2\" H', '2023-06-13 09:02:06', NULL),
(109, 'Rolls-Royce', 'Rolls-Royce', 'Wraith', 'wraith.jpg', 'wraith2.jpg', 'wraith3.jpg', 'wraith4.jpg', 'Engine: 6.6L V12, Horsepower: 624 hp, Fuel Efficiency: 12 mpg city / 18 mpg highway, Dimensions: 208.1\" L x 76.7\" W x 59.3\" H', '2023-06-13 09:02:06', NULL),
(110, 'Ferrari', 'Ferrari', '488 GTB', '488gtb.jpg', '488gtb2.jpg', '488gtb3.jpg', '488gtb4.jpg', 'Engine: 3.9L V8, Horsepower: 661 hp, Fuel Efficiency: 15 mpg city / 22 mpg highway, Dimensions: 179.8\" L x 76.9\" W x 47.8\" H', '2023-06-13 09:05:27', NULL),
(111, 'Ferrari', 'Ferrari', '812 Superfast', '812superfast.jpg', '812superfast2.jpg', '812superfast3.jpg', '812superfast4.jpg', 'Engine: 6.5L V12, Horsepower: 789 hp, Fuel Efficiency: 12 mpg city / 16 mpg highway, Dimensions: 183.3\" L x 77.6\" W x 50.2\" H', '2023-06-13 09:05:27', NULL),
(112, 'Ferrari', 'Ferrari', 'F8 Tributo', 'f8tributo.jpg', 'f8tributo2.jpg', 'f8tributo3.jpg', 'f8tributo4.jpg', 'Engine: 3.9L V8, Horsepower: 710 hp, Fuel Efficiency: 15 mpg city / 19 mpg highway, Dimensions: 181.5\" L x 77.9\" W x 47.8\" H', '2023-06-13 09:05:27', NULL),
(113, 'Bugatti', 'Bugatti', 'Chiron', 'chiron.jpg', 'chiron2.jpg', 'chiron3.jpg', 'chiron4.jpg', 'Engine: 8.0L Quad-Turbo W16, Horsepower: 1479 hp, Fuel Efficiency: 9 mpg city / 14 mpg highway, Dimensions: 178.9\" L x 80.2\" W x 47.7\" H', '2023-06-13 09:05:27', NULL),
(114, 'Bugatti', 'Bugatti', 'Veyron', 'veyron.jpg', 'veyron2.jpg', 'veyron3.jpg', 'veyron4.jpg', 'Engine: 8.0L Quad-Turbo W16, Horsepower: 987 hp, Fuel Efficiency: 8 mpg city / 15 mpg highway, Dimensions: 175.7\" L x 78.7\" W x 47.4\" H', '2023-06-13 09:05:27', NULL),
(115, 'Bugatti', 'Bugatti', 'Divo', 'divo.jpg', 'divo2.jpg', 'divo3.jpg', 'divo4.jpg', 'Engine: 8.0L Quad-Turbo W16, Horsepower: 1479 hp, Fuel Efficiency: 9 mpg city / 14 mpg highway, Dimensions: 181.6\" L x 80.9\" W x 47.7\" H', '2023-06-13 09:05:27', NULL),
(116, 'Acura', 'Acura', 'TLX', 'tlx.jpg', 'tlx2.jpg', 'tlx3.jpg', 'tlx4.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 272 hp, Fuel Efficiency: 22 mpg city / 31 mpg highway, Dimensions: 194.6\" L x 75.2\" W x 57\" H', '2023-06-13 09:05:27', NULL),
(117, 'Acura', 'Acura', 'MDX', 'mdx.jpg', 'mdx2.jpg', 'mdx3.jpg', 'mdx4.jpg', 'Engine: 3.5L V6, Horsepower: 290 hp, Fuel Efficiency: 19 mpg city / 26 mpg highway, Dimensions: 198.2\" L x 78.7\" W x 67.1\" H', '2023-06-13 09:05:27', NULL),
(118, 'Acura', 'Acura', 'RDX', 'rdx.jpg', 'rdx2.jpg', 'rdx3.jpg', 'rdx4.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 272 hp, Fuel Efficiency: 22 mpg city / 28 mpg highway, Dimensions: 186.7\" L x 74.8\" W x 65.7\" H', '2023-06-13 09:05:27', NULL),
(119, 'Honda', 'Honda', 'Civic', 'civic.jpg', 'civic2.jpg', 'civic3.jpg', 'civic4.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 158 hp, Fuel Efficiency: 31 mpg city / 40 mpg highway, Dimensions: 182.7\" L x 70.9\" W x 55.7\" H', '2023-06-13 09:05:27', NULL),
(120, 'Honda', 'Honda', 'Accord', 'accord.jpg', 'accord2.jpg', 'accord3.jpg', 'accord4.jpg', 'Engine: 1.5L 4-cylinder, Horsepower: 192 hp, Fuel Efficiency: 30 mpg city / 38 mpg highway, Dimensions: 192.2\" L x 73.3\" W x 57.1\" H', '2023-06-13 09:05:27', NULL),
(121, 'Honda', 'Honda', 'CR-V', 'crv.jpg', 'crv2.jpg', 'crv3.jpg', 'crv4.jpg', 'Engine: 1.5L 4-cylinder, Horsepower: 190 hp, Fuel Efficiency: 28 mpg city / 34 mpg highway, Dimensions: 182.1\" L x 73\" W x 66.1\" H', '2023-06-13 09:05:27', NULL),
(122, 'Hyundai', 'Hyundai', 'Elantra', 'elantra.jpg', 'elantra2.jpg', 'elantra3.jpg', 'elantra4.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 147 hp, Fuel Efficiency: 33 mpg city / 43 mpg highway, Dimensions: 184.1\" L x 71.9\" W x 55.7\" H', '2023-06-13 09:05:27', NULL),
(123, 'Hyundai', 'Hyundai', 'Sonata', 'sonata.jpg', 'sonata2.jpg', 'sonata3.jpg', 'sonata4.jpg', 'Engine: 2.5L 4-cylinder, Horsepower: 191 hp, Fuel Efficiency: 28 mpg city / 38 mpg highway, Dimensions: 192.9\" L x 73.2\" W x 56.9\" H', '2023-06-13 09:05:27', NULL),
(124, 'Hyundai', 'Hyundai', 'Tucson', 'tucson.jpg', 'tucson2.jpg', 'tucson3.jpg', 'tucson4.jpg', 'Engine: 2.5L 4-cylinder, Horsepower: 187 hp, Fuel Efficiency: 23 mpg city / 31 mpg highway, Dimensions: 182.3\" L x 73.4\" W x 65.6\" H', '2023-06-13 09:05:27', NULL),
(125, 'Kia', 'Kia', 'Forte', 'forte.jpg', 'forte2.jpg', 'forte3.jpg', 'forte4.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 147 hp, Fuel Efficiency: 31 mpg city / 41 mpg highway, Dimensions: 182.7\" L x 70.9\" W x 56.5\" H', '2023-06-13 09:05:27', NULL),
(126, 'Kia', 'Kia', 'Optima', 'optima.jpg', 'optima2.jpg', 'optima3.jpg', 'optima4.jpg', 'Engine: 2.5L 4-cylinder, Horsepower: 191 hp, Fuel Efficiency: 27 mpg city / 37 mpg highway, Dimensions: 191.1\" L x 73.2\" W x 56.9\" H', '2023-06-13 09:05:27', NULL),
(127, 'Kia', 'Kia', 'Sorento', 'sorento.jpg', 'sorento2.jpg', 'sorento3.jpg', 'sorento4.jpg', 'Engine: 2.5L 4-cylinder, Horsepower: 191 hp, Fuel Efficiency: 24 mpg city / 29 mpg highway, Dimensions: 189.8\" L x 74.8\" W x 66.9\" H', '2023-06-13 09:05:27', NULL),
(128, 'Chevrolet', 'Chevrolet', 'Camaro', 'camaro.jpg', 'camaro2.jpg', 'camaro3.jpg', 'camaro4.jpg', 'Engine: 2.0L 4-cylinder, Horsepower: 275 hp, Fuel Efficiency: 20 mpg city / 30 mpg highway, Dimensions: 188.3\" L x 74.7\" W x 53.1\" H', '2023-06-13 09:05:27', NULL),
(129, 'Chevrolet', 'Chevrolet', 'Malibu', 'malibu.jpg', 'malibu2.jpg', 'malibu3.jpg', 'malibu4.jpg', 'Engine: 1.5L 4-cylinder, Horsepower: 160 hp, Fuel Efficiency: 29 mpg city / 36 mpg highway, Dimensions: 194.2\" L x 73\" W x 57.9\" H', '2023-06-13 09:05:27', NULL),
(130, 'Chevrolet', 'Chevrolet', 'Silverado 1500', 'silverado1500.jpg', 'silverado1500_2.jpg', 'silverado1500_3.jpg', 'silverado1500_4.jpg', 'Engine: 4.3L V6, Horsepower: 285 hp, Fuel Efficiency: 16 mpg city / 21 mpg highway, Dimensions: 229.5\" L x 81.2\" W x 75.6\" H', '2023-06-13 09:05:27', NULL),
(131, 'Dodge', 'Dodge', 'Challenger', 'challenger.jpg', 'challenger2.jpg', 'challenger3.jpg', 'challenger4.jpg', 'Engine: 3.6L V6, Horsepower: 305 hp, Fuel Efficiency: 19 mpg city / 30 mpg highway, Dimensions: 197.9\" L x 75.7\" W x 57.5\" H', '2023-06-13 09:05:27', NULL),
(132, 'Dodge', 'Dodge', 'Charger', 'charger.jpg', 'charger2.jpg', 'charger3.jpg', 'charger4.jpg', 'Engine: 3.6L V6, Horsepower: 292 hp, Fuel Efficiency: 19 mpg city / 30 mpg highway, Dimensions: 201\" L x 75\" W x 58.2\" H', '2023-06-13 09:05:27', NULL),
(133, 'Dodge', 'Dodge', 'Durango', 'durango.jpg', 'durango2.jpg', 'durango3.jpg', 'durango4.jpg', 'Engine: 3.6L V6, Horsepower: 295 hp, Fuel Efficiency: 19 mpg city / 26 mpg highway, Dimensions: 201.2\" L x 75.8\" W x 70.9\" H', '2023-06-13 09:05:27', NULL),
(134, 'Ford', 'Ford', 'Mustang', 'mustang.jpg', 'mustang2.jpg', 'mustang3.jpg', 'mustang4.jpg', 'Engine: 2.3L 4-cylinder, Horsepower: 310 hp, Fuel Efficiency: 21 mpg city / 31 mpg highway, Dimensions: 188.5\" L x 75.4\" W x 54.3\" H', '2023-06-13 09:05:27', NULL),
(135, 'Ford', 'Ford', 'Fusion', 'fusion.jpg', 'fusion2.jpg', 'fusion3.jpg', 'fusion4.jpg', 'Engine: 2.5L 4-cylinder, Horsepower: 175 hp, Fuel Efficiency: 21 mpg city / 31 mpg highway, Dimensions: 191.8\" L x 72.2\" W x 58.2\" H', '2023-06-13 09:05:27', NULL),
(136, 'Ford', 'Ford', 'Explorer', 'explorer.jpg', 'explorer2.jpg', 'explorer3.jpg', 'explorer4.jpg', 'Engine: 2.3L 4-cylinder, Horsepower: 300 hp, Fuel Efficiency: 21 mpg city / 28 mpg highway, Dimensions: 198.8\" L x 78.9\" W x 69.9\" H', '2023-06-13 09:05:27', NULL),
(137, 'BMW', 'BMW', '1 Series', '1series.jpg', '1series2.jpg', '1series4.jpg', '1series3.jpg', 'BMW 1 Series:\r\nBody Style: Hatchback\r\nEngine Options: 1.5L 3-cylinder, 2.0L 4-cylinder\r\nPower Output: Range from around 109 horsepower to 306 horsepower\r\nTransmission: 6-speed manual or 7/8-speed automatic\r\nDrivetrain: Rear-wheel drive or all-wheel drive (xDrive)\r\nFeatures: Agile handling, compact size, advanced infotainment system', '2023-06-14 13:54:25', NULL),
(138, 'BMW', 'BMW', '2 Series', '2series2.jpg', '2series3.jpg', '2seriesside.jpg', '2series5.jpg', 'BMW 2 Series:\r\nBody Style: Coupe, Convertible\r\nEngine Options: 2.0L 4-cylinder, 3.0L 6-cylinder\r\nPower Output: Range from around 181 horsepower to 405 horsepower\r\nTransmission: 6-speed manual or 7/8-speed automatic\r\nDrivetrain: Rear-wheel drive or all-wheel drive (xDrive)\r\nFeatures: Sporty design, precise handling, driver-focused cockpit', '2023-06-14 13:55:40', NULL),
(139, 'BMW', 'BMW', '3 Series', '3series.jpg', '3series2.jpg', '3series4.jpg', '3series3.jpg', 'BMW 3 Series:\r\nBody Style: Sedan, Wagon\r\nEngine Options: 2.0L 4-cylinder, 3.0L 6-cylinder\r\nPower Output: Range from around 180 horsepower to 503 horsepower\r\nTransmission: 6-speed manual or 8-speed automatic\r\nDrivetrain: Rear-wheel drive or all-wheel drive (xDrive)\r\nFeatures: Dynamic performance, luxurious interior, advanced technology', '2023-06-14 13:57:28', NULL),
(140, 'BMW', 'BMW', 'M4', 'm4.jpg', 'm4front.jpg', 'm4side.jpg', 'm4rear.jpg', 'BMW M4:\r\nBody Style: Coupe, Convertible\r\nEngine: 3.0L inline-6 turbocharged\r\nPower Output: Range from around 473 horsepower to 503 horsepower\r\nTransmission: 6-speed manual or 8-speed automatic\r\nDrivetrain: Rear-wheel drive or all-wheel drive (xDrive)\r\nFeatures: Aggressive design, exceptional performance, advanced M-specific features', '2023-06-14 13:58:47', NULL),
(141, 'BMW', 'BMW', 'M5', 'm5black.jpg', 'm5V10.jpg', 'm5white.jpg', 'm5side.jpg', 'BMW M5:\r\nBody Style: Sedan\r\nEngine: 4.4L V8 twin-turbocharged\r\nPower Output: Range from around 600 horsepower to 617 horsepower\r\nTransmission: 8-speed automatic\r\nDrivetrain: Rear-wheel drive or all-wheel drive (xDrive)\r\nFeatures: Super sedan with remarkable performance, luxurious amenities, cutting-edge technology', '2023-06-14 14:00:13', NULL),
(142, 'BMW', 'BMW', 'i8', 'i8.jpg', 'i8emblem.jpg', 'i8interior.jpg', 'i8rear.jpg', 'BMW i8:\r\nBody Style: Plug-in Hybrid Sports Car\r\nEngine Options: 1.5L 3-cylinder turbocharged engine combined with electric motor\r\nPower Output: Range from around 369 horsepower to 369 horsepower\r\nTransmission: 6-speed automatic\r\nDrivetrain: All-wheel drive\r\nFeatures: Futuristic design, high-performance hybrid powertrain, innovative technologies', '2023-06-14 14:08:53', NULL),
(143, 'Porsche', 'Porsche', 'Gt3 Rs', 'wallpaperflare.com_wallpaper (4).jpg', 'wallpaperflare.com_wallpaper (5).jpg', 'wallpaperflare.com_wallpaper (6).jpg', 'wallpaperflare.com_wallpaper (7).jpg', 'place holder', '2023-06-17 07:08:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `car_problems`
--

CREATE TABLE `car_problems` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `car_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_problems`
--

INSERT INTO `car_problems` (`id`, `user_id`, `description`, `created_at`, `car_id`) VALUES
(1, 1, 'My car leaks oil everytime I park it. It also has an issue with its brakes too.', '2023-06-14 13:07:56', 2),
(2, 3, 'Knocked engine\r\n', '2023-06-17 06:44:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_admin`
--

CREATE TABLE `contact_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_admin`
--

INSERT INTO `contact_admin` (`id`, `username`, `subject`, `message`, `user_id`) VALUES
(1, '', 'new message', 'newer message', NULL),
(2, 'geoffreyNderitu', 'another message', 'another new message', NULL),
(3, 'geoffreyNderitu', 'new message', 'this is a test', 3),
(4, 'test1', 'Hey', 'Message', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `message`, `user_id`, `message_id`) VALUES
(1, '', 3, 2),
(2, '', 3, 2),
(3, 'we see', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `solutions`
--

CREATE TABLE `solutions` (
  `id` int(11) NOT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `role_id`) VALUES
(1, 'newuser', 'newuser@cars.com', '$2y$10$DOIiJJn.6BCxkPMuBK4D9e2UHQI3Y8TdAcBLiQoBeor7YlGPauI12', '2023-06-07 12:28:18', NULL),
(2, 'admin', 'admin@carventory.com', '$2y$10$cuCRrLpplU3HJqiAYn/ihevV93qZXCmwY4hhOf9UOOjN3p/msnjUG', '2023-06-12 13:49:19', 1),
(3, 'geoffreyNderitu', 'geoffrey@carVentory.com', '$2y$10$MHKUGTzb3EHZcQEUIDG4WuUu4sQ5U/dXIFgQWYPGP7IZHVmEcQGGK', '2023-06-12 15:52:00', 1),
(4, 'test1', 'test1@gmail.com', '$2y$10$4vqUhflxV.tToaH7p4duqOWSNSzHFS0SA982Xv8KGk/84RjJWpugi', '2023-06-17 06:31:00', NULL),
(5, 'testuser', 'testuser@tes.com', '$2y$10$iULDHVaERZR6nUTAFwlSG.QV2Fh3psbUaH1JiwiAyyFfQw5nM7ujW', '2023-06-17 06:54:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_cars`
--

CREATE TABLE `user_cars` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `make` varchar(50) NOT NULL,
  `model` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `specs` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cars`
--

INSERT INTO `user_cars` (`id`, `user_id`, `brand`, `make`, `model`, `image`, `specs`, `created_at`) VALUES
(1, 3, 'Mitsubishi', 'Mitsubishi ', 'Lancer Evolution IX', 'mitsubishi-lancer-evolution-ix-mitsubishi-lancer-jdm-wallpaper-preview.jpeg', 'The Mitsubishi Lancer Evolution IX, often referred to as the Evo IX, was a high-performance sports sedan produced by Mitsubishi Motors. Here are the specifications for the Evo IX:\r\n\r\nEngine:\r\n- 2.0-liter turbocharged inline-four engine\r\n- Power output: 276 horsepower (JDM models) or 286 horsepower (worldwide models)\r\n- Torque: 311 lb-ft (JDM models) or 289 lb-ft (worldwide models)\r\n\r\nTransmission:\r\n- 5-speed manual transmission\r\n- All-Wheel Drive (AWD) system with Active Center Differential (ACD)\r\n\r\nPerformance:\r\n- 0-60 mph (0-97 km/h): approximately 4.6 seconds\r\n- Top speed: electronically limited to 155 mph (250 km/h)\r\n\r\nSuspension and Brakes:\r\n- Front suspension: MacPherson struts\r\n- Rear suspension: Multi-link\r\n- Brembo brakes with 4-piston front and 2-piston rear calipers\r\n\r\nDimensions:\r\n- Length: 178.5 inches (4,535 mm)\r\n- Width: 69.7 inches (1,770 mm)\r\n- Height: 57.1 inches (1,450 mm)\r\n- Wheelbase: 103.3 inches (2,625 mm)\r\n\r\nWeight:\r\n- Curb weight: approximately 3,400 lbs (1,540 kg)\r\n\r\nFuel Economy:\r\n- EPA estimated fuel economy: 17 mpg city / 23 mpg highway', '2023-06-12 18:06:58'),
(2, 1, 'Toyota ', 'Toyota', 'Land Cruiser', 'wallpaperflare.com_wallpaper (9).jpg', 'The Toyota Land Cruiser is a popular full-size SUV known for its ruggedness, off-road capability, and spaciousness. Here are some general specifications for the Toyota Land Cruiser, but please note that these specifications can vary depending on the specific model and year:\r\n\r\nEngine Options:\r\n- V8 Engine: Typically a 5.7-liter V8 engine\r\n- Power Output: Around 381 horsepower\r\n- Torque: Approximately 401 lb-ft\r\n\r\nTransmission:\r\n- 8-speed automatic transmission\r\n\r\nDrivetrain:\r\n- Full-time four-wheel drive (4WD)\r\n- Some models may have a multi-mode 4WD system with various driving modes, such as Normal, Eco, Sport, and various off-road modes.\r\n\r\nSeating Capacity:\r\n- Typically seats 8 passengers, with three rows of seating.\r\n\r\nDimensions:\r\n- Length: Approximately 194 inches (4,925 mm)\r\n- Width: Approximately 78 inches (1,980 mm)\r\n- Height: Approximately 75 inches (1,905 mm)\r\n- Wheelbase: Varies by model, typically around 112 inches (2,845 mm)\r\n\r\nGround Clearance:\r\n- Varies by model, typically around 8.9-9.1 inches (225-230 mm)\r\n\r\nWeight:\r\n- Curb Weight: Can range from approximately 5,700 to 6,000 lbs (2,590-2,720 kg)\r\n\r\nTowing Capacity:\r\n- The towing capacity can vary depending on the model and equipment. Generally, it ranges from approximately 7,000 to 8,100 lbs (3,175-3,674 kg).\r\n\r\nFuel Economy:\r\n- EPA estimated fuel economy can vary, but it is generally around 13-18 mpg in the city and 17-23 mpg on the highway.', '2023-06-13 11:18:12'),
(4, 3, 'Porsche', 'Porsche', 'Porsche GT3 RS', 'wallpaperflare.com_wallpaper (7).jpg', 'Engine:\r\n- 4.0-liter naturally aspirated flat-six engine\r\n- Maximum power output: 520 horsepower\r\n- Maximum torque: 346 lb-ft\r\n- Rear-wheel drive\r\n\r\nTransmission:\r\n- 7-speed PDK (Porsche Doppelkupplung) dual-clutch automatic transmission\r\n\r\nPerformance:\r\n- 0-60 mph (0-97 km/h) acceleration: approximately 3.0 seconds\r\n- Top speed: approximately 193 mph (310 km/h)\r\n\r\nChassis and Handling:\r\n- Rear-wheel steering\r\n- Porsche Active Suspension Management (PASM)\r\n- Porsche Torque Vectoring Plus (PTV Plus)\r\n- Carbon ceramic brakes\r\n- Lightweight construction with extensive use of aluminum and carbon fiber-reinforced plastic (CFRP)\r\n\r\nExterior:\r\n- Aggressive aerodynamic body kit with a large rear wing\r\n- Lightweight carbon fiber hood and fenders\r\n- Wider body compared to the standard 911 models\r\n- Lightweight alloy wheels\r\n\r\nInterior:\r\n- Sport-oriented interior with supportive bucket seats\r\n- Alcantara upholstery\r\n- Carbon fiber trim elements\r\n- Optional roll cage and fire extinguisher for track use\r\n', '2023-06-14 06:42:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cars_user_cars` (`user_car_id`);

--
-- Indexes for table `car_problems`
--
ALTER TABLE `car_problems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `contact_admin`
--
ALTER TABLE `contact_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_contact_admin_user_id` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_user_message_user_id` (`user_id`),
  ADD KEY `FK_contact_admin_message_id` (`message_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `solutions`
--
ALTER TABLE `solutions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `problem_id` (`problem_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_roles` (`role_id`);

--
-- Indexes for table `user_cars`
--
ALTER TABLE `user_cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `car_problems`
--
ALTER TABLE `car_problems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_admin`
--
ALTER TABLE `contact_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `solutions`
--
ALTER TABLE `solutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_cars`
--
ALTER TABLE `user_cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `fk_cars_user_cars` FOREIGN KEY (`user_car_id`) REFERENCES `user_cars` (`id`);

--
-- Constraints for table `car_problems`
--
ALTER TABLE `car_problems`
  ADD CONSTRAINT `car_problems_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `car_problems_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `user_cars` (`id`);

--
-- Constraints for table `contact_admin`
--
ALTER TABLE `contact_admin`
  ADD CONSTRAINT `FK_contact_admin_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `FK_contact_admin_message_id` FOREIGN KEY (`message_id`) REFERENCES `contact_admin` (`id`),
  ADD CONSTRAINT `FK_user_message_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `solutions`
--
ALTER TABLE `solutions`
  ADD CONSTRAINT `solutions_ibfk_1` FOREIGN KEY (`problem_id`) REFERENCES `car_problems` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);

--
-- Constraints for table `user_cars`
--
ALTER TABLE `user_cars`
  ADD CONSTRAINT `user_cars_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
