--
-- Вивід всіх типів товарів
--

SELECT id_type, photo_type, name_type FROM type_product;

--
-- Вивід всіх товарів по типу
-- Можна обрати будь-який номер типу товару з БД 
--

SELECT id_product, photo_product, price, name_product FROM product, type_product WHERE `product`.id_type = `type_product`.id_type AND `product`.id_type = 1;

--
-- Вивід всіх товарів 
--

SELECT id_product, photo_product, price, name_product FROM product, type_product WHERE `product`.id_type = `type_product`.id_type;

--
-- Вивід інформації про будь-який товар по id_product 
--

SELECT photo_product, name_product, price, description FROM product WHERE `product`.id_product = 1;

--
-- Вивід інформації про будь-який товар в назві товару або типу товару
-- міститься певний текст  
--

SELECT id_product, photo_product, price, name_product FROM product, type_product WHERE `product`.id_type = `type_product`.id_type AND ((`product`.name_product LIKE '%текст%') OR (`type_product`.name_type LIKE '%текст%'));

--
-- Вивід інформації про будь-який товар в назві товару або типу товару
-- міститься певний текст  
--

SELECT id_product, photo_product, price, name_product FROM product, type_product WHERE `product`.id_type = `type_product`.id_type AND ((`product`.name_product LIKE '%текст%') OR (`type_product`.name_type LIKE '%текст%'));


