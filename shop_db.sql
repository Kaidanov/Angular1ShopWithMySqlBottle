CREATE DATABASE shop;
USE shop;

CREATE TABLE products (
  id             INT          NOT NULL AUTO_INCREMENT,
  name           VARCHAR(150) NOT NULL,
  serial         VARCHAR(150) NOT NULL,
  price          INT          NOT NULL,
  image          VARCHAR(150) NOT NULL,
  icon           VARCHAR(150) NOT NULL,
  description_id INT,
  PRIMARY KEY (id)
)
  ENGINE = InnoDB;


CREATE TABLE description (
  id              INT          NOT NULL AUTO_INCREMENT,
  products_id     INT          NOT NULL,
  fullDescription VARCHAR(400) NOT NULL,
  IMAC            VARCHAR(150) NOT NULL,
  color           VARCHAR(150) NOT NULL,
  capacity        VARCHAR(150) NOT NULL,
  weight          VARCHAR(150) NOT NULL,
  dimentions      VARCHAR(150) NOT NULL,
  instock         TINYINT      NOT NULL,
  PRIMARY KEY (id)


)
  ENGINE = innodb;

ALTER TABLE description
  ADD CONSTRAINT FK_products1
FOREIGN KEY (products_id) REFERENCES products (id)
  ON UPDATE CASCADE
  ON DELETE CASCADE;


INSERT INTO `products` (`id`, name, `serial`, `price`, `image`, `icon`, `description_id`)
VALUES (1, "IPhone6" , "2daf04d9-e2b7-46ff-95c0-527273443f80", 10, "images/iphone6.jpg", "images/iphone6icon.jpg", 1);
INSERT INTO `description` (`id`, `products_id`, `fullDescription`, `IMAC`, `color`, `capacity`, `weight`, `dimentions`,  `instock`)
VALUES (1, 1, "IPhone6 is a new apple phone", "f1b2dbe1-96b3-410c-abf8-8e5e913209b8", "'Silver','Space Gray'",
        "'16GB','64GB'", "Weight: 4.55 ounces (129 grams)", "138.1 mm * 67.0 mm", 1);

INSERT INTO `products` (`id`, name, `serial`, `price`, `image`, `icon`, `description_id`)
VALUES (2, "IPhone6" , "2daf04d9-e2b7-46ff-95c0-527273443f80", 10, "images/iphone6.jpg", "images/iphone6icon.jpg", 1);
INSERT INTO `description` (`id`, `products_id`, `fullDescription`, `IMAC`, `color`, `capacity`, `weight`, `dimentions`,  `instock`)
VALUES (2, 2, "IPhone6 is a new apple phone", "f1b2dbe1-96b3-410c-abf8-8e5e913209b8", "'Silver','Space Gray'",
        "'16GB','64GB'", "Weight: 4.55 ounces (129 grams)", "138.1 mm * 67.0 mm", 1);

INSERT INTO `products` (`id`, name, `serial`, `price`, `image`, `icon`, `description_id`)
VALUES (3, "IPhone6" , "2daf04d9-e2b7-46ff-95c0-527273443f80", 10, "images/iphone6.jpg", "images/iphone6icon.jpg", 1);
INSERT INTO `description` (`id`, `products_id`, `fullDescription`, `IMAC`, `color`, `capacity`, `weight`, `dimentions`,  `instock`)
VALUES (3, 3, "IPhone6 is a new apple phone", "f1b2dbe1-96b3-410c-abf8-8e5e913209b8", "'Silver','Space Gray'",
        "'16GB','64GB'", "Weight: 4.55 ounces (129 grams)", "138.1 mm * 67.0 mm", 1);

INSERT INTO `products` (`id`, name, `serial`, `price`, `image`, `icon`, `description_id`)
VALUES (4, "SamsungS6" , "52eb76c2-cc70-44a1-a215-f6f80b25b3c7", 11, "images/sm6.jpg", "images/sm6icon.jpg", 1);
INSERT INTO `description` (`id`, `products_id`, `fullDescription`, `IMAC`, `color`, `capacity`, `weight`, `dimentions`,  `instock`)
VALUES (4, 4, "SamsungGalaxyS6 is a new android phone", "ae282c02-aed5-4719-877c-689500d394c0", "'Silver','Space Gray'",
        "'16GB','64GB'", "Weight: 4.55 ounces (129 grams)", "129.2 mm ", 1);


INSERT INTO `products` (`id`, name, `serial`, `price`, `image`, `icon`, `description_id`)
VALUES (5, "SamsungS6" , "52eb76c2-cc70-44a1-a215-f6f80b25b3c7", 11, "images/sm6.jpg", "images/sm6icon.jpg", 1);
INSERT INTO `description` (`id`, `products_id`, `fullDescription`, `IMAC`, `color`, `capacity`, `weight`, `dimentions`,  `instock`)
VALUES (5, 5, "SamsungGalaxyS6 is a new android phone", "ae282c02-aed5-4719-877c-689500d394c0", "'Silver','Space Gray'",
        "'16GB','64GB'", "Weight: 4.55 ounces (129 grams)", "129.2 mm ", 1);

INSERT INTO `products` (`id`, name, `serial`, `price`, `image`, `icon`, `description_id`)
VALUES (6, "SamsungS6" , "52eb76c2-cc70-44a1-a215-f6f80b25b3c7", 11, "images/sm6.jpg", "images/sm6icon.jpg", 1);
INSERT INTO `description` (`id`, `products_id`, `fullDescription`, `IMAC`, `color`, `capacity`, `weight`, `dimentions`,  `instock`)
VALUES (6, 6, "SamsungGalaxyS6 is a new android phone", "ae282c02-aed5-4719-877c-689500d394c0", "'Silver','Space Gray'",
        "'16GB','64GB'", "Weight: 4.55 ounces (129 grams)", "129.2 mm ", 1);