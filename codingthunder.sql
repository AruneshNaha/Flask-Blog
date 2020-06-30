-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2020 at 10:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(55) NOT NULL,
  `phno` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phno`, `message`, `date`) VALUES
(1, 'Test Name', 'test email ', '99999999', 'Test', '2020-06-21 13:16:35'),
(2, 'Arunesh Naha', 'aruneshnaha18@gmail.com', '09830590554', 'tttttttt', '2020-06-21 14:31:38'),
(3, 'Arunesh Naha', 'nahaarunesh99@gmail.com', '9830590554', 'Hey there! I want this message to be sent to the database! Please.', '2020-06-21 14:33:50'),
(4, 'Ritu Santra', 'aruneshnaha18@gmail.com', '09830590554', 'Hi This is Ritu Santra', '2020-06-21 18:47:30'),
(5, 'Ritu Santra', 'aruneshnaha18@gmail.com', '09830590554', 'Hi This is Ritu Santra', '2020-06-21 18:51:54'),
(6, 'Ritu Santra', 'aruneshnaha18@gmail.com', '09830590554', 'Hi This is Ritu Santra', '2020-06-21 18:53:26'),
(7, 'Ritu Santra', 'aruneshnaha18@gmail.com', '09830590554', 'Hi This is Ritu Santra', '2020-06-21 18:55:55'),
(8, 'Arunesh Naha', 'aruneshnaha18@gmail.com', '9999', 'Hi email', '2020-06-21 20:29:33'),
(9, 'Arunesh Naha', 'aruneshnaha18@gmail.com', '999999', 'Demo message', '2020-06-21 20:46:55'),
(10, 'Rumon Mukherjee', 'rex@gmail.com', '9860567554', 'Hi There. This is Rumon. I am unable to properly write a blog. Please help me out! I would be obliged.', '2020-06-21 20:49:47'),
(11, 'Rumon Mukherjee', 'rex@gmail.com', '9860567554', 'Hi There. This is Rumon. I am unable to properly write a blog. Please help me out! I would be obliged.', '2020-06-21 20:56:52'),
(12, 'Subho', 'subho@gmail.com', '98989', 'Hi bro', '2020-06-21 20:57:27'),
(13, 'Subhabrata Sarkar', 'subho@gmail.com', '8240931178', 'Hi bro! I\'m really missing you a lot... Your blog is just awesome. Greatly eager to meet you after lockdown ends!', '2020-06-21 23:25:33');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `author` varchar(30) NOT NULL,
  `title` varchar(120) NOT NULL,
  `tag_line` varchar(60) NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `img_file` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `author`, `title`, `tag_line`, `slug`, `content`, `date`, `img_file`) VALUES
(1, 'Arunesh', 'This is my first post title', 'First post is always for testing', 'first-post', 'This is my first post and I am very excited to write a lot about this post!', '2020-06-11 12:58:47', 'about-bg.jpg'),
(2, 'Rumon', 'second-post', 'Second Test Post', 'second-post', 'This is the second post', '2020-06-29 21:15:29', 'image.jpg'),
(3, 'Ankit', 'Stock market Edited', 'A review on stock market and exchange', 'stock-market', 'A stock market, equity market or share market is the aggregation of buyers and sellers of stocks (also called shares), which represent ownership claims on businesses; these may include securities listed on a public stock exchange, as well as stock that is only traded privately, such as shares of private companies which are sold to investors through equity crowdfunding platforms. Investment in the stock market is most often done via stockbrokerages and electronic trading platforms. Investment is usually made with an investment strategy in mind.\r\n\r\nStocks can be categorized by the country where the company is domiciled. For example, Nestlé and Novartis are domiciled in Switzerland and traded on the SIX Swiss Exchange, so they may be considered as part of the Swiss stock market, although the stocks may also be traded on exchanges in other countries, for example, as American depositary receipts (ADRs) on U.S. stock markets.', '2020-06-29 16:17:19', ''),
(6, 'Jagannath', 'Implementation', 'All you need to know about implementation', 'Implementation', 'For the sake of convenience, foo.bar in Jinja does the following things on the Python layer:\r\n\r\ncheck for an attribute called bar on foo (getattr(foo, \'bar\'))\r\n\r\nif there is not, check for an item \'bar\' in foo (foo.__getitem__(\'bar\'))\r\n\r\nif there is not, return an undefined object.\r\n\r\nfoo[\'bar\'] works mostly the same with a small difference in sequence:\r\n\r\ncheck for an item \'bar\' in foo. (foo.__getitem__(\'bar\'))\r\n\r\nif there is not, check for an attribute called bar on foo. (getattr(foo, \'bar\'))\r\n\r\nif there is not, return an undefined object.\r\n\r\nThis is important if an object has an item and attribute with the same name. Additionally, the attr() filter only looks up attributes.', '2020-06-22 13:19:08', ''),
(7, 'Mastani', 'Filters', 'Filters are very necessary', 'Filters', 'Variables can be modified by filters. Filters are separated from the variable by a pipe symbol (|) and may have optional arguments in parentheses. Multiple filters can be chained. The output of one filter is applied to the next.\r\n\r\nFor example, {{ name|striptags|title }} will remove all HTML Tags from variable name and title-case the output (title(striptags(name))).\r\n\r\nFilters that accept arguments have parentheses around the arguments, just like a function call. For example: {{ listx|join(\', \') }} will join a list with commas (str.join(\', \', listx)).', '2020-06-22 13:20:00', ''),
(9, 'Arunesh 2', 'Economic Downfall', 'Economy', 'economy', 'An economic collapse is a breakdown of a national, regional, or territorial economy that typically follows a time of crisis. An economic collapse occurs at the onset of a severe version of an economic contraction, depression, or recession and can last any number of years depending on the severity of the circumstances. An economic collapse can happen rapidly due to an unexpected event, or it may be preceded by several events or signs pointing to fragility in the economy.\r\n', '2020-06-29 15:46:39', 'economy.png'),
(10, 'Ritu Dey', 'Stock Exchange', 'Details about stock exchange', 'stock-exchange', 'A stock exchange, securities exchange, or bourse[note 1] is a facility where stockbrokers and traders can buy and sell securities, such as shares of stock and bonds and other financial instruments. Stock exchanges may also provide facilities for the issue and redemption of such securities and instruments and capital events including the payment of income and dividends.[citation needed] Securities traded on a stock exchange include stock issued by listed companies, unit trusts, derivatives, pooled investment products and bonds. Stock exchanges often function as \"continuous auction\" markets with buyers and sellers consummating transactions via open outcry at a central location such as the floor of the exchange or by using an electronic trading platform.[5]\r\n\r\nTo be able to trade a security on a certain stock exchange, the security must be listed there. Usually, there is a central location at least for record keeping, but trade is increasingly less linked to a physical place, as modern markets use electronic communication networks, which give them advantages of increased speed and reduced cost of transactions. Trade on an exchange is restricted to brokers who are members of the exchange. In recent years, various other trading venues, such as electronic communication networks, alternative trading systems and \"dark pools\" have taken much of the trading activity away from traditional stock exchanges.[6]\r\n\r\nInitial public offerings of stocks and bonds to investors is done in the primary market and subsequent trading is done in the secondary market. A stock exchange is often the most important component of a stock market. Supply and demand in stock markets are driven by various factors that, as in all free markets, affect the price of stocks (see stock valuation).\r\n\r\nThere is usually no obligation for stock to be issued through the stock exchange itself, nor must stock be subsequently traded on an exchange. Such trading may be off exchange or over-the-counter. This is the usual way that derivatives and bonds are traded. Increasingly, stock exchanges are part of a global securities market. Stock exchanges also serve an economic function in providing liquidity to shareholders in providing an efficient means of disposing of shares.', '2020-06-29 15:48:00', 'Stock.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
