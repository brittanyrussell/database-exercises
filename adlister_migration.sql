USE Adlister;

-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;

DROP TABLE IF EXISTS`Joiner`;


DROP TABLE IF EXISTS`Ads`;


DROP TABLE IF EXISTS`Categories`;


DROP TABLE IF EXISTS `Users`;



-- ************************************** `Categories`

CREATE TABLE Categories
(
 id       INT unsigned NOT NULL AUTO_INCREMENT ,
 Category VARCHAR(100) NOT NULL ,

PRIMARY KEY (id)
);






-- ************************************** `Users`

CREATE TABLE Users
(
 id      INT unsigned NOT NULL AUTO_INCREMENT ,
 Email    VARCHAR(200) NOT NULL ,
 Password VARCHAR(100) NOT NULL ,

PRIMARY KEY (id)
);






-- ************************************** `Ads`

CREATE TABLE Ads
(
 id          INT unsigned NOT NULL AUTO_INCREMENT ,
 user_id     INT unsigned NOT NULL ,
 Title       VARCHAR(500) NOT NULL ,
 Description VARCHAR(5000) NOT NULL ,

PRIMARY KEY (id),
FOREIGN KEY (user_id) REFERENCES Users(id)
);






-- ************************************** `Joiner`

CREATE TABLE Joiner
(
 ad_id       INT unsigned NOT NULL ,
 category_id INT unsigned NOT NULL ,


FOREIGN KEY (ad_id) REFERENCES Ads(id),
FOREIGN KEY(category_id) REFERENCES Categories(id)
);