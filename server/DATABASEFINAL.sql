-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbfinal
-- ------------------------------------------------------
-- Server version	9.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignments` (
  `assignment_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `instructor_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `due_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`assignment_id`),
  KEY `course_id` (`course_id`),
  KEY `instructor_id` (`instructor_id`),
  CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  CONSTRAINT `assignments_ibfk_2` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
INSERT INTO `assignments` VALUES (1,1,20001,'Bài tập 1: Lập trình phần mềm','Viết chương trình quản lý sinh viên','2025-02-28 17:00:00','2025-02-26 17:43:22'),(2,2,20002,'Bài tập 1: Thiết kế Database','Tạo database cho hệ thống e-learning','2025-03-04 17:00:00','2025-02-26 17:43:22'),(3,3,20003,'Bài tập 1: Machine Learning','Xây dựng mô hình phân loại dữ liệu','2025-03-09 17:00:00','2025-02-26 17:43:22'),(4,4,20004,'Bài tập 1: An toàn thông tin','Mô phỏng tấn công SQL Injection','2025-03-14 17:00:00','2025-02-26 17:43:22');
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `student_id` int NOT NULL,
  `instructor_id` int NOT NULL,
  `attendance_date` date NOT NULL,
  `status` enum('present','absent','late') NOT NULL,
  `recorded_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`attendance_id`),
  KEY `course_id` (`course_id`),
  KEY `student_id` (`student_id`),
  KEY `instructor_id` (`instructor_id`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,1,220041,20001,'2025-02-25','present','2025-02-26 17:43:42'),(2,1,220001,20001,'2025-02-25','present','2025-02-26 17:43:42'),(3,1,220002,20001,'2025-02-25','present','2025-02-26 17:43:42'),(4,1,220003,20001,'2025-02-25','present','2025-02-26 17:43:42'),(5,1,220004,20001,'2025-02-25','late','2025-02-26 17:43:42'),(6,1,220005,20001,'2025-02-25','present','2025-02-26 17:43:42'),(7,1,220006,20001,'2025-02-25','present','2025-02-26 17:43:42'),(8,1,220007,20001,'2025-02-25','late','2025-02-26 17:43:42'),(9,1,220008,20001,'2025-02-25','present','2025-02-26 17:43:42'),(10,1,220009,20001,'2025-02-25','present','2025-02-26 17:43:42'),(11,1,220010,20001,'2025-02-25','present','2025-02-26 17:43:42'),(12,2,220042,20002,'2025-02-25','absent','2025-02-26 17:43:42'),(13,2,220011,20002,'2025-02-25','absent','2025-02-26 17:43:42'),(14,2,220012,20002,'2025-02-25','absent','2025-02-26 17:43:42'),(15,2,220013,20002,'2025-02-25','absent','2025-02-26 17:43:42'),(16,2,220014,20002,'2025-02-25','absent','2025-02-26 17:43:42'),(17,2,220015,20002,'2025-02-25','absent','2025-02-26 17:43:42'),(18,2,220016,20002,'2025-02-25','absent','2025-02-26 17:43:42'),(19,2,220017,20002,'2025-02-25','absent','2025-02-26 17:43:42'),(20,2,220018,20002,'2025-02-25','absent','2025-02-26 17:43:42'),(21,2,220019,20002,'2025-02-25','absent','2025-02-26 17:43:42'),(22,2,220020,20002,'2025-02-25','absent','2025-02-26 17:43:42'),(23,3,210021,20003,'2025-02-25','late','2025-02-26 17:43:42'),(24,3,210022,20003,'2025-02-25','late','2025-02-26 17:43:42'),(25,3,210023,20003,'2025-02-25','late','2025-02-26 17:43:42'),(26,3,210024,20003,'2025-02-25','late','2025-02-26 17:43:42'),(27,3,210025,20003,'2025-02-25','late','2025-02-26 17:43:42'),(28,3,210026,20003,'2025-02-25','late','2025-02-26 17:43:42'),(29,3,210027,20003,'2025-02-25','late','2025-02-26 17:43:42'),(30,3,210028,20003,'2025-02-25','late','2025-02-26 17:43:42'),(31,3,210029,20003,'2025-02-25','late','2025-02-26 17:43:42'),(32,3,210030,20003,'2025-02-25','late','2025-02-26 17:43:42'),(33,4,210044,20004,'2025-02-25','present','2025-02-26 17:43:42'),(34,4,210031,20004,'2025-02-25','present','2025-02-26 17:43:42'),(35,4,210032,20004,'2025-02-25','present','2025-02-26 17:43:42'),(36,4,210033,20004,'2025-02-25','present','2025-02-26 17:43:42'),(37,4,210034,20004,'2025-02-25','present','2025-02-26 17:43:42'),(38,4,210035,20004,'2025-02-25','present','2025-02-26 17:43:42'),(39,4,210036,20004,'2025-02-25','present','2025-02-26 17:43:42'),(40,4,210037,20004,'2025-02-25','present','2025-02-26 17:43:42'),(41,4,210038,20004,'2025-02-25','present','2025-02-26 17:43:42'),(42,4,210039,20004,'2025-02-25','present','2025-02-26 17:43:42'),(43,4,210040,20004,'2025-02-25','present','2025-02-26 17:43:42');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_instructors`
--

DROP TABLE IF EXISTS `course_instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_instructors` (
  `course_id` int NOT NULL,
  `instructor_id` int NOT NULL,
  `assigned_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`course_id`,`instructor_id`),
  KEY `instructor_id` (`instructor_id`),
  CONSTRAINT `course_instructors_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  CONSTRAINT `course_instructors_ibfk_2` FOREIGN KEY (`instructor_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_instructors`
--

LOCK TABLES `course_instructors` WRITE;
/*!40000 ALTER TABLE `course_instructors` DISABLE KEYS */;
INSERT INTO `course_instructors` VALUES (1,20001,'2025-02-26 17:43:12'),(2,20002,'2025-02-26 17:43:12'),(3,20003,'2025-02-26 17:43:12'),(4,20004,'2025-02-26 17:43:12');
/*!40000 ALTER TABLE `course_instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) NOT NULL,
  `description` text,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`course_id`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Software Technology','Công nghệ phần mềm',10001,'2025-02-26 17:43:08'),(2,'Database Design','Thiết kế cơ sở dữ liệu',10001,'2025-02-26 17:43:08'),(3,'Machine Learning','Học máy và trí tuệ nhân tạo',10001,'2025-02-26 17:43:08'),(4,'Cybersecurity','An toàn thông tin',10001,'2025-02-26 17:43:08');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollments` (
  `enrollment_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `course_id` int NOT NULL,
  `enrolled_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`enrollment_id`),
  UNIQUE KEY `student_id` (`student_id`,`course_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES (1,220041,1,'2025-02-26 17:43:19'),(2,220001,1,'2025-02-26 17:43:19'),(3,220002,1,'2025-02-26 17:43:19'),(4,220003,1,'2025-02-26 17:43:19'),(5,220004,1,'2025-02-26 17:43:19'),(6,220005,1,'2025-02-26 17:43:19'),(7,220006,1,'2025-02-26 17:43:19'),(8,220007,1,'2025-02-26 17:43:19'),(9,220008,1,'2025-02-26 17:43:19'),(10,220009,1,'2025-02-26 17:43:19'),(11,220010,1,'2025-02-26 17:43:19'),(12,220042,2,'2025-02-26 17:43:19'),(13,220011,2,'2025-02-26 17:43:19'),(14,220012,2,'2025-02-26 17:43:19'),(15,220013,2,'2025-02-26 17:43:19'),(16,220014,2,'2025-02-26 17:43:19'),(17,220015,2,'2025-02-26 17:43:19'),(18,220016,2,'2025-02-26 17:43:19'),(19,220017,2,'2025-02-26 17:43:19'),(20,220018,2,'2025-02-26 17:43:19'),(21,220019,2,'2025-02-26 17:43:19'),(22,220020,2,'2025-02-26 17:43:19'),(23,210021,3,'2025-02-26 17:43:19'),(24,210022,3,'2025-02-26 17:43:19'),(25,210023,3,'2025-02-26 17:43:19'),(26,210024,3,'2025-02-26 17:43:19'),(27,210025,3,'2025-02-26 17:43:19'),(28,210026,3,'2025-02-26 17:43:19'),(29,210027,3,'2025-02-26 17:43:19'),(30,210028,3,'2025-02-26 17:43:19'),(31,210029,3,'2025-02-26 17:43:19'),(32,210030,3,'2025-02-26 17:43:19'),(33,210044,4,'2025-02-26 17:43:19'),(34,210031,4,'2025-02-26 17:43:19'),(35,210032,4,'2025-02-26 17:43:19'),(36,210033,4,'2025-02-26 17:43:19'),(37,210034,4,'2025-02-26 17:43:19'),(38,210035,4,'2025-02-26 17:43:19'),(39,210036,4,'2025-02-26 17:43:19'),(40,210037,4,'2025-02-26 17:43:19'),(41,210038,4,'2025-02-26 17:43:19'),(42,210039,4,'2025-02-26 17:43:19'),(43,210040,4,'2025-02-26 17:43:19');
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedbacks` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `course_id` int NOT NULL,
  `rating` int DEFAULT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`feedback_id`),
  KEY `student_id` (`student_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `feedbacks_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `feedbacks_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  CONSTRAINT `feedbacks_chk_1` CHECK (((`rating` >= 1) and (`rating` <= 5)))
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` VALUES (1,220001,1,5,'Khóa học rất bổ ích, giảng viên giảng dễ hiểu','2025-02-26 17:43:47'),(2,220002,1,5,'Khóa học rất bổ ích, giảng viên nhiệt tình','2025-02-26 17:43:47'),(3,220003,1,4,'Giảng viên giảng dễ hiểu nhưng cần thêm ví dụ thực tế','2025-02-26 17:43:47'),(4,220004,1,3,'Nội dung khóa học ổn nhưng phần thực hành còn ít','2025-02-26 17:43:47'),(5,220005,1,2,'Khóa học khá khó hiểu, cần cải thiện cách trình bày','2025-02-26 17:43:47'),(6,220006,1,5,'Bài giảng rõ ràng, nhiều ví dụ hay','2025-02-26 17:43:47'),(7,220007,1,4,'Kiến thức chuyên sâu, giảng viên giảng tốt','2025-02-26 17:43:47'),(8,220008,1,1,'Khóa học không như mong đợi, nội dung khó tiếp thu','2025-02-26 17:43:47'),(9,220009,1,3,'Cần cải thiện phần hỗ trợ học viên trong khóa học','2025-02-26 17:43:47'),(10,220010,1,5,'Khóa học xuất sắc, rất đáng tham gia','2025-02-26 17:43:47'),(11,220041,1,2,'Giảng viên giảng nhanh, khó theo kịp bài học','2025-02-26 17:43:47'),(12,220042,2,4,'Khóa học tốt nhưng nội dung hơi nặng','2025-02-26 17:43:47'),(13,220012,2,5,'Giảng viên giảng rất cuốn hút, khóa học tuyệt vời','2025-02-26 17:43:47'),(14,220013,2,4,'Kiến thức hay nhưng phần bài tập hơi khó','2025-02-26 17:43:47'),(15,220014,2,3,'Nội dung ổn nhưng cần thêm bài tập thực hành','2025-02-26 17:43:47'),(16,220015,2,2,'Chương trình học nặng, khó theo kịp','2025-02-26 17:43:47'),(17,220016,2,5,'Khóa học rất bổ ích, dễ hiểu, nhiều ví dụ hay','2025-02-26 17:43:47'),(18,220017,2,1,'Khóa học chưa như mong đợi, cần cải thiện nội dung','2025-02-26 17:43:47'),(19,220018,2,3,'Bài giảng tốt nhưng cần hỗ trợ thêm cho sinh viên','2025-02-26 17:43:47'),(20,220019,2,4,'Giảng viên giảng tốt, nhưng cần thêm thời gian ôn tập','2025-02-26 17:43:47'),(21,220020,2,2,'Bài giảng khó hiểu, nên trình bày chậm hơn','2025-02-26 17:43:47'),(22,220011,2,5,'Tuyệt vời, khóa học rất đáng giá','2025-02-26 17:43:47'),(23,210021,3,4,'Khóa học thú vị, nhưng bài tập hơi nhiều','2025-02-26 17:43:47'),(24,210022,3,3,'Nội dung tốt nhưng cần thêm ví dụ thực tế','2025-02-26 17:43:47'),(25,210023,3,5,'Giảng viên dạy rất có tâm, dễ hiểu và thực tế','2025-02-26 17:43:47'),(26,210024,3,2,'Khóa học khá khó, cần hướng dẫn chi tiết hơn','2025-02-26 17:43:47'),(27,210025,3,1,'Quá khó, không theo kịp bài giảng','2025-02-26 17:43:47'),(28,210026,3,5,'Bài giảng chất lượng, giúp nắm vững Machine Learning','2025-02-26 17:43:47'),(29,210027,3,4,'Giảng viên giảng hay, nhưng tốc độ hơi nhanh','2025-02-26 17:43:47'),(30,210028,3,3,'Khóa học ổn, nhưng phần lý thuyết hơi dài','2025-02-26 17:43:47'),(31,210029,3,2,'Không dễ tiếp cận, cần có thêm bài giảng nền tảng','2025-02-26 17:43:47'),(32,210030,3,5,'Ứng dụng thực tế nhiều, rất đáng học','2025-02-26 17:43:47'),(33,210044,4,3,'An toàn thông tin quan trọng nhưng cần thêm ví dụ thực tế','2025-02-26 17:43:47'),(34,210031,4,5,'Khóa học rất hữu ích, giảng viên giảng dễ hiểu','2025-02-26 17:43:47'),(35,210032,4,4,'Nội dung chuyên sâu nhưng cần thêm bài tập thực hành','2025-02-26 17:43:47'),(36,210033,4,3,'Bài giảng ổn nhưng chưa có nhiều ví dụ thực tế','2025-02-26 17:43:47'),(37,210034,4,2,'Chưa rõ ràng lắm, tài liệu hơi khó hiểu','2025-02-26 17:43:47'),(38,210035,4,1,'Quá phức tạp, cần hướng dẫn chi tiết hơn','2025-02-26 17:43:47'),(39,210036,4,5,'Giảng viên rất giỏi, học được nhiều kiến thức mới','2025-02-26 17:43:47'),(40,210037,4,4,'Khóa học tốt, nhưng tốc độ giảng hơi nhanh','2025-02-26 17:43:47'),(41,210038,4,3,'Cần bổ sung thêm tình huống thực tế để dễ áp dụng','2025-02-26 17:43:47'),(42,210039,4,2,'Bài giảng hơi khô khan, khó tiếp thu','2025-02-26 17:43:47'),(43,210040,4,5,'Khóa học tuyệt vời, giúp hiểu rõ về bảo mật thông tin','2025-02-26 17:43:47');
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `grade_id` int NOT NULL AUTO_INCREMENT,
  `submission_id` int NOT NULL,
  `grader_id` int NOT NULL,
  `grade` decimal(5,2) DEFAULT NULL,
  `feedback` text,
  `graded_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`grade_id`),
  KEY `submission_id` (`submission_id`),
  KEY `grader_id` (`grader_id`),
  CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`submission_id`) REFERENCES `submissions` (`submission_id`) ON DELETE CASCADE,
  CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`grader_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `grades_chk_1` CHECK (((`grade` >= 0) and (`grade` <= 100)))
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,1,20001,85.00,'Bài làm tốt nhưng cần cải thiện code','2025-02-26 17:43:35'),(2,2,20001,90.00,'Thiết kế database hợp lý','2025-02-26 17:43:35'),(3,3,20001,88.00,'Mô hình AI chạy tốt, cần tối ưu hơn','2025-02-26 17:43:35'),(4,4,20001,92.00,'Phát hiện lỗ hổng bảo mật tốt','2025-02-26 17:43:35'),(5,5,20001,78.00,'Cần bổ sung thêm tài liệu tham khảo','2025-02-26 17:43:35'),(6,6,20001,95.00,'Bài làm xuất sắc, đạt yêu cầu cao','2025-02-26 17:43:35'),(7,7,20001,80.00,'Code chạy đúng nhưng cần cải tiến hiệu suất','2025-02-26 17:43:35'),(8,8,20001,85.00,'Phân tích dữ liệu khá tốt, nhưng thiếu biểu đồ minh họa','2025-02-26 17:43:35'),(9,9,20001,89.00,'Ứng dụng có giao diện đẹp, cần tối ưu UX','2025-02-26 17:43:35'),(10,10,20001,76.00,'Cần trình bày rõ ràng hơn và sửa một số lỗi logic','2025-02-26 17:43:35'),(11,11,20002,90.00,'Thiết kế database hợp lý','2025-02-26 17:43:35'),(12,12,20002,85.00,'Mô hình Machine Learning có thể tối ưu hơn','2025-02-26 17:43:35'),(13,13,20002,88.00,'Bảo mật tốt, cần bổ sung tài liệu tham khảo','2025-02-26 17:43:35'),(14,14,20002,80.00,'Cần cải thiện hiệu suất thuật toán','2025-02-26 17:43:35'),(15,15,20002,92.00,'Database được thiết kế hợp lý, tối ưu truy vấn tốt','2025-02-26 17:43:35'),(16,16,20002,87.00,'Ứng dụng hoạt động đúng nhưng giao diện chưa đẹp','2025-02-26 17:43:35'),(17,17,20002,90.00,'Bảo mật hệ thống ổn nhưng thiếu kiểm thử','2025-02-26 17:43:35'),(18,18,20002,85.00,'Code chạy đúng nhưng cần viết gọn hơn','2025-02-26 17:43:35'),(19,19,20002,94.00,'Mô hình dữ liệu xuất sắc, phân tích chuyên sâu','2025-02-26 17:43:35'),(20,20,20002,89.00,'Machine Learning đạt độ chính xác cao, cần thêm thử nghiệm','2025-02-26 17:43:35'),(21,21,20003,88.00,'Mô hình AI chạy tốt, cần tối ưu hơn','2025-02-26 17:43:35'),(22,22,20003,91.00,'Bài làm có tính sáng tạo, cần bổ sung tài liệu','2025-02-26 17:43:35'),(23,23,20003,85.00,'Thuật toán tốt nhưng cần cải thiện tốc độ','2025-02-26 17:43:35'),(24,24,20003,90.00,'Cấu trúc code gọn gàng, dễ bảo trì','2025-02-26 17:43:35'),(25,25,20003,87.00,'Ứng dụng hoạt động ổn định, giao diện có thể cải thiện','2025-02-26 17:43:35'),(26,26,20003,89.00,'Bảo mật dữ liệu tốt nhưng cần thêm kiểm thử','2025-02-26 17:43:35'),(27,27,20003,92.00,'Mô hình Machine Learning đạt độ chính xác cao','2025-02-26 17:43:35'),(28,28,20003,86.00,'Phân tích dữ liệu hợp lý, thiếu tài liệu tham khảo','2025-02-26 17:43:35'),(29,29,20003,94.00,'Hệ thống chạy hiệu quả, tối ưu tốt','2025-02-26 17:43:35'),(30,30,20003,90.00,'Ứng dụng đầy đủ tính năng, cần cải thiện UX/UI','2025-02-26 17:43:35'),(31,31,20004,92.00,'Phát hiện lỗ hổng bảo mật tốt','2025-02-26 17:43:35'),(32,32,20004,88.00,'Cải thiện thuật toán mã hóa dữ liệu','2025-02-26 17:43:35'),(33,33,20004,90.00,'Ứng dụng bảo mật ổn định, cần thêm logging','2025-02-26 17:43:35'),(34,34,20004,85.00,'Tường lửa hoạt động hiệu quả, cần kiểm tra thêm','2025-02-26 17:43:35'),(35,35,20004,91.00,'Phân quyền người dùng hợp lý, dễ quản lý','2025-02-26 17:43:35'),(36,36,20004,87.00,'Hệ thống chống tấn công SQL Injection tốt','2025-02-26 17:43:35'),(37,37,20004,93.00,'Cơ chế xác thực mạnh mẽ, phù hợp với tiêu chuẩn bảo mật','2025-02-26 17:43:35'),(38,38,20004,89.00,'Hệ thống có thể mở rộng, cần tối ưu hiệu suất','2025-02-26 17:43:35'),(39,39,20004,86.00,'Giảm thiểu rủi ro bảo mật bằng cách cải tiến mã nguồn','2025-02-26 17:43:35'),(40,40,20004,94.00,'Phát hiện và xử lý xâm nhập trái phép tốt','2025-02-26 17:43:35');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submissions`
--

DROP TABLE IF EXISTS `submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submissions` (
  `submission_id` int NOT NULL AUTO_INCREMENT,
  `assignment_id` int NOT NULL,
  `student_id` int NOT NULL,
  `file_url` text NOT NULL,
  `submitted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`submission_id`),
  KEY `assignment_id` (`assignment_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `submissions_ibfk_1` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`assignment_id`) ON DELETE CASCADE,
  CONSTRAINT `submissions_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submissions`
--

LOCK TABLES `submissions` WRITE;
/*!40000 ALTER TABLE `submissions` DISABLE KEYS */;
INSERT INTO `submissions` VALUES (1,1,220041,'https://example.com/submission41.pdf','2025-02-26 17:43:27'),(2,1,220001,'https://example.com/submission01.pdf','2025-02-26 17:43:27'),(3,1,220002,'https://example.com/submission02.pdf','2025-02-26 17:43:27'),(4,1,220003,'https://example.com/submission03.pdf','2025-02-26 17:43:27'),(5,1,220004,'https://example.com/submission04.pdf','2025-02-26 17:43:27'),(6,1,220005,'https://example.com/submission05.pdf','2025-02-26 17:43:27'),(7,1,220006,'https://example.com/submission06.pdf','2025-02-26 17:43:27'),(8,1,220007,'https://example.com/submission07.pdf','2025-02-26 17:43:27'),(9,1,220008,'https://example.com/submission08.pdf','2025-02-26 17:43:27'),(10,1,220009,'https://example.com/submission09.pdf','2025-02-26 17:43:27'),(11,1,220010,'https://example.com/submission10.pdf','2025-02-26 17:43:27'),(12,2,220042,'https://example.com/submission42.pdf','2025-02-26 17:43:27'),(13,2,220011,'https://example.com/submission11.pdf','2025-02-26 17:43:27'),(14,2,220012,'https://example.com/submission12.pdf','2025-02-26 17:43:27'),(15,2,220013,'https://example.com/submission13.pdf','2025-02-26 17:43:27'),(16,2,220014,'https://example.com/submission14.pdf','2025-02-26 17:43:27'),(17,2,220015,'https://example.com/submission15.pdf','2025-02-26 17:43:27'),(18,2,220016,'https://example.com/submission16.pdf','2025-02-26 17:43:27'),(19,2,220017,'https://example.com/submission17.pdf','2025-02-26 17:43:27'),(20,2,220018,'https://example.com/submission18.pdf','2025-02-26 17:43:27'),(21,2,220019,'https://example.com/submission19.pdf','2025-02-26 17:43:27'),(22,2,220020,'https://example.com/submission20.pdf','2025-02-26 17:43:27'),(23,3,210021,'https://example.com/submission21.pdf','2025-02-26 17:43:27'),(24,3,210022,'https://example.com/submission22.pdf','2025-02-26 17:43:27'),(25,3,210023,'https://example.com/submission23.pdf','2025-02-26 17:43:27'),(26,3,210024,'https://example.com/submission24.pdf','2025-02-26 17:43:27'),(27,3,210025,'https://example.com/submission25.pdf','2025-02-26 17:43:27'),(28,3,210026,'https://example.com/submission26.pdf','2025-02-26 17:43:27'),(29,3,210027,'https://example.com/submission27.pdf','2025-02-26 17:43:27'),(30,3,210028,'https://example.com/submission28.pdf','2025-02-26 17:43:27'),(31,3,210029,'https://example.com/submission29.pdf','2025-02-26 17:43:27'),(32,3,210030,'https://example.com/submission30.pdf','2025-02-26 17:43:27'),(33,4,210044,'https://example.com/submission44.pdf','2025-02-26 17:43:27'),(34,4,210031,'https://example.com/submission31.pdf','2025-02-26 17:43:27'),(35,4,210032,'https://example.com/submission32.pdf','2025-02-26 17:43:27'),(36,4,210033,'https://example.com/submission33.pdf','2025-02-26 17:43:27'),(37,4,210034,'https://example.com/submission34.pdf','2025-02-26 17:43:27'),(38,4,210035,'https://example.com/submission35.pdf','2025-02-26 17:43:27'),(39,4,210036,'https://example.com/submission36.pdf','2025-02-26 17:43:27'),(40,4,210037,'https://example.com/submission37.pdf','2025-02-26 17:43:27'),(41,4,210038,'https://example.com/submission38.pdf','2025-02-26 17:43:27'),(42,4,210039,'https://example.com/submission39.pdf','2025-02-26 17:43:27'),(43,4,210040,'https://example.com/submission40.pdf','2025-02-26 17:43:27');
/*!40000 ALTER TABLE `submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` text NOT NULL,
  `role` enum('student','instructor','admin') NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=220043 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10001,'Admin User','admin@example.com','hashedsfs_password','admin','2025-02-26 17:43:03'),(20001,'Nguyen Van A','nguyenvana@example.com','hashed_psfzassword','instructor','2025-02-26 17:43:03'),(20002,'Nguyen Van B','nguyenvanb@example.com','hashesfsd_password','instructor','2025-02-26 17:43:03'),(20003,'Nguyen Van C','nguyenvanc@example.com','hashed_pafaGssword','instructor','2025-02-26 17:43:03'),(20004,'Nguyen Van D','nguyenvand@example.com','hashed_padassword','instructor','2025-02-26 17:43:03'),(210021,'Pham Thi D','phamthid2@example.com','hashed_peyassword','student','2025-02-26 17:43:03'),(210022,'Hoang Van E','hoangvane2@example.com','hashed_pfgdassword','student','2025-02-26 17:43:03'),(210023,'Nguyen Van X','nguyenvanx@example.com','hashed_pjxfgjassword','student','2025-02-26 17:43:03'),(210024,'Bui Van Y','buivany@example.com','hashed_pfxjgassword','student','2025-02-26 17:43:03'),(210025,'Do Van Z','dovanz@example.com','hashed_pafgjfjssword','student','2025-02-26 17:43:03'),(210026,'Luong Thi A','luongthia@example.com','hashxfgjed_password','student','2025-02-26 17:43:03'),(210027,'Dang Van B','dangvanb@example.com','hashed_pasxgjjfsword','student','2025-02-26 17:43:03'),(210028,'Tran Thi C','tranthic@example.com','hashed_xfjjxpassword','student','2025-02-26 17:43:03'),(210029,'Nguyen Minh D','nguyenminhd@example.com','hashexfjfjd_password','student','2025-02-26 17:43:03'),(210030,'Le Quang E','lequange@example.com','hashedxhfxj_password','student','2025-02-26 17:43:03'),(210031,'Pham Thi D','phamthid3@example.com','hashfxjfxgjed_password','student','2025-02-26 17:43:03'),(210032,'Hoang Van E','hoangvane3@example.com','hasxfgjfgbvnhed_password','student','2025-02-26 17:43:03'),(210033,'Vu Van F','vuvanf@example.com','hashed_paxfjfgjssword','student','2025-02-26 17:43:03'),(210034,'Dinh Thi G','dinhthig@example.com','hashed_pxfgjvbassword','student','2025-02-26 17:43:03'),(210035,'Cao Van H','caovanh@example.com','hashed_xfgjgvbjnpassword','student','2025-02-26 17:43:03'),(210036,'Doan Thi I','doanthiI@example.com','hashexfgjvbjd_password','student','2025-02-26 17:43:03'),(210037,'Pham Van J','phamvanj@example.com','haxfgjxfshed_password','student','2025-02-26 17:43:03'),(210038,'Ngo Thi K','ngothik@example.com','hashed_passwxfjfxjord','student','2025-02-26 17:43:03'),(210039,'Trinh Van L','trinhvanl@example.com','zdhhhashed_password','student','2025-02-26 17:43:03'),(210040,'Ly Thi M','lythim@example.com','hashed_pzdhdhassword','student','2025-02-26 17:43:03'),(210044,'Hoang Van E','hoangvane@example.com','hashedxfgjxfjvc_password','student','2025-02-26 17:43:03'),(220001,'Pham Thi D','phamthid@example.com','hashed_passwZFzcsgord','student','2025-02-26 17:43:03'),(220002,'Hoang Van E','hoangvdane@example.com','hashed_pafafzxfgassword','student','2025-02-26 17:43:03'),(220003,'Nguyen Van F','nguyenvanf@example.com','hashedasGsdfz_password','student','2025-02-26 17:43:03'),(220004,'Bui Thi G','buithig@example.com','hashed_pazfzvgssword','student','2025-02-26 17:43:03'),(220005,'Doan Van H','doanvanh@example.com','hashsgzxfed_password','student','2025-02-26 17:43:03'),(220006,'Pham Van I','phamvani@example.com','hashed_hdfchpassword','student','2025-02-26 17:43:03'),(220007,'Ngo Thi J','ngothij@example.com','hashed_paAjssword','student','2025-02-26 17:43:03'),(220008,'Trinh Van K','trinhvank@example.com','hashed_xndtpassword','student','2025-02-26 17:43:03'),(220009,'Vo Thi L','vothil@example.com','hashed_pbdbgrdassword','student','2025-02-26 17:43:03'),(220010,'Duong Van M','duongvanm@example.com','hashbxdrbed_password','student','2025-02-26 17:43:03'),(220011,'Ly Van N','lyvann@example.com','hashed_paszbgbsword','student','2025-02-26 17:43:03'),(220012,'Truong Thi O','truongthio@example.com','hashzbrbed_password','student','2025-02-26 17:43:03'),(220013,'Nguyen Van P','nguyenvanp@example.com','hashexbrd_password','student','2025-02-26 17:43:03'),(220014,'Phan Thi Q','phanthiq@example.com','hashed_paxnssword','student','2025-02-26 17:43:03'),(220015,'Dinh Van R','dinhvanr@example.com','hashed_pxnassword','student','2025-02-26 17:43:03'),(220016,'Cao Thi S','caothis@example.com','hashed_pahmssword','student','2025-02-26 17:43:03'),(220017,'Tran Van T','tranvant@example.com','hashed_paadjssword','student','2025-02-26 17:43:03'),(220018,'Le Thi U','lethiu@example.com','hashed_passwodtjrd','student','2025-02-26 17:43:03'),(220019,'Nguyen Van V','nguyenvanv@example.com','hashgkdxhed_password','student','2025-02-26 17:43:03'),(220020,'Dang Thi W','dangthiw@example.com','hashed_pasjtrssword','student','2025-02-26 17:43:03'),(220041,'Tran Thi B','tranthib@example.com','hashed_pagZgcssword','student','2025-02-26 17:43:03'),(220042,'Le Van C','levanc@example.com','hashed_pabxxgssword','student','2025-02-26 17:43:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-27  0:47:16
