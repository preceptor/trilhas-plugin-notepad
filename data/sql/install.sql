CREATE TABLE IF NOT EXISTS `notepad` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classroom_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `classroom_id` (`classroom_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB;

ALTER TABLE `notepad`
  ADD CONSTRAINT `notepad_ibfk_1` FOREIGN KEY (`classroom_id`) REFERENCES `classroom` (`id`),
  ADD CONSTRAINT `notepad_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
