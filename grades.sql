CREATE TABLE `grades` (
  `grades_id` int(11) NOT NULL AUTO_INCREMENT,
  `grades_instructors_id` int(11) NOT NULL,
  `grades_students_id` int(11) NOT NULL,
  `grades_courses_id` int(11) NOT NULL,
  `grades_score` float NOT NULL,
  PRIMARY KEY (`grades_id`),
  UNIQUE KEY `grades_id_UNIQUE` (`grades_id`),
  KEY `grades_courses_id` (`grades_courses_id`),
  KEY `grades_instructors_id` (`grades_instructors_id`),
  KEY `grades_students_id` (`grades_students_id`),
  CONSTRAINT `grades_courses_id` FOREIGN KEY (`grades_courses_id`) REFERENCES `courses` (`courses_id`) ON DELETE CASCADE,
  CONSTRAINT `grades_instructors_id` FOREIGN KEY (`grades_instructors_id`) REFERENCES `instructors` (`instructors_id`) ON DELETE CASCADE,
  CONSTRAINT `grades_students_id` FOREIGN KEY (`grades_students_id`) REFERENCES `students` (`students_id`) ON DELETE CASCADE 
  )ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci