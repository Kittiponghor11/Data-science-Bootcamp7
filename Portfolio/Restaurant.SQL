CREATE TABLE customers(
  customerid INT,
  name TEXT,
  country TEXT,
  Region TEXT
);

INSERT INTO customers VALUES
(1, 'Dehya', 'Morocco', 'Africa'),
(2, 'Mika', 'Norway', 'Europe'),
(3, 'Yaoyao', 'China', 'Asia'),
(4, 'Faruzan', 'India', 'Asia'),
(5, 'Layla', 'India', 'Asia'),
(6, 'Dori', 'India', 'Asia'),
(7, 'Heizou', 'Japan', 'Asia'),
(8, 'Xiangling', 'China', 'Asia'),
(9, 'Zhongli', 'China', 'Asia'),
(10, 'Noelle', 'Spain', 'Europe'),
(11, 'Rosaria', 'USA', 'America'),
(12, 'Xinyan', 'Brazil', 'America'),
(13, 'Venti', 'Chili', 'America');

CREATE TABLE orders (
  orderid INT,
  name TEXT,
  price INT,
  typeid INT,
  setid INT
);

INSERT INTO orders values
(1, 'Tea', 20, 2,2),
(2, 'Hot Chocolate', 30, 2,4),
(3, 'Water', 10, 2,3),
(4, 'Coffee', 25, 2,4),
(5, 'Cola', 18, 2,1),
(6, 'Sandwich', 25, 1,1),
(7, 'Pizza', 40, 1,2),
(8, 'Hamburger', 35, 1,1),
(9, 'Steak', 60, 1, 5),
(10, 'Noodle', 40, 1, 3),
(11, 'Brownie', 35, 3, 4),
(12, 'Cake', 30, 3,5),
(13, 'Cookies', 35, 3,5);

CREATE TABLE type(
  typeid INT,
  name TEXT
  );

INSERT INTO type values
(1,'Food'),
(2, 'Drink'),
(3, 'Dessert');

CREATE TABLE set_meal (
  setid INT,
  name TEXT,
  price_set INT);

INSERT INTO set_meal values
(1, 'Set_A', 70),
(2, 'Set_B', 60),
(3, 'Set_C', 55),
(4, 'Set_D', 80),
(5, 'Set_E', 115);

CREATE TABLE bill (
  billid INT,
  customerid INT,
  total INT,
  bill_date TEXT
);
INSERT INTO bill values
(1,2,65 ,'2022-08-24'),
(2,8,95 ,'2022-08-24'),
(3,12,55,'2022-08-24'),
(4,10,38,'2022-08-25'),
(5,1,65,'2022-08-25'),
(6,7,50,'2022-08-25'),
(7,3,150,'2022-08-26'),
(8,9,60,'2022-08-26'),
(9,11,150,'2022-08-27'),
(10,4,90, '2022-08-27'),
(11,13,85,'2022-08-28'),
(12,1,55,'2022-08-28'),
(13,5,60,'2022-08-29'),
(14,6,110,'2022-08-29'),
(15,3,250,'2022-08-30'),
(16,1,70,'2022-08-30'),
(17,8,65,'2022-08-31'),
(18,12,55,'2022-09-01'),
(19,10,73,'2022-09-01'),
(20,12,55,'2022-09-02'); 

CREATE TABLE bill_items (
  billItemId INT,
  billid INT,
  orderid INT,
  quantity INT,
  setid INT,
  quantitySet INT,
  unitPrice INT
);
INSERT INTO bill_items values
(1,1,6,1,'',0,25),
(2,1,10,1,'',0,40),
(3,2,9,1,'',0,60),
(4,2,13,1,'',0,35),
(5,3,'',0,3,1,55),
(6,4,1,1,'',0,20),
(7,4,5,1,'',0,18),
(8,5,2,1,'',0,30),
(9,5,8,1,'',0,35),
(10,6,7,1,'',0,40),
(11,6,3,1,'',0,10),
(12,7,'',0,1,1,70),
(13,7,'',0,4,1,80),
(14,8,4,1,'',0,25),
(15,8,11,1,'',0,35),
(16,9,13,1,'',0,35),
(17,9,'',0,5,1,115),
(18,10,1,1,'',0,20),
(19,10,'',0,1,1,70),
(20,11,9,1,'',0,60),
(21,11,4,1,'',0,25),
(22,12,2,1,'',0,30),
(23,12,6,1,'',0,25),
(24,13,'',0,2,1,60),
(25,14,12,1,'',0,30),
(26,14,'',0,4,1,80),
(27,15,'',0,3,1,55),
(28,15,'',0,4,1,80),
(29,15,'',0,5,1,115),
(30,16,2,1,'',0,30),
(31,16,10,1,'',0,40),
(32,17,12,1,'',0,30),
(33,17,11,1,'',0,35),
(34,18,'',0,3,1,55),
(35,19,4,1,'',0,25),
(36,19,5,1,'',0,18),
(37,19,2,1,'',0,30),
(38,20,'',0,3,1,55);
