-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 03:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fdelivery_db`
--
CREATE DATABASE IF NOT EXISTS `fdelivery_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fdelivery_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(10, 'davvy', 'e10adc3949ba59abbe56e057f20f883e', 'okechd048@gmail.com', 'QMTZ2J', '2023-05-04 19:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(18, 52, 'Caprese stuffed chicken', 'A twist on the classic Caprese! Succulent chicken is filled with both fresh and sun dried tomatoes for a flavour packed chicken PLUS melted mozzarella cheese! Cooked in a perfect balsamic reduction, this is the chicken of ', 100.00, '645b97fa2440f.jpg'),
(19, 52, 'Spinach Artichoke Stuffed Chicken', 'Spinach Artichoke Stuffed Chicken Breasts is a delicious way to turn a creamy dip into an incredible dinner! with the option of serving it with a ‘no cream’ creamy sauce!', 150.00, '645b97689c44b.jpg'),
(20, 52, 'Caprese Stuffed Garlic Butter Portobellos', 'Portobello mushrooms stuffed and broiled with garlic butter and fresh mozzarella cheese, grape tomato slices and drizzled with a rich balsamic glaze! Low carb heaven!', 120.00, '645b96abdf33d.jpg'),
(21, 52, 'Grilled Lemon Herb Mediterranean Chicken Salad', 'this Grilled Lemon Herb Mediterranean Chicken Salad recipe is as closest to perfect as you can get! Full of Mediterranean flavours: olives, tomatoes, cucumber, avocados, and chicken', 599.00, '645b95f03a826.jpg'),
(22, 53, 'Creamy Herb Chicken', 'Tender chicken breasts simmered in a flavourful and creamy herb sauce with a hint of garlic', 499.00, '64595c78a5a6f.jpg'),
(23, 53, 'Hot Fudge Chocolate Pudding Cake', 'An extremely easy and fast to make! A rich chocolate fudge sauce forms underneath a layer of chocolate cake while baking, by itself!', 199.00, '64595b79c6c5b.jpg'),
(24, 53, 'Creamy Parmesan Carbonara Chicken ', 'The ultimate twist with Carbonara flavours! Crispy, golden chicken fillets soak up a carbonara inspired sauce for a new chicken recipe loved by the entire family!', 250.00, '64595a265998a.jpg'),
(25, 54, 'Spinach Artichoke Stuffed Chicken', 'Spinach Artichoke Stuffed Chicken Breasts is a delicious way to turn a creamy dip into an incredible dinner! with the option of serving it with a ‘no cream’ creamy sauce!', 200.00, '645958b953f8e.jpg'),
(26, 54, 'Nyamachoma', 'The meat is marinated in spices and then grilled over an open fire. This tasty Kenyan roast meat is served in places called nyama choma joints.', 250.00, '64595761117d8.jpg'),
(28, 54, 'Creamy Salmon Piccata', 'Move over chicken…. THIS creamy salmon piccata is THE classy yet easy salmon recipe you’ve been waiting for, with a delicious creamy lemon caper sauce!', 400.00, '6459526f8d443.jpg'),
(29, 65, 'Chicken Chettinad Curry', 'A fiery curry, Chicken Chettinad is one of the most popular dishes from this region. The tanginess of tomatoes, the sweetness of the onions and cinnamon and the heat from red chillies', 350.00, '645b8ee7bdd31.jpg'),
(30, 65, 'Chettinad Fish Fry', 'Fleshy surmai fillets are marinated and wrapped in an exquisite Chettinad masala paste and then pan fried. These succulent fish fillets are perfect as appetizers', 200.00, '645b8e4b2d367.jpg'),
(31, 65, 'Chettinad Egg Curry', 'This chettinad egg curry is a simple egg recipe to prepare and has a myriad of spices mixed with some coconut milk adding to the thick gravy. It is spicy and tangy with the addition of lime', 100.00, '645b8db6a6682.jpg'),
(32, 57, 'Chicken sandwich', ' skinless chicken breast or thigh served between slices of bread, on a bun, or on a roll.', 199.00, '645b91ec2ae32.jpg'),
(33, 57, ' Uttapam', 'Uttapam are savory pancakes with crispy golden edges and a pillowy soft center topped with veggies. Traditionally served as breakfast in India, wholesome Uttapam also makes for a quick and satiating meal.', 99.00, '645b915ee9a83.jpg'),
(34, 60, 'Chana Masala', 'Chana Masala, also known as Chole Masala, is an authentic North Indian style curry made with white chickpeas, freshly powdered spices, onions, tomatoes and herbs', 199.00, '645b8cd5e62ad.jpg'),
(35, 60, 'Besan Ladoo', ' these are round sweet balls made by roasting gram flour and ghee together, and then adding sugar to make a thick pasty dough – that is then formed into delicious, melt-in-your-mouth balls.', 200.00, '645b8c308c7de.jpg'),
(37, 49, 'Samosa', 'Flaky and crunchy fried samosa are one of the most popular street food snack in North Indian cuisine. They feature a pastry-like crust but are filled with savory potatoes and peas for a hearty, delicious snack.', 120.00, '645b8b71db112.jpg'),
(38, 50, 'Tomato Dosai', 'Rice and wheat are the top two grains consumed by Indians, with rice topping the list. Indians have taken this humble grain and transformed it into a plethora of sweet and savory dishes unlike any other culture in the worl', 150.00, '64594285c5b95.jpg'),
(39, 50, 'Idly', 'idly is a type of savory rice cake, originating from the Indian subcontinent, popular as a breakfast food in Southern India and in Sri Lanka.', 180.00, '645940faa0ac8.jpg'),
(40, 50, 'Appam', 'Appam is a type of pancake, originating from South India, made with fermented rice batter and coconut milk', 120.00, '64593cd652671.jpg'),
(41, 55, 'Puttu', ' It is a dish made of steamed cylinders of ground rice layered with coconut shavings, sometimes with a sweet or savory filling. Puttu is served hot with sweet side dishes such as palm sugar or banana', 199.00, '645b881f1a737.jpg'),
(42, 55, 'Pongal', 'The two varieties of pongal are chakarai pongal, which is sweet, and venn pongal, which is made from clarified butter. The word pongal generally refers to spicy venn pongal and is a common breakfast food.', 160.00, '645963da41e58.jpg'),
(43, 55, 'Parota', 'Porottas/Parathas are commonly eaten with vegetable kurma/korma, chicken, fish, mutton, or beef curry. They are also served stuffed with vegetables such as potatoes or radish', 100.00, '645962b747a61.jpg'),
(44, 56, 'Coconut Rice', 'Coconut rice is a dish prepared by soaking white rice in coconut milk or cooking rice with coconut flakes. As both coconut and the rice-plant are commonly found in the tropics all around the world', 150.00, '645961f5480ca.jpg'),
(45, 56, 'Patrode', 'It is made from colocasia leaves (chevu in Tulu, taro, kesuve or arbi) stuffed with gram or rice flour and flavorings such as spices, tamarind, and jaggery (raw sugar).', 100.00, '6459611c18eb5.jpg'),
(46, 56, 'Chicken Ishtu', 'Cardamom, cinnamon, and cloves are paired together to bring out a sweet yet aromatic flavor. Potatoes, beans, and carrots are the vegetables of choice here, adding body and varied texture to the overall dish.', 180.00, '645960308f656.jpg'),
(47, 48, 'Schezwan Fried Rice', 'Indo-Chinese style schezwan fried rice! It’s super easy to make and filled with tender rice, colorful veggies and it’s all stir-fried with a spicy schezwan sauce.', 200.00, '645b95384da1c.jpg'),
(48, 48, 'Schezwan Noodles', 'Schezwan noodles recipe is made with the spicy schezwan sauce and Hakka Noodles is made with soy sauce. Hakka Noodles is more like your simple stir-fried noodles', 150.00, '645b94883ad1c.jpg'),
(49, 48, 'Veg Manchurian Recipe', 'Cabbage is usually the leading vegetable in the manchurian balls, with carrots, green beans, bell peppers and even cauliflower added to the mix', 250.00, '645b93d76a4f5.jpg'),
(50, 61, 'French Fries', 'French fries, are one of the most popular side dishes in the world. They find accompaniment in dips, mayonnaise, ketchup, and even vinegar.', 150.00, '64594e430c42c.jpg'),
(51, 61, 'French Toast', 'French toast is a dish made of sliced bread soaked in beaten eggs and typically milk, then pan fried. Alternative names and variants include ', 200.00, '64594d75ce9b1.jpg'),
(52, 61, 'Winter Fried Chicken', 'chicken fried with beautiful, ripe, cherry tomatoes in a creamy sauce is guaranteed to hit the spot. Add a dollop of pesto for an extra layer of nutty flavours', 250.00, '645946332d172.jpg'),
(53, 51, 'Prawn Pie', 'The dish is made from a spicy flavored flaky pie pastry that is stuffed in with chopped prawns that is cooked in Recheado masala. This is one of the common masala used in most of the Goan cooking', 200.00, '645b90b150bc6.jpg'),
(54, 51, 'Chicken Kiev', 'Chicken Kiev or chicken Kyiv is a dish made of chicken fillet pounded and rolled around cold butter, then coated with egg and bread crumbs, and either fried or baked', 249.00, '645b9032a25fb.jpg'),
(55, 51, 'Mutton Stew', 'French ragoût (stew) of lamb or mutton. Often, vegetables are added.Lamb stew is a preparation in which tough cuts of lamb.', 149.00, '645b8fa8cea03.jpg'),
(56, 49, 'Margherita Pizza', 'Pizza Margherita (more commonly known in English as Margherita pizza) is a typical Neapolitan pizza, made with San Marzano tomatoes, mozzarella cheese, fresh basil, salt, and extra-virgin olive oil.', 120.00, '645b8aa14e7d0.jpg'),
(57, 49, ' Mushroom Risotto', 'Mushroom risotto is a creamy Italian rice with chicken broth and your favorite mushrooms. You can make it on the stovetop with a little patience and meditative stirring', 180.00, '645b8a1880f95.jpg'),
(58, 55, 'Lasagna', 'Lasagna is the name of one of the oldest and best-known pasta shapes. It is usually rectangular or ribbon shaped, thicker than tagliatelle, made from a dough based on flour and eggs', 249.00, '645b8909bafdd.jpg'),
(59, 59, 'Classic Pasta Amatriciana', 'Denoting a spicy pasta sauce made with tomatoes, pancetta or bacon, and basil.', 150.00, '645939f283c32.jpg'),
(60, 59, 'Fettuccine Pomodoro', 'Pomodoro sauce is a very simple classic Italian tomato-based sauce recipe consisting of few ingredients.', 200.00, '6459378d7f3cc.jpg'),
(61, 59, 'Vegan Pasta ', 'They all are so delicious, loaded with wholesome ingredients, healthy vegetables, pesto, and scrumptious vegan creamy sauces.', 250.00, '645934c1e34ca.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(71, 39, 'in process', 'Dispatching...', '2022-03-17 12:31:14'),
(72, 39, 'closed', 'Order delivered.', '2022-03-17 12:35:00'),
(73, 42, 'closed', 'Order delivered & payment received successfully.', '2022-03-23 13:53:20'),
(74, 47, 'rejected', 'Order Cancelled by User.', '2022-03-23 13:54:08'),
(75, 43, 'in process', 'Expected Delivery: 25th March, Friday ', '2022-03-23 14:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(48, 17, 'Taste of China', 'tasteofchina@gmail.com', '0720 222 211', 'tasteofchina.com', '10am', '6pm', '24hr-x7', ' 12th Floor, Parkwest Office Suites, 3rd Parklands Avenue, Westland', '64541b8aa721a.jpg', '2023-05-04 20:54:34'),
(49, 19, 'La Terrazza', 'laterrazzanrb@gmail.com', '+254 703 440486', 'https://laterrazzarestaurant.co.ke/', '10am', '11pm', 'mon-sat', ' 176A Club Rd, Ooty. ', '645424a961e16.jpg', '2023-05-04 21:33:29'),
(50, 16, 'Beatus', 'beatus@gmail.com', '+254 736 160 888 ', 'beatus.com', '6am', '6pm', '24hr-x7', 'Located in Rongai, Kiserian and Roysambu. ', '64542dbfabdf0.jpg', '2023-05-04 22:12:15'),
(51, 20, 'Osoita Gardens', 'info@osoita.com', '+254 704 120130', 'https://osoitalodge.com', '10am', '3pm', 'mon-fri', 'Osoita Lodge Off Magadi Road,\r\nOngata Rongai, Kenya', '6454200151093.jpg', '2023-05-04 21:13:37'),
(52, 12, 'Wakenya Cafe', 'wakenyacafe@gmail.com', '+254 743 567 890', 'wakenyafe.com', '7am', '7pm', 'mon-fri', ' Near Maasai Mall\r\nDine-in ', '6454170e62943.jpg', '2023-05-04 20:35:26'),
(53, 12, 'Dreaming Tree', 'dreamingtree@gmail.com', '+254 745 345 876', 'www.dreamingtree.in', '7am', '6pm', 'mon-sat', ' Cafe\r\nJP3M+VXF, Magadi Rd', '64541521807f0.jpg', '2023-05-04 20:27:13'),
(54, 12, 'Café des Chills', 'cafedeschills@gmail.com', '0727606077', 'www.cafedeschills.com', '7am', '8pm', 'mon-fri', 'New, Mea Road 10th street', '64540ad67c530.jpg', '2023-05-04 19:43:18'),
(55, 15, 'Junior Kuppanna', 'juniorkuppanna@gmail.com', '+254 703 440486', 'www.junior kuppanna.com', '6am', '6pm', '24hr-x7', ' 4 Kannaiya St, North Usman Rd\r\nT Nagar ', '64542c4564dd8.jpg', '2023-05-04 22:05:57'),
(56, 16, 'Hotel Saravana Bhavan', 'www.saravanabhavan@gmail.com', '+254 745 345 876', 'www.saravanabhavan.com', '10am', '5pm', '24hr-x7', ' Sri Siva AVM Grande Hotel, 58/2 Katpadi Rd,vellore ', '64542b0559c37.jpg', '2023-05-04 22:00:37'),
(57, 14, 'Siron', 'info@siron', '+254 703 882362', 'http://sironplace.com', '10am', '6pm', '24hr-x7', 'The Siron Place Restaurant, Rongai, , Kenya ', '645425eef0626.jpg', '2023-05-04 21:38:54'),
(59, 19, 'Bambino', 'bambino17@gmail.com', '+254 743 567 890', 'https://newbambino.com', '8am', '9pm', '24hr-x7', 'Korosho Rd, Dhajay Apartments', '645413d66d229.jpg', '2023-05-04 20:21:42'),
(60, 16, 'Malgudi', 'malgudi@gmail.com', '+254 743 567 890', 'www.malgudi.com', '9am', '10pm', 'mon-thu', 'Stimvak Arcade, Next National Bank, Rongai', '6454284417477.jpg', '2023-05-04 21:48:52'),
(61, 18, 'Browns and bristos Restaurant', 'brownbristos@gmail.com', '0708 590576', 'https://brownbristo.com', '7am', '8pm', 'mon-thu', ' Bus stop, Magadi Rd, Ongata Rongai', '645422d04ffe0.jpg', '2023-05-04 21:25:36'),
(65, 13, 'Masai Lodge', 'info@maasailodge', '0723 160888', 'https://maasailodge.com/', '7am', '11pm', '24hr-x7', ' Ongata Rongai, Magadi Rd, Nairobi', '645419ae16234.jpg', '2023-05-04 20:46:38');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(12, 'Cafe', '2022-03-05 14:07:48'),
(13, 'Chettinadu', '2022-03-05 14:10:18'),
(14, 'Multicuisine', '2022-03-05 14:10:36'),
(15, 'North-Indian', '2022-03-09 15:39:06'),
(16, 'South-Indian', '2022-03-09 15:38:14'),
(17, 'Chinese', '2022-03-05 14:11:08'),
(18, 'French', '2022-03-05 14:11:22'),
(19, 'Italian', '2022-03-05 14:11:30'),
(20, 'Continental', '2022-03-17 12:10:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(45, 'tim', 'shelton', 'timshelton@gmail.com', '0717712345', 'fd936fabc35ccdd29de59538b7f9bcde', 'Floor No.2 Kanari Apartments', 1, '2023-05-04 18:15:35'),
(46, 'Mickey', 'Mouse', 'mmouse@gmail.com', '0798893465', '42b8753abba111e953cd5633966e1794', '34 Lane, Gtaka', 1, '2023-05-04 19:31:42'),
(47, 'obinju', 'kissinger', 'obikissinger@gmail.com', '0798893465', '5d01ca6f0cad42194b6f4ea7d510588b', 'Avanue Road, New Oak', 1, '2023-05-04 19:35:28');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(42, 42, 'Creamy Herb Chicken', 1, 499.00, 'closed', '2022-03-23 13:53:20'),
(43, 40, 'Parota', 1, 100.00, 'in process', '2022-03-23 14:07:03'),
(44, 41, 'Chicken Chettinad Curry', 1, 350.00, NULL, '2022-03-23 13:47:01'),
(45, 43, 'Coconut Rice', 1, 150.00, NULL, '2022-03-23 13:47:38'),
(46, 44, 'Schezwan Fried Rice', 1, 200.00, NULL, '2022-03-23 13:51:12'),
(47, 44, 'Schezwan Noodles', 1, 150.00, 'rejected', '2022-03-23 13:54:08'),
(48, 39, 'Winter Chicken', 1, 250.00, NULL, '2022-03-23 13:51:40'),
(49, 45, 'Caprese stuffed chicken', 1, 100.00, NULL, '2023-05-04 18:17:47'),
(50, 45, 'Caprese stuffed chicken', 1, 100.00, NULL, '2023-05-10 13:13:03'),
(51, 45, 'Spinach Artichoke Stuffed Chicken', 1, 150.00, NULL, '2023-05-10 13:13:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"fdelivery_db\",\"table\":\"dishes\"},{\"db\":\"fdelivery_db\",\"table\":\"admin\"},{\"db\":\"fdelivery_db\",\"table\":\"users\"},{\"db\":\"fdelivery_db\",\"table\":\"restaurant\"},{\"db\":\"fdelivery_db\",\"table\":\"res_category\"},{\"db\":\"fdelivery_db\",\"table\":\"remark\"},{\"db\":\"fdelivery_db\",\"table\":\"admin_codes\"},{\"db\":\"fastdeliveries_db\",\"table\":\"admin\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-05-10 13:15:04', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
