CREATE TABLE `users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int NOT NULL,
  `roleId` int
);

CREATE TABLE `courses` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `teacher` varchar(255) NOT NULL
);

CREATE TABLE `videocourses` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
);

CREATE TABLE `categories` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) NOT NULL
);

CREATE TABLE `roles` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) NOT NULL
);

CREATE TABLE `pivote_courses_categories` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `categoryId` int NOT NULL,
  `courseId` int NOT NULL
);

CREATE TABLE `pivote_users_courses` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `userId` int NOT NULL,
  `courseId` int NOT NULL
);

CREATE TABLE `pivote_users_videocourses` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `userId` int NOT NULL,
  `videocourseId` int NOT NULL
);

ALTER TABLE `pivote_courses_categories` ADD FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`);

ALTER TABLE `pivote_courses_categories` ADD FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`);

ALTER TABLE `users` ADD FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`);

ALTER TABLE `pivote_users_courses` ADD FOREIGN KEY (`id`) REFERENCES `users` (`id`);

ALTER TABLE `pivote_users_courses` ADD FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`);

ALTER TABLE `pivote_users_videocourses` ADD FOREIGN KEY (`videocourseId`) REFERENCES `videocourses` (`id`);

ALTER TABLE `pivote_users_videocourses` ADD FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
