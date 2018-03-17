CREATE TABLE `movies` (
  `movie_id` INTEGER NULL DEFAULT NULL,
  `title` VARCHAR(50) NULL DEFAULT NULL,
  `year_released` YEAR NULL DEFAULT NULL,
  `rating_id` INTEGER NULL DEFAULT NULL,
  `imdb_score` DECIMAL NULL DEFAULT NULL,
  `notes` VARCHAR(100) NULL DEFAULT NULL,
  `movie_key` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  PRIMARY KEY (`movie_key`)
);

CREATE TABLE `people` (
  `people_id` INTEGER NULL DEFAULT NULL,
  `name` VARCHAR(100) NULL DEFAULT NULL,
  `people_key` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  PRIMARY KEY (`people_key`)
);

CREATE TABLE `genres` (
  `main_genre` VARCHAR(50) NULL DEFAULT NULL,
  `sub_genre` VARCHAR(50) NULL DEFAULT NULL,
  `genre_id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  PRIMARY KEY (`genre_id`)
);

CREATE TABLE `movies_people` (
  `role_id` INTEGER NULL DEFAULT NULL,
  `movie_key` INTEGER NULL DEFAULT NULL,
  `people_key` INTEGER NULL DEFAULT NULL
);

CREATE TABLE `people_genres` (
  `genre_id` INTEGER NULL DEFAULT NULL,
  `people_key` INTEGER NULL DEFAULT NULL
);

CREATE TABLE `roles` (
  `role_id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `role` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`)
);

CREATE TABLE `ratings` (
  `rating_id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `movie_rating` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`rating_id`)
);

ALTER TABLE `movies` ADD FOREIGN KEY (rating_id) REFERENCES `ratings` (`rating_id`);
ALTER TABLE `movies_people` ADD FOREIGN KEY (role_id) REFERENCES `roles` (`role_id`);
ALTER TABLE `movies_people` ADD FOREIGN KEY (movie_key) REFERENCES `movies` (`movie_key`);
ALTER TABLE `movies_people` ADD FOREIGN KEY (people_key) REFERENCES `people` (`people_key`);
ALTER TABLE `people_genres` ADD FOREIGN KEY (genre_id) REFERENCES `genres` (`genre_id`);
ALTER TABLE `people_genres` ADD FOREIGN KEY (people_key) REFERENCES `people` (`people_key`);

INSERT INTO `movies` (`movie_id`,`title`,`year_released`,`rating_id`,`imdb_score`,`notes`,`movie_key`) VALUES
('','','','','','','','','');

INSERT INTO `people` (`name`) VALUES
("Argue,David"),
("Armendanz,Pedro"),
("Beaumont,Charles"),
("Blakely,Susan"),
("Boorman,John"),
("Carman,Michael"),
("Carpenter,John"),
("Carradine,David"),
("Caspary,Tina"),
("Chiodo,Stephen"),
("Clooney, George"),
("Connery,Sean"),
("Coustas,Mary"),
("Cramer,Grant"),
("Danielle,Juliette"),
("De Bello,John"),
("Denman,David"),
("Edward,Bernds"),
("Ferrante,Anthony"),
("Fischa,Michael"),
("Fleming,Eric"),
("Fonda,Jane"),
("Forest,Jean-Claude"),
("Foster,Meg"),
("Francis,Anne"),
("Gabor,Zsa Zsa"),
("Giamatti,Paul"),
("Goddard,Gary"),
("Hayward,Susan"),
("Heard,John"),
("Hills,Rib"),
("Holt,Amy"),
("Howard,Bryce"),
("Hume,Cyril"),
("Hyde-White,Alex"),
("Kestelman,Sara"),
("Langella,Frank"),
("Law,John Phillip"),
("Levin,Thunder"),
("Lundgren,Dolph"),
("Mangan,Des"),
("Milard,Oscar"),
("Miller, David"),
("Narelle,Brian"),
("Nelson,John Allen"),
("Nevius,Craig"),
("Nielsen,Leslie"),
("O'Bannon,Dan"),
("Odell,David"),
("Pahich,Dre"),
("Pallenberg,Anita"),
("Parker,David"),
("Peltz,Nicola"),
("Pidgeon,Walter"),
("Pirro,Mark"),
("Powell,Dick"),
("Rampling,Charlotte"),
("Rathbone,Jackson"),
("Reid,Tara"),
("Ringer,Noah"),
("Sassone,Oley"),
("Saxon,John"),
("Sestero,Greg"),
("Shyamalan,M. Night"),
("Smith,Jaden"),
("Smith,Will"),
("Snyder,Suzanne"),
("Staab,Rebecca"),
("Starke, Anthony"),
("Stephen,Chiodo"),
("Taylor, Sharon"),
("Underwood,Jay"),
("Vadim,Roger"),
("Waldron, Karen"),
("Wayne,John"),
("Wilcock,Dave"),
("Wilcox,Fred"),
("Wilson, George"),
("Wiseau,Tommy"),
("Wright,Jeffrey"),
("Wynorski,Jim"),
("Ziering,Ian");

INSERT INTO `genres` (`main_genre`,`sub_genre`) VALUES
('Sci-Fi'),('adventure,comedy,horror,musical'),
('Sci-Fi'),('comedy,horror'),
('Adventure'),('Biography,History,romance,war'),
('Sci-Fi'),('action,adventure,thriller'),
('Fantasy'),('sci-fi'),
('Sci-Fi'),('comedy'),
('Sci-Fi'),('Horror'),
('Sci-Fi'),('Horror'),
('comedy'),('Horror'),
('Sci-Fi'),('adventure,comedy,fantasy'),
('action'),('adventure,fantasy,sci-fi,thriller'),
('Drama'),('none'),
('action'),('adventure,sci-fi'),
('action'),('adventure,family,fantasy'),
('Drama'),('Fantasy,mystery,thriller'),
('comedy'),('none'),
('Adventure'),('Sci-Fi,Fantasy'),
('comedy'),('horror,sci-fi'),
('action'),('adventure,family,sci-fi');

INSERT INTO `movies_people` (`role_id`,`movie_key`,`people_key`) VALUES
('','','');

INSERT INTO `people_genres` (`genre_id`,`people_key`) VALUES
('','');

INSERT INTO `roles` (`role`) VALUES
();

INSERT INTO `ratings` (`movie_rating`) VALUES
('PG'),('PG'),('Unrated'),('Unrated'),('R'),
('G'),('TV-14'),('Unrated'),('PG'),('PG'),
('PG'),('R'),('PG-13'),('PG'),('PG-13'),
('Unrated'),('Unrated'),('PG-13'),('PG');


