CREATE TABLE `students` (
  `students_id` int(11) NOT NULL AUTO_INCREMENT,
  `students_name` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `students_email` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE KEY `students_id_UNIQUE` (`students_id`),
  UNIQUE KEY `students_email_UNIQUE` (`students_email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci