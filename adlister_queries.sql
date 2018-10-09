USE Adlister;

SELECT User_id, Users.email
FROM Ads Join Users on
Ads.User_id = Users.id
WHERE Ads.id = 4;

SELECT Joiner.category_id, Categories.category
FROM Joiner
Join Ads on Ads.id = Joiner.ad_id
Join Categories on Categories.id = Joiner.category_id
WHERE Ads.id = 5;

SELECT *
FROM Ads
Join Joiner on
Joiner.ad_id = Ads.id
JOIN Categories on Categories.id = Joiner.category_id
WHERE Categories.id = 1;

SELECT Title,Description, Users.email
FROM Ads Join Users on Ads.user_id = Users.id
WHERE Users.id = 1;
