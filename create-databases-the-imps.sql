DROP DATABASE IF EXISTS `sql_the_imps`;
CREATE DATABASE `sql_the_imps`; 
USE `sql_the_imps`;

SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL, -- Make this NULL after taking a business decision on how much init. user input
  `nationality` varchar(50) NOT NULL,
  `street_name` varchar(50) NOT NULL,
  `street_number` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `country` varchar(50) NOT NULL,
  `account_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
-- INSERT INTO `payment_methods` VALUES (1,'Credit Card');

CREATE TABLE `user_wallet` (
  `user_id` int NOT NULL,
  `amount_deposited` int NOT NULL,
  `date_deposited` timestamp NOT NULL, -- For multiple transactions per day
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
-- INSERT INTO `clients` VALUES (1,'Vinte','3 Nevada Parkway','Syracuse','NY','315-252-7305');

CREATE TABLE `SDG` (
  `sdg_name` varchar(10) NOT NULL,
  `sgd_id` int NOT NULL,
  PRIMARY KEY (`sdg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
-- INSERT INTO `invoices` VALUES (1,'91-953-3396',2,101.79,0.00,'2019-03-09','2019-03-29',NULL);

CREATE TABLE `sdg_project` (
  `sdg_project_id` int NOT NULL AUTO_INCREMENT,
  `sdg_id` int NOT NULL,
  PRIMARY KEY (`sdg_project_id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
-- INSERT INTO `payments` VALUES (1,5,2,'2019-02-12',8.18,1);

CREATE TABLE `project_countries` (
  `sgd_project_id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(50) NOT NULL,
  PRIMARY KEY (`sgd_project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
-- INSERT INTO `products` VALUES (1,'Foam Dinner Plate',70,1.21);

CREATE TABLE `project_investment` (
  `investment_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `sdg_project_id` int NOT NULL,
  `amount_invested` int NOT NULL,
  `investment_date` timestamp NOT NULL,
  PRIMARY KEY (`investment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
-- INSERT INTO `shippers` VALUES (1,'Hettinger LLC');

CREATE TABLE `sdg_user_balance` (
  `user_id` int NOT NULL,
  `sdg_id` int NOT NULL,
  `amount_held` int NOT NULL,
  `description` varchar(50) NOT NULL,
  `investment_id` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
-- INSERT INTO `order_statuses` VALUES (1,'Processed');
