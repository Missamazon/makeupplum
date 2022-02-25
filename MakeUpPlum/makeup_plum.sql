-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2016 at 04:42 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `makeup_plum`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Beauté des yeux'),
(2, 'Lipsticks'),
(3, 'Correcteurs de teint'),
(4, 'Soins du visage'),
(5, 'Vernis à ongles'),
(6, 'Accessoires');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `price`, `image`, `category`) VALUES
(1, 'Crayons Khôl naturels', 'Crayon pour les yeux aux pigments naturels irisés, coloris au choix : noir, parme, jade, reine des glaces.', 25, 'y1.png', 1),
(2, 'Liner', 'Un de nos produits icôniques, le liner, tenue longue durée.', 29.9, 'y2.png', 1),
(3, 'Mascara', 'Un de nos produits icôniques, le mascara, tenue longue durée, avec son soin pour les cils.', 26.9, 'y3.png', 1),
(4, 'Fards à paupière classiques', 'Fards à paupière pour sublimer votre regard, et mettre des paillettes dans les yeux de vos collègues.', 15.9, 'y4.png', 1),
(5, 'Fards à paupière extraordinaires', 'Fards à paupière pour sublimer votre regard, et mettre des paillettes dans les yeux de vos collègues.', 15.9, 'y5.png', 1),
(6, 'Fards à paupière mystérieux', 'Fards à paupière pour sublimer votre regard, et mettre des paillettes dans les yeux de vos collègues.', 15.9, 'y6.png', 1),
(7, 'Rouge à lèvres distinction', 'Rouge à lèvres rouge: atout distinction en vue, avec son soin des lèvres intégré' , 15.5, 'b1.png', 2),
(8, 'Rouge à lèvres séduction', 'Rouge à lèvres rouge: atout séduction en vue, avec son soin des lèvres intégré', 15.5, 'b2.png', 2),
(9, 'Rouge à lèvres nude', 'Rouge à lèvres marron: atout naturel en vue, avec son soin des lèvres intégré', 15.5, 'b3.png', 2),
(10, 'Rouge à lèvres mystère', 'Rouge à lèvres rouge: atout mystère en vue, avec son soin des lèvres intégré', 15.5, 'b4.png', 2),
(11, 'Rouge à lèvres scandale', 'Rouge à lèvres rouge: atout scandaleux en vue, avec son soin des lèvres intégré', 15.5, 'b5.png', 2),
(12, 'Rouge à lèvres audacieux', 'Rouge à lèvres noir: atout audace pour ne pas passer inaperçu en vue, avec son soin des lèvres intégré', 15.5, 'b6.png', 2),
(13, 'Correcteur de teint c1', 'Dans la gamme de nos 5 correcteurs de teint, pour masquer les imperfections et aider à la cicatrisation des boutons et hydrater en profondeur la peau pour les ridules. 11ml', 19.9, 'c1.png', 3),
(14, 'Correcteur de teint c2', 'Dans la gamme de nos 5 correcteurs de teint, pour masquer les imperfections et aider à la cicatrisation des boutons et hydrater en profondeur la peau pour les ridules. 11ml', 19.9, 'c2.png', 3),
(15, 'Correcteur de teint c3', 'Dans la gamme de nos 5 correcteurs de teint, pour masquer les imperfections et aider à la cicatrisation des boutons et hydrater en profondeur la peau pour les ridules. 11ml', 19.9, 'c3.png', 3),
(16, 'Correcteur de teint c4', 'Dans la gamme de nos 5 correcteurs de teint, pour masquer les imperfections et aider à la cicatrisation des boutons et hydrater en profondeur la peau pour les ridules. 11ml', 19.9, 'c4.png', 3),
(17, 'Correcteur de teint c5', 'Dans la gamme de nos 5 correcteurs de teint, pour masquer les imperfections et aider à la cicatrisation des boutons et hydrater en profondeur la peau pour les ridules. 11ml', 19.9, 'c5.png', 3),
(18, 'Eau Micellaire Clearea', 'Nettoie intensément votre peau de la pollution reçue durant la journée et démaquille en profondeur. 20cl', 15.9, 's1.png', 4),
(19, 'Baume à lèvres intensive nourrish', 'Baume à lèvres à nutrition intense aux extraits de gelée royale, goût pêche. La beauté peut aussi être gourmande. 12ml', 12.9, 's2.png', 4),
(20, 'Crême hydratante éclat naturel', 'Crême hydratante pour redonner son éclat naturel à votre peau aux extraits de rose. 15cl', 18.9, 's3.png', 4),
(21, 'Crème exfoliante revitalisante', 'Prendre soin de sa peau en l''aidant à se renouveler n''aura jamais été aussi simple! 10cl', 15.9, 's4.png', 4),
(22, 'Huile soin intense', 'Une fontaine de Jouvance pour votre peau fatiguée par votre quotidien. 10cl', 17.9, 's5.png', 4),
(23, 'Vernis à ongles classic', 'Set de 5 vernis à assortir à vos humeurs et vos envies. Au choix format: grand (12ml) ou nail art(5ml).', 5.9, 'v1.png', 5),
(24, 'Vernis à ongles bright', 'Set de 5 vernis à assortir à vos humeurs et vos envies. Au choix format: grand (12ml) ou nail art(5ml).', 5.9, 'v2.png', 5),
(25, 'Vernis à ongles extra bright', 'Set de 5 vernis à assortir à vos humeurs et vos envies. Au choix format: grand (12ml) ou nail art(5ml).', 5.9, 'v3.png', 5),
(26, 'Vernis à ongles extra soft', 'Set de 5 vernis à assortir à vos humeurs et vos envies. Au choix format: grand (12ml) ou nail art(5ml).', 5.9, 'v4.png', 5),
(27, 'Vernis à ongles soft', 'Set de 5 vernis à assortir à vos humeurs et vos envies. Au choix format: grand (12ml) ou nail art(5ml).', 5.9, 'v5.png', 5),
(28, 'Vernis à ongles stranger nails', 'Set de 5 vernis à assortir à vos humeurs et vos envies. Au choix format: grand (12ml) ou nail art(5ml).', 5.9, 'v6.png', 5),
(29, 'Pinceau biseauté large', 'Parfait pour appliquer son fond de teint ou estomper son make-up.', 8.9, 'a1.png', 6),
(30, 'Pinceau arrondi large', 'Parfait pour appliquer son fond de teint ou estomper son make-up.', 7.9, 'a2.png', 6),
(31, 'Set de 2 pinceaux fins', 'Parfait pour appliqre son make-up.', 9.9, 'a3.png', 6),
(32, 'Set de 4 pinceaux larges', 'Parfait pour appliquer son fond de teint et estomper son make-up.', 15.9, 'a4.png', 6),
(33, 'Set complet accessoires de maquillages', 'Set parfait pour un maquillage toujours impeccable :4 pinceaux larges, 7 pinceaux fins, 1 pinceau extra fin et un outil de sculpting des sourcils.', 30.9, 'a5.png', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
