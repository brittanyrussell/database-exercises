USE codeup_test_db;

CREATE TABLE IF NOT EXISTS `albums` (
     id int unsigned NOT NULL AUTO_INCREMENT,
  artist_name varchar(50) DEFAULT NULL,
  album_name varchar(100) NOT NULL,
  release_date varchar(100) NOT NULL,
  sales FLOAT NOT NULL,
  genre varchar(100) NOT NULL,
  PRIMARY KEY (id)
);