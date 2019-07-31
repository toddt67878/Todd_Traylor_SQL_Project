CREATE TABLE `instructors` (
  `instructors_id` int(11) NOT NULL AUTO_INCREMENT,
  `instructors_name` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `instructors_email` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`instructors_id`),
  UNIQUE KEY `instructors_id_UNIQUE` (`instructors_id`),
  UNIQUE KEY `intructors_email_UNIQUE` (`instructors_email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci