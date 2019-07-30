CREATE TABLE `courses` (
  `courses_id` int(11) NOT NULL AUTO_INCREMENT,
  `courses_name` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `courses_email` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `courses_instructor_id` int(11) DEFAULT NULL,
  `courses_students_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`courses_id`),
  UNIQUE KEY `courses_id_UNIQUE` (`courses_id`),
  UNIQUE KEY `courses_email_UNIQUE` (`courses_email`),
  KEY `courses_instructors_id_idx` (`courses_instructor_id`),
  KEY `courses_students_id_idx` (`courses_students_id`),
  CONSTRAINT `courses_instructors_id` FOREIGN KEY (`courses_instructor_id`) REFERENCES `instructors` (`instructors_id`) ON DELETE CASCADE,
  CONSTRAINT `courses_students_id` FOREIGN KEY (`courses_students_id`) REFERENCES `students` (`students_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci