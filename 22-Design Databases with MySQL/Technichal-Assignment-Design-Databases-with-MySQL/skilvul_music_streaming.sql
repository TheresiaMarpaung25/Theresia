-- Create Database --
CREATE DATABASE skilvul_music_streaming

USE skilvul_music_streaming;

-- Create Table dimulai dari yang memiliki relasi paling sedikit--
CREATE TABLE `singers` (
  `singer_id` INT(11) NOT NULL AUTO_INCREMENT,
  `singer_name` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`singer_id`)
);

CREATE TABLE `albums` (
  `album_id` INT(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `singer_id` INT(11) NOT NULL,
  PRIMARY KEY (`album_id`),
  KEY `fk_singer_singer_id` (`singer_id`),
  CONSTRAINT `fk_singer_singer_id` FOREIGN KEY (`singer_id`) REFERENCES `singers` (`singer_id`)
);

CREATE TABLE `tracks` (
  `track_id` INT(11) NOT NULL AUTO_INCREMENT,
  `title_name` VARCHAR(255) NOT NULL,
  `singer_id` INT(11) NOT NULL,
  `album_id` INT(11) NOT NULL,
  PRIMARY KEY (`track_id`),
  KEY `fk_singers_singer_id` (`singer_id`),
  KEY `fk_singers_album_id` (`album_id`),
  CONSTRAINT `fk_singers_album_id` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`),
  CONSTRAINT `fk_singers_singer_id` FOREIGN KEY (`singer_id`) REFERENCES `singers` (`singer_id`)
);

CREATE TABLE `users` (
  `user_id` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(255) NOT NULL,
  `password` TEXT NOT NULL,
  `user_name` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
);

CREATE TABLE `playlists` (
  `playlist_id` INT(11) NOT NULL AUTO_INCREMENT,
  `playlist_name` VARCHAR(255) NOT NULL,
  `user_id` INT(11) NOT NULL,
  PRIMARY KEY (`playlist_id`),
  KEY `fk_users_user_id` (`user_id`),
  CONSTRAINT `fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
);

CREATE TABLE `track_playlist` (
  `track_id` INT(11) NOT NULL,
  `playlist_id` INT(11) NOT NULL,
  KEY `track_id_key_reff` (`track_id`),
  KEY `playlist_id_key_reff` (`playlist_id`),
  CONSTRAINT `playlist_id_key_reff` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`playlist_id`),
  CONSTRAINT `track_id_key_reff` FOREIGN KEY (`track_id`) REFERENCES `tracks` (`track_id`)
);

