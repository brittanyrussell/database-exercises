USE adlister_db;


INSERT INTO `users` (username, email, password)
      VALUES ('BrittneyR', 'brittany@example.com', 'ilikecats'),
             ('Hunter', 'hunter@example.com', 'ilikedogs'),
             ('Patrick', 'patrick2example.com', 'ilikeoctupus');

INSERT INTO `ads` (user_id, title, description)
      VALUES (1, 'Help Wanted', 'I need a developer!'),
             (1, 'Cat for sale', 'I have a cat for sale!'),
             (2, 'Dog for sale', 'I have a dog for sale!'),
             (3, 'Octupus for sale', 'I hava a octupus for sale!');

INSERT INTO `categories` (category)
      VALUES ('Job available'),
             ('Animal for Sale'),
             ('Furniture for Sale'),
             ('Car for Sale');

INSERT INTO `joiner` (ad_id, category_id)
      VALUES (1, 1),
             (2, 1),
             (1, 2);