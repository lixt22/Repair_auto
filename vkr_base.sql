--
-- Скрипт сгенерирован Devart dbForge Studio 2020 for MySQL, Версия 9.0.567.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 07.06.2024 19:34:07
-- Версия сервера: 5.7.11
-- Версия клиента: 4.1
--

-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установить режим SQL (SQL mode)
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'utf8';

--
-- Установка базы данных по умолчанию
--
USE goodsmanager;

--
-- Удалить представление `view_history_rabot`
--
DROP VIEW IF EXISTS view_history_rabot CASCADE;

--
-- Удалить таблицу `history_rabot`
--
DROP TABLE IF EXISTS history_rabot;

--
-- Удалить представление `view_remont_basa`
--
DROP VIEW IF EXISTS view_remont_basa CASCADE;

--
-- Удалить таблицу `remont_basa`
--
DROP TABLE IF EXISTS remont_basa;

--
-- Удалить представление `view_fullcost`
--
DROP VIEW IF EXISTS view_fullcost CASCADE;

--
-- Удалить представление `view_full_pokraska_elem`
--
DROP VIEW IF EXISTS view_full_pokraska_elem CASCADE;

--
-- Удалить представление `view_pokraska`
--
DROP VIEW IF EXISTS view_pokraska CASCADE;

--
-- Удалить таблицу `pokraska_elements`
--
DROP TABLE IF EXISTS pokraska_elements;

--
-- Удалить представление `view_polirovka`
--
DROP VIEW IF EXISTS view_polirovka CASCADE;

--
-- Удалить таблицу `polirovka_elements`
--
DROP TABLE IF EXISTS polirovka_elements;

--
-- Удалить представление `view_remont`
--
DROP VIEW IF EXISTS view_remont CASCADE;

--
-- Удалить таблицу `remont_elements`
--
DROP TABLE IF EXISTS remont_elements;

--
-- Удалить представление `view_zamena`
--
DROP VIEW IF EXISTS view_zamena CASCADE;

--
-- Удалить таблицу `zamena_elements`
--
DROP TABLE IF EXISTS zamena_elements;

--
-- Удалить таблицу `elements_car_s_vidom`
--
DROP TABLE IF EXISTS elements_car_s_vidom;

--
-- Удалить таблицу `elements_car`
--
DROP TABLE IF EXISTS elements_car;

--
-- Удалить таблицу `rashod_materials`
--
DROP TABLE IF EXISTS rashod_materials;

--
-- Удалить таблицу `vid_zapchasti`
--
DROP TABLE IF EXISTS vid_zapchasti;

--
-- Удалить представление `view_goods_catalog`
--
DROP VIEW IF EXISTS view_goods_catalog CASCADE;

--
-- Удалить таблицу `goods_catalog`
--
DROP TABLE IF EXISTS goods_catalog;

--
-- Удалить таблицу `brand_car`
--
DROP TABLE IF EXISTS brand_car;

--
-- Установка базы данных по умолчанию
--
USE goodsmanager;

--
-- Создать таблицу `brand_car`
--
CREATE TABLE brand_car (
  IDbrand int(11) NOT NULL AUTO_INCREMENT,
  brandName varchar(20) NOT NULL,
  PRIMARY KEY (IDbrand)
)
ENGINE = INNODB,
AUTO_INCREMENT = 11,
AVG_ROW_LENGTH = 481,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать индекс `UK_model_car_modelName` для объекта типа таблица `brand_car`
--
ALTER TABLE brand_car
ADD UNIQUE INDEX UK_model_car_modelName (brandName);

--
-- Создать таблицу `goods_catalog`
--
CREATE TABLE goods_catalog (
  IDcc int(11) NOT NULL AUTO_INCREMENT COMMENT 'Код авто',
  modelName varchar(50) NOT NULL,
  Win_number varchar(17) NOT NULL,
  God_vipuska int(11) NOT NULL,
  IDbrand int(11) NOT NULL,
  PRIMARY KEY (IDcc)
)
ENGINE = INNODB,
AUTO_INCREMENT = 36,
AVG_ROW_LENGTH = 2730,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать индекс `UK_goods_catalog_modelName` для объекта типа таблица `goods_catalog`
--
ALTER TABLE goods_catalog
ADD UNIQUE INDEX UK_goods_catalog_modelName (modelName);

--
-- Создать индекс `UK_goods_catalog_Win_number` для объекта типа таблица `goods_catalog`
--
ALTER TABLE goods_catalog
ADD UNIQUE INDEX UK_goods_catalog_Win_number (Win_number);

--
-- Создать внешний ключ
--
ALTER TABLE goods_catalog
ADD CONSTRAINT FK_goods_catalog_IDbrand FOREIGN KEY (IDbrand)
REFERENCES brand_car (IDbrand) ON DELETE NO ACTION;

--
-- Создать представление `view_goods_catalog`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_goods_catalog
AS
SELECT
  `goods_catalog`.`IDcc` AS `IDcc`,
  `brand_car`.`brandName` AS `brandName`,
  `goods_catalog`.`modelName` AS `modelName`,
  `goods_catalog`.`God_vipuska` AS `God_vipuska`,
  `goods_catalog`.`Win_number` AS `Win_number`
FROM (`goods_catalog`
  JOIN `brand_car`
    ON ((`goods_catalog`.`IDbrand` = `brand_car`.`IDbrand`)))
ORDER BY `goods_catalog`.`IDcc`;

--
-- Создать таблицу `vid_zapchasti`
--
CREATE TABLE vid_zapchasti (
  IDvid int(11) NOT NULL AUTO_INCREMENT,
  vidName varchar(25) NOT NULL,
  PRIMARY KEY (IDvid)
)
ENGINE = INNODB,
AUTO_INCREMENT = 4,
AVG_ROW_LENGTH = 8192,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать таблицу `rashod_materials`
--
CREATE TABLE rashod_materials (
  IDmaterial int(11) NOT NULL AUTO_INCREMENT,
  materialName varchar(30) NOT NULL,
  Cost_material decimal(10, 0) DEFAULT 1,
  PRIMARY KEY (IDmaterial)
)
ENGINE = INNODB,
AUTO_INCREMENT = 5,
AVG_ROW_LENGTH = 5461,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать таблицу `elements_car`
--
CREATE TABLE elements_car (
  IDelem int(11) NOT NULL AUTO_INCREMENT,
  elemName varchar(30) NOT NULL,
  PRIMARY KEY (IDelem)
)
ENGINE = INNODB,
AUTO_INCREMENT = 24,
AVG_ROW_LENGTH = 780,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать таблицу `elements_car_s_vidom`
--
CREATE TABLE elements_car_s_vidom (
  IDelemvid int(11) NOT NULL AUTO_INCREMENT,
  IDcc int(11) NOT NULL DEFAULT 1,
  IDelem int(11) NOT NULL DEFAULT 1,
  IDvid int(11) NOT NULL DEFAULT 1,
  ElemCost decimal(10, 0) DEFAULT 1,
  PRIMARY KEY (IDelemvid)
)
ENGINE = INNODB,
AUTO_INCREMENT = 262,
AVG_ROW_LENGTH = 178,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать внешний ключ
--
ALTER TABLE elements_car_s_vidom
ADD CONSTRAINT FK_elements_car_s_vidom_IDcc FOREIGN KEY (IDcc)
REFERENCES goods_catalog (IDcc) ON DELETE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE elements_car_s_vidom
ADD CONSTRAINT FK_elements_car_s_vidom_IDelem FOREIGN KEY (IDelem)
REFERENCES elements_car (IDelem) ON DELETE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE elements_car_s_vidom
ADD CONSTRAINT FK_elements_car_s_vidom_IDvid FOREIGN KEY (IDvid)
REFERENCES vid_zapchasti (IDvid) ON DELETE NO ACTION;

--
-- Создать таблицу `zamena_elements`
--
CREATE TABLE zamena_elements (
  IDzamena int(11) NOT NULL AUTO_INCREMENT,
  IDelemvid int(11) NOT NULL DEFAULT 1,
  Price_hour2 decimal(10, 0) DEFAULT 800,
  Amount_hour2 int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (IDzamena)
)
ENGINE = INNODB,
AUTO_INCREMENT = 262,
AVG_ROW_LENGTH = 178,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать внешний ключ
--
ALTER TABLE zamena_elements
ADD CONSTRAINT FK_zamena_elements_IDelemvid FOREIGN KEY (IDelemvid)
REFERENCES elements_car_s_vidom (IDelemvid) ON DELETE NO ACTION;

--
-- Создать представление `view_zamena`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_zamena
AS
SELECT
  `zamena_elements`.`IDzamena` AS `IDzamena`,
  `elements_car_s_vidom`.`IDcc` AS `IDcc`,
  `brand_car`.`brandName` AS `brandName`,
  `goods_catalog`.`modelName` AS `modelName`,
  `goods_catalog`.`God_vipuska` AS `God_vipuska`,
  `goods_catalog`.`Win_number` AS `Win_number`,
  `elements_car_s_vidom`.`IDelemvid` AS `IDelemvid`,
  `elements_car`.`elemName` AS `elemName`,
  `vid_zapchasti`.`vidName` AS `vidName`,
  `elements_car_s_vidom`.`ElemCost` AS `ElemCost`,
  `zamena_elements`.`Price_hour2` AS `Price_hour2`,
  `zamena_elements`.`Amount_hour2` AS `Amount_hour2`,
  (`elements_car_s_vidom`.`ElemCost` + (`zamena_elements`.`Price_hour2` * `zamena_elements`.`Amount_hour2`)) AS `zam_elem`,
  `brand_car`.`IDbrand` AS `IDbrand`,
  `elements_car`.`IDelem` AS `IDelem`,
  `vid_zapchasti`.`IDvid` AS `IDvid`
FROM (((((`zamena_elements`
  JOIN `elements_car`)
  JOIN `vid_zapchasti`)
  JOIN `goods_catalog`)
  JOIN `brand_car`
    ON ((`goods_catalog`.`IDbrand` = `brand_car`.`IDbrand`)))
  JOIN `elements_car_s_vidom`
    ON (((`zamena_elements`.`IDelemvid` = `elements_car_s_vidom`.`IDelemvid`)
    AND (`elements_car_s_vidom`.`IDelem` = `elements_car`.`IDelem`)
    AND (`elements_car_s_vidom`.`IDvid` = `vid_zapchasti`.`IDvid`)
    AND (`elements_car_s_vidom`.`IDcc` = `goods_catalog`.`IDcc`))));

--
-- Создать таблицу `remont_elements`
--
CREATE TABLE remont_elements (
  IDremont int(11) NOT NULL AUTO_INCREMENT,
  IDelemvid int(11) NOT NULL DEFAULT 1,
  Price_hour4 decimal(10, 0) DEFAULT 1500,
  Amount_hour4 int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (IDremont)
)
ENGINE = INNODB,
AUTO_INCREMENT = 262,
AVG_ROW_LENGTH = 116,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать внешний ключ
--
ALTER TABLE remont_elements
ADD CONSTRAINT FK_remont_elements_IDelemvid FOREIGN KEY (IDelemvid)
REFERENCES elements_car_s_vidom (IDelemvid) ON DELETE NO ACTION;

--
-- Создать представление `view_remont`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_remont
AS
SELECT
  `remont_elements`.`IDremont` AS `IDremont`,
  `goods_catalog`.`IDcc` AS `IDcc`,
  `brand_car`.`brandName` AS `brandName`,
  `goods_catalog`.`modelName` AS `modelName`,
  `goods_catalog`.`God_vipuska` AS `God_vipuska`,
  `goods_catalog`.`Win_number` AS `Win_number`,
  `elements_car_s_vidom`.`IDelemvid` AS `IDelemvid`,
  `elements_car`.`elemName` AS `elemName`,
  `vid_zapchasti`.`vidName` AS `vidName`,
  `remont_elements`.`Amount_hour4` AS `Amount_hour4`,
  `remont_elements`.`Price_hour4` AS `Price_hour4`,
  (`remont_elements`.`Price_hour4` * `remont_elements`.`Amount_hour4`) AS `rem_elem`,
  `brand_car`.`IDbrand` AS `IDbrand`,
  `elements_car`.`IDelem` AS `IDelem`,
  `vid_zapchasti`.`IDvid` AS `IDvid`
FROM (((((`remont_elements`
  JOIN `elements_car_s_vidom`
    ON ((`remont_elements`.`IDelemvid` = `elements_car_s_vidom`.`IDelemvid`)))
  JOIN `elements_car`
    ON ((`elements_car_s_vidom`.`IDelem` = `elements_car`.`IDelem`)))
  JOIN `vid_zapchasti`
    ON ((`elements_car_s_vidom`.`IDvid` = `vid_zapchasti`.`IDvid`)))
  JOIN `goods_catalog`
    ON ((`elements_car_s_vidom`.`IDcc` = `goods_catalog`.`IDcc`)))
  JOIN `brand_car`
    ON ((`goods_catalog`.`IDbrand` = `brand_car`.`IDbrand`)));

--
-- Создать таблицу `polirovka_elements`
--
CREATE TABLE polirovka_elements (
  IDpol int(11) NOT NULL AUTO_INCREMENT,
  Price_hour3 decimal(10, 0) DEFAULT 800,
  Amount_hour3 int(11) NOT NULL DEFAULT 2,
  IDmaterial int(11) NOT NULL DEFAULT 4,
  Amount_material int(11) NOT NULL DEFAULT 1,
  IDelemvid int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (IDpol)
)
ENGINE = INNODB,
AUTO_INCREMENT = 262,
AVG_ROW_LENGTH = 116,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать внешний ключ
--
ALTER TABLE polirovka_elements
ADD CONSTRAINT FK_polirovka_elements_IDelemvid FOREIGN KEY (IDelemvid)
REFERENCES elements_car_s_vidom (IDelemvid) ON DELETE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE polirovka_elements
ADD CONSTRAINT FK_polirovka_elements_IDmaterial FOREIGN KEY (IDmaterial)
REFERENCES rashod_materials (IDmaterial) ON DELETE NO ACTION;

--
-- Создать представление `view_polirovka`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_polirovka
AS
SELECT
  `polirovka_elements`.`IDpol` AS `IDpol`,
  `brand_car`.`brandName` AS `brandName`,
  `goods_catalog`.`modelName` AS `modelName`,
  `goods_catalog`.`Win_number` AS `Win_number`,
  `elements_car_s_vidom`.`IDelemvid` AS `IDelemvid`,
  `elements_car`.`elemName` AS `elemName`,
  `vid_zapchasti`.`vidName` AS `vidName`,
  `polirovka_elements`.`Price_hour3` AS `Price_hour3`,
  `polirovka_elements`.`Amount_hour3` AS `Amount_hour3`,
  `rashod_materials`.`materialName` AS `materialName`,
  `polirovka_elements`.`Amount_material` AS `Amount_material`,
  `rashod_materials`.`Cost_material` AS `Cost_material`,
  ((`polirovka_elements`.`Price_hour3` * `polirovka_elements`.`Amount_hour3`) + (`rashod_materials`.`Cost_material` * `polirovka_elements`.`Amount_material`)) AS `polir_elem`,
  `brand_car`.`IDbrand` AS `IDbrand`,
  `vid_zapchasti`.`IDvid` AS `IDvid`,
  `elements_car`.`IDelem` AS `IDelem`,
  `rashod_materials`.`IDmaterial` AS `IDmaterial`,
  `goods_catalog`.`IDcc` AS `IDcc`,
  (50 * `polirovka_elements`.`Amount_material`) AS `expr1`,
  (`polirovka_elements`.`Amount_material` * `rashod_materials`.`Cost_material`) AS `expr2`
FROM ((((((`polirovka_elements`
  JOIN `elements_car_s_vidom`
    ON ((`polirovka_elements`.`IDelemvid` = `elements_car_s_vidom`.`IDelemvid`)))
  JOIN `vid_zapchasti`
    ON ((`elements_car_s_vidom`.`IDvid` = `vid_zapchasti`.`IDvid`)))
  JOIN `rashod_materials`
    ON ((`polirovka_elements`.`IDmaterial` = `rashod_materials`.`IDmaterial`)))
  JOIN `elements_car`
    ON ((`elements_car_s_vidom`.`IDelem` = `elements_car`.`IDelem`)))
  JOIN `goods_catalog`
    ON ((`elements_car_s_vidom`.`IDcc` = `goods_catalog`.`IDcc`)))
  JOIN `brand_car`
    ON ((`goods_catalog`.`IDbrand` = `brand_car`.`IDbrand`)));

--
-- Создать таблицу `pokraska_elements`
--
CREATE TABLE pokraska_elements (
  IDpokras int(11) NOT NULL AUTO_INCREMENT,
  Price_hour1 decimal(10, 0) DEFAULT 800,
  Amount_hour1 int(11) NOT NULL DEFAULT 1,
  IDmaterial int(11) NOT NULL DEFAULT 1,
  Amount_material int(11) NOT NULL DEFAULT 1,
  IDelemvid int(11) NOT NULL DEFAULT 1,
  IDbrand int(11) DEFAULT NULL,
  PRIMARY KEY (IDpokras)
)
ENGINE = INNODB,
AUTO_INCREMENT = 784,
AVG_ROW_LENGTH = 2048,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать внешний ключ
--
ALTER TABLE pokraska_elements
ADD CONSTRAINT FK_pokraska_elements_IDbrand FOREIGN KEY (IDbrand)
REFERENCES brand_car (IDbrand) ON DELETE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE pokraska_elements
ADD CONSTRAINT FK_pokraska_elements_IDelemvid FOREIGN KEY (IDelemvid)
REFERENCES elements_car_s_vidom (IDelemvid) ON DELETE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE pokraska_elements
ADD CONSTRAINT FK_pokraska_elements_IDmaterial FOREIGN KEY (IDmaterial)
REFERENCES rashod_materials (IDmaterial) ON DELETE NO ACTION;

--
-- Создать представление `view_pokraska`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_pokraska
AS
SELECT
  `pokraska_elements`.`IDpokras` AS `IDpokras`,
  `goods_catalog`.`IDcc` AS `IDcc`,
  `brand_car`.`brandName` AS `brandName`,
  `goods_catalog`.`modelName` AS `modelName`,
  `goods_catalog`.`Win_number` AS `Win_number`,
  `elements_car_s_vidom`.`IDelemvid` AS `IDelemvid`,
  `elements_car`.`elemName` AS `elemName`,
  `vid_zapchasti`.`vidName` AS `vidName`,
  `pokraska_elements`.`Price_hour1` AS `Price_hour1`,
  `pokraska_elements`.`Amount_hour1` AS `Amount_hour1`,
  `rashod_materials`.`IDmaterial` AS `IDmaterial`,
  `rashod_materials`.`materialName` AS `materialName`,
  `pokraska_elements`.`Amount_material` AS `Amount_material`,
  `rashod_materials`.`Cost_material` AS `Cost_material`,
  ((`pokraska_elements`.`Price_hour1` * `pokraska_elements`.`Amount_hour1`) + (`rashod_materials`.`Cost_material` * `pokraska_elements`.`Amount_material`)) AS `op_cost`,
  (100 * `pokraska_elements`.`Amount_material`) AS `expr1`,
  (`pokraska_elements`.`Amount_material` * `rashod_materials`.`Cost_material`) AS `expr2`,
  `brand_car`.`IDbrand` AS `IDbrand`,
  `elements_car`.`IDelem` AS `IDelem`,
  `vid_zapchasti`.`IDvid` AS `IDvid`
FROM ((((((`pokraska_elements`
  JOIN `elements_car_s_vidom`
    ON ((`pokraska_elements`.`IDelemvid` = `elements_car_s_vidom`.`IDelemvid`)))
  JOIN `elements_car`
    ON ((`elements_car_s_vidom`.`IDelem` = `elements_car`.`IDelem`)))
  JOIN `rashod_materials`
    ON ((`pokraska_elements`.`IDmaterial` = `rashod_materials`.`IDmaterial`)))
  JOIN `vid_zapchasti`
    ON ((`elements_car_s_vidom`.`IDvid` = `vid_zapchasti`.`IDvid`)))
  JOIN `goods_catalog`
    ON ((`elements_car_s_vidom`.`IDcc` = `goods_catalog`.`IDcc`)))
  JOIN `brand_car`
    ON ((`goods_catalog`.`IDbrand` = `brand_car`.`IDbrand`)));

--
-- Создать представление `view_full_pokraska_elem`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_full_pokraska_elem
AS
SELECT
  `view_pokraska`.`IDelemvid` AS `IDelemvid`,
  `view_pokraska`.`vidName` AS `vidName`,
  SUM(`view_pokraska`.`op_cost`) AS `pokr_elem`
FROM `view_pokraska`
GROUP BY `view_pokraska`.`IDelemvid`,
         `view_pokraska`.`vidName`;

--
-- Создать представление `view_fullcost`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_fullcost
AS
SELECT
  `view_zamena`.`IDcc` AS `IDcc`,
  `view_zamena`.`brandName` AS `brandName`,
  `view_zamena`.`modelName` AS `modelName`,
  `view_zamena`.`God_vipuska` AS `God_vipuska`,
  `view_zamena`.`Win_number` AS `Win_number`,
  `view_zamena`.`IDelemvid` AS `IDelemvid`,
  `view_zamena`.`elemName` AS `elemName`,
  `view_zamena`.`vidName` AS `vidName`,
  `view_zamena`.`zam_elem` AS `zam_elem`,
  (SELECT
      `view_polirovka`.`polir_elem`
    FROM `view_polirovka`
    WHERE ((`view_polirovka`.`IDelemvid` = `view_zamena`.`IDelemvid`)
    AND (`view_polirovka`.`vidName` = 'Оригинал'))) AS `polir_elem`,
  (SELECT
      `view_full_pokraska_elem`.`pokr_elem`
    FROM `view_full_pokraska_elem`
    WHERE ((`view_full_pokraska_elem`.`IDelemvid` = `view_zamena`.`IDelemvid`)
    AND (`view_full_pokraska_elem`.`vidName` = 'Оригинал'))) AS `pokr_elem`,
  (SELECT
      `view_remont`.`rem_elem`
    FROM `view_remont`
    WHERE ((`view_remont`.`IDelemvid` = `view_zamena`.`IDelemvid`)
    AND (`view_remont`.`vidName` = 'Оригинал'))) AS `rem_elem`
FROM `view_zamena`;

--
-- Создать таблицу `remont_basa`
--
CREATE TABLE remont_basa (
  IDbasa int(11) NOT NULL AUTO_INCREMENT,
  modelName varchar(30) NOT NULL,
  Win_number varchar(17) NOT NULL,
  elemName varchar(30) NOT NULL,
  vidName varchar(30) NOT NULL,
  cost_pokr decimal(10, 0) NOT NULL DEFAULT 1,
  cost_zam decimal(10, 0) NOT NULL DEFAULT 1,
  cost_polir decimal(10, 0) NOT NULL DEFAULT 1,
  cost_rem decimal(10, 0) NOT NULL DEFAULT 1,
  PRIMARY KEY (IDbasa)
)
ENGINE = INNODB,
AUTO_INCREMENT = 48,
AVG_ROW_LENGTH = 2340,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать представление `view_remont_basa`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_remont_basa
AS
SELECT
  `remont_basa`.`IDbasa` AS `IDbasa`,
  `remont_basa`.`modelName` AS `modelName`,
  `remont_basa`.`Win_number` AS `Win_number`,
  `remont_basa`.`elemName` AS `elemName`,
  `remont_basa`.`vidName` AS `vidName`,
  `remont_basa`.`cost_pokr` AS `cost_pokr`,
  `remont_basa`.`cost_zam` AS `cost_zam`,
  `remont_basa`.`cost_polir` AS `cost_polir`,
  `remont_basa`.`cost_rem` AS `cost_rem`
FROM `remont_basa`;

--
-- Создать таблицу `history_rabot`
--
CREATE TABLE history_rabot (
  IDhis int(11) NOT NULL AUTO_INCREMENT,
  elemName varchar(30) NOT NULL,
  vidName varchar(30) NOT NULL,
  cost_pokr decimal(10, 0) NOT NULL DEFAULT 1,
  cost_zam decimal(10, 0) NOT NULL DEFAULT 1,
  cost_polir decimal(10, 0) NOT NULL DEFAULT 1,
  cost_rem decimal(10, 0) NOT NULL DEFAULT 1,
  PRIMARY KEY (IDhis)
)
ENGINE = INNODB,
AUTO_INCREMENT = 12,
AVG_ROW_LENGTH = 744,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать представление `view_history_rabot`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_history_rabot
AS
SELECT
  `history_rabot`.`IDhis` AS `IDhis`,
  `history_rabot`.`elemName` AS `elemName`,
  `history_rabot`.`vidName` AS `vidName`,
  `history_rabot`.`cost_pokr` AS `cost_pokr`,
  `history_rabot`.`cost_zam` AS `cost_zam`,
  `history_rabot`.`cost_polir` AS `cost_polir`,
  `history_rabot`.`cost_rem` AS `cost_rem`
FROM `history_rabot`;

-- 
-- Вывод данных для таблицы brand_car
--
INSERT INTO brand_car VALUES
(2, 'bmw'),
(6, 'honda'),
(7, 'hyundai'),
(8, 'kia'),
(9, 'Lada'),
(5, 'mazda'),
(4, 'mercedes-benz'),
(10, 'Renault'),
(1, 'toyota'),
(3, 'volkswagen');

-- 
-- Вывод данных для таблицы vid_zapchasti
--
INSERT INTO vid_zapchasti VALUES
(1, 'Оригинал'),
(2, 'Аналог'),
(3, 'БУ');

-- 
-- Вывод данных для таблицы goods_catalog
--
INSERT INTO goods_catalog VALUES
(1, 'corolla', 'JHLRD88859C020595', 2018, 1),
(2, 'camry', '3VWCM31Y25M363610', 2014, 1),
(3, 'rav-4', '1GNSKJKJ6FR295279', 2015, 1),
(4, 'x5', '3GTU2VEC8EG212258', 2013, 2),
(5, 'x6', 'WBXPA93455WC19774', 2012, 2),
(6, '5-series', '1GNEK13Z15R120035', 2013, 2),
(7, 'polo', 'JM1BK123X41234567', 2018, 3),
(8, 'tiguan', 'WBAEE1419J2567297', 2016, 3),
(9, 'touareg', '1GCEC14XX3Z341157', 2013, 3),
(10, 'hillux', '5FNRL387X4B022371', 2015, 1),
(11, 'v-class', '1FTPW14V28FA13086', 2014, 4),
(12, 'e-class', 'WDDLJ7GB0FA029645', 2013, 4),
(13, 'gls-class', 'JM1BK32F981862921', 2012, 4),
(14, 'mazda6', '1FMCU9JD7AKD96321', 2015, 5),
(15, 'cx-5', '1FAFP55U91A263449', 2015, 5),
(16, 'cx-4', '2HGES16543H593775', 2015, 5),
(17, 'cr-v', '2C4RDGBGXDR657703', 2015, 6),
(18, 'accord', 'JTHCE96S470010902', 2016, 6),
(19, 'civic', '4T3ZK3BB0AU047379', 2016, 6),
(20, 'solaris', '3VWJB7AT4DM378215', 2019, 7),
(21, 'santa fe', '3VWRZ7AJ5AM141879', 2015, 7),
(22, 'tucson', 'JN8AF5MV7ET311912', 2016, 7),
(23, 'rio', '5NPEU46F36H085974', 2019, 8),
(24, 'sorento', '1GNEC16Z54J331429', 2014, 8),
(25, 'sportage', '1HD1BNL31TY077630', 2016, 8),
(26, 'granta', 'KMHDN55D93U032109', 2020, 9),
(27, 'vesta', '1GC1KVE83FF199741', 2019, 9),
(28, 'niva legend', '1GNKVEED2BJ270113', 2020, 9),
(29, 'logan', 'WBAKE3C56DE766131', 2019, 10),
(30, 'kaptur', '5FNYF3H75FB034188', 2017, 10),
(31, 'duster', '1FAHP3FN2AW257149', 2017, 10),
(32, 'staria', 'JTHBK1GG8E2131506', 2013, 7),
(33, 'tundra', 'JNKDA31A34T214488', 2014, 1),
(34, 'tacoma', '2HGFG12818H536463', 2014, 1);

-- 
-- Вывод данных для таблицы elements_car
--
INSERT INTO elements_car VALUES
(1, 'крыша'),
(2, 'капот'),
(3, 'крышка багажника'),
(4, 'передний бампер'),
(5, 'задний бампер'),
(6, 'задняя правая фара'),
(7, 'задняя левая фара'),
(8, 'передняя правая фара'),
(9, 'передняя левая фара'),
(10, 'лобовое стекло'),
(11, 'заднее стекло'),
(12, 'переднее правое стекло'),
(13, 'переднее левое стекло'),
(14, 'заднее левое стекло'),
(15, 'заднее правое стекло'),
(16, 'передняя правая дверь'),
(17, 'передняя левая дверь'),
(18, 'задняя правая дверь'),
(19, 'задняя левая дверь'),
(20, 'переднее правое крыло'),
(21, 'переднее левое крыло'),
(22, 'заднее правое крыло'),
(23, 'заднее левое крыло');

-- 
-- Вывод данных для таблицы rashod_materials
--
INSERT INTO rashod_materials VALUES
(1, 'Краска 100 гр.', 300),
(2, 'Грунт 100 гр.', 200),
(3, 'Лак 100 гр.', 300),
(4, 'Полировальная паста 50 гр.', 300);

-- 
-- Вывод данных для таблицы elements_car_s_vidom
--
INSERT INTO elements_car_s_vidom VALUES
(1, 1, 5, 2, 25000),
(2, 1, 1, 2, 15000),
(3, 1, 1, 3, 10000),
(4, 1, 2, 1, 16000),
(5, 1, 2, 2, 13000),
(6, 1, 2, 3, 11000),
(7, 1, 3, 1, 13000),
(8, 1, 3, 2, 9000),
(9, 1, 3, 3, 8000),
(10, 1, 4, 1, 16000),
(11, 1, 4, 2, 13000),
(12, 1, 4, 3, 9000),
(13, 1, 5, 1, 15000),
(14, 1, 5, 2, 12000),
(15, 1, 5, 3, 11000),
(16, 1, 6, 1, 17000),
(17, 1, 6, 2, 15000),
(18, 1, 6, 3, 8000),
(19, 1, 7, 1, 25000),
(20, 1, 7, 2, 15000),
(21, 1, 7, 3, 10000),
(22, 1, 8, 1, 16000),
(23, 1, 8, 2, 13000),
(24, 1, 8, 3, 11000),
(25, 1, 9, 1, 13000),
(26, 1, 9, 2, 9000),
(27, 1, 9, 3, 8000),
(28, 1, 10, 1, 16000),
(29, 1, 10, 2, 13000),
(30, 1, 10, 3, 9000),
(31, 1, 11, 1, 15000),
(32, 1, 11, 2, 12000),
(33, 1, 11, 3, 11000),
(34, 1, 12, 1, 17000),
(35, 1, 12, 2, 15000),
(36, 1, 12, 3, 8000),
(37, 1, 13, 1, 25000),
(38, 1, 13, 2, 15000),
(39, 1, 13, 3, 10000),
(40, 1, 14, 1, 16000),
(41, 1, 14, 2, 13000),
(42, 1, 14, 3, 11000),
(43, 1, 15, 1, 13000),
(44, 1, 15, 2, 9000),
(45, 1, 15, 3, 8000),
(46, 1, 16, 1, 16000),
(47, 1, 16, 2, 13000),
(48, 1, 16, 3, 9000),
(49, 1, 17, 1, 15000),
(50, 1, 17, 2, 12000),
(51, 1, 17, 3, 11000),
(52, 1, 18, 1, 17000),
(53, 1, 18, 2, 15000),
(54, 1, 18, 3, 8000),
(55, 1, 19, 1, 29000),
(56, 1, 19, 2, 22000),
(57, 1, 19, 3, 17000),
(58, 1, 20, 1, 26000),
(59, 1, 20, 2, 20000),
(60, 1, 20, 3, 15000),
(61, 1, 21, 1, 24000),
(62, 1, 21, 2, 16000),
(63, 1, 21, 3, 15500),
(64, 1, 22, 1, 17000),
(65, 1, 22, 2, 15000),
(66, 1, 22, 3, 8000),
(67, 1, 23, 1, 29000),
(68, 1, 23, 2, 22000),
(69, 1, 23, 3, 17000),
(70, 2, 11, 3, 27000),
(71, 2, 1, 2, 22000),
(72, 2, 1, 3, 17000),
(73, 2, 2, 1, 26000),
(74, 2, 2, 2, 20000),
(75, 2, 2, 3, 15000),
(76, 2, 3, 1, 24000),
(77, 2, 3, 2, 16000),
(78, 2, 3, 3, 15500),
(79, 2, 4, 1, 29000),
(80, 2, 4, 2, 22000),
(81, 2, 4, 3, 17000),
(82, 2, 5, 1, 26000),
(83, 2, 5, 2, 20000),
(84, 2, 5, 3, 15000),
(85, 2, 6, 1, 24000),
(86, 2, 6, 2, 16000),
(87, 2, 6, 3, 15500),
(88, 2, 7, 1, 29000),
(89, 2, 7, 2, 22000),
(90, 2, 7, 3, 17000),
(91, 2, 8, 1, 26000),
(92, 2, 8, 2, 20000),
(93, 2, 8, 3, 15000),
(94, 2, 9, 1, 24000),
(95, 2, 9, 2, 16000),
(96, 2, 9, 3, 15500),
(97, 2, 10, 1, 29000),
(98, 2, 10, 2, 22000),
(99, 2, 10, 3, 17000),
(100, 2, 11, 1, 26000),
(101, 2, 11, 2, 20000),
(102, 2, 11, 3, 15000),
(103, 2, 12, 1, 24000),
(104, 2, 12, 2, 16000),
(105, 2, 12, 3, 15500),
(106, 2, 13, 1, 29000),
(107, 2, 13, 2, 22000),
(108, 2, 13, 3, 17000),
(109, 2, 14, 1, 26000),
(110, 2, 14, 2, 20000),
(111, 2, 14, 3, 15000),
(112, 2, 15, 1, 24000),
(113, 2, 15, 2, 16000),
(114, 2, 15, 3, 15500),
(115, 2, 16, 1, 29000),
(116, 2, 16, 2, 22000),
(117, 2, 16, 3, 17000),
(118, 2, 17, 1, 26000),
(119, 2, 17, 2, 20000),
(120, 2, 17, 3, 15000),
(121, 2, 18, 1, 24000),
(122, 2, 18, 2, 16000),
(123, 2, 18, 3, 15500),
(124, 2, 19, 1, 29000),
(125, 2, 19, 2, 22000),
(126, 2, 19, 3, 17000),
(127, 2, 20, 1, 26000),
(128, 2, 20, 2, 20000),
(129, 2, 20, 3, 15000),
(130, 2, 21, 1, 24000),
(131, 2, 21, 2, 16000),
(132, 2, 21, 3, 15500),
(133, 2, 22, 1, 26000),
(134, 2, 22, 2, 20000),
(135, 2, 22, 3, 15000),
(136, 2, 23, 1, 24000),
(137, 2, 23, 2, 16000),
(138, 2, 23, 3, 15500),
(139, 3, 1, 1, 32000),
(140, 3, 1, 2, 25000),
(141, 3, 1, 3, 19000),
(142, 4, 1, 1, 66000),
(143, 4, 1, 2, 49000),
(144, 4, 1, 3, 32000),
(145, 4, 2, 1, 53000),
(146, 4, 2, 2, 40000),
(147, 4, 2, 3, 30000),
(148, 4, 3, 1, 47000),
(149, 4, 3, 2, 39000),
(150, 4, 3, 3, 29000),
(151, 4, 4, 1, 50000),
(152, 4, 4, 2, 38000),
(153, 4, 4, 3, 31000),
(154, 4, 5, 1, 50000),
(155, 4, 5, 2, 38000),
(156, 4, 5, 3, 31000),
(157, 4, 6, 1, 43000),
(158, 4, 6, 2, 27000),
(159, 4, 6, 3, 21000),
(160, 4, 7, 1, 43000),
(161, 4, 7, 2, 27000),
(162, 4, 7, 3, 21000),
(163, 4, 8, 1, 56000),
(164, 4, 8, 2, 35000),
(165, 4, 8, 3, 27000),
(166, 4, 9, 1, 56000),
(167, 4, 9, 2, 35000),
(168, 4, 9, 3, 27000),
(169, 4, 10, 1, 40000),
(170, 4, 10, 2, 25000),
(171, 4, 10, 3, 13000),
(172, 4, 11, 1, 36000),
(173, 4, 11, 2, 22000),
(174, 4, 11, 3, 12000),
(175, 4, 12, 1, 34000),
(176, 4, 12, 2, 20000),
(177, 4, 12, 3, 10000),
(178, 4, 13, 1, 34000),
(179, 4, 13, 2, 20000),
(180, 4, 13, 3, 10000),
(181, 4, 14, 1, 34000),
(182, 4, 14, 2, 20000),
(183, 4, 14, 3, 10000),
(184, 4, 15, 1, 34000),
(185, 4, 15, 2, 20000),
(186, 4, 15, 3, 10000),
(187, 4, 16, 1, 70000),
(188, 4, 16, 2, 50000),
(189, 4, 16, 3, 40000),
(190, 4, 17, 1, 70000),
(191, 4, 17, 2, 50000),
(192, 4, 17, 3, 40000),
(193, 4, 18, 1, 70000),
(194, 4, 18, 2, 50000),
(195, 4, 18, 3, 40000),
(196, 4, 19, 1, 70000),
(197, 4, 19, 2, 50000),
(198, 4, 19, 3, 40000),
(199, 4, 20, 1, 58000),
(200, 4, 20, 2, 39000),
(201, 4, 20, 3, 30000),
(202, 4, 21, 1, 58000),
(203, 4, 21, 2, 39000),
(204, 4, 21, 3, 30000),
(205, 4, 22, 1, 58000),
(206, 4, 22, 2, 39000),
(207, 4, 22, 3, 30000),
(208, 4, 23, 1, 58000),
(209, 4, 23, 2, 39000),
(210, 4, 23, 3, 30000),
(211, 7, 1, 1, 32000),
(212, 7, 1, 2, 23000),
(213, 7, 1, 3, 19000),
(214, 7, 2, 1, 25000),
(215, 7, 2, 2, 20000),
(216, 7, 2, 3, 15000),
(217, 14, 1, 1, 37000),
(218, 14, 1, 2, 29000),
(219, 14, 1, 3, 23000),
(220, 19, 2, 1, 36000),
(221, 19, 2, 2, 28000),
(222, 19, 2, 3, 22000),
(223, 20, 1, 1, 27000),
(224, 20, 1, 2, 19000),
(225, 20, 1, 3, 14000),
(226, 23, 2, 1, 26000),
(227, 23, 2, 2, 20000),
(228, 23, 2, 3, 15000),
(229, 27, 1, 1, 24000),
(230, 27, 1, 2, 16000),
(231, 27, 1, 3, 15500),
(232, 30, 2, 1, 29000),
(233, 30, 2, 2, 22000),
(234, 30, 2, 3, 17000),
(235, 31, 1, 1, 26000),
(236, 31, 1, 2, 20000),
(237, 31, 1, 3, 15000),
(238, 12, 2, 1, 24000),
(239, 12, 2, 2, 16000),
(240, 12, 2, 3, 15500),
(241, 25, 1, 1, 29000),
(242, 25, 1, 2, 22000),
(243, 25, 1, 3, 17000),
(244, 29, 2, 1, 26000),
(245, 29, 2, 2, 20000),
(246, 29, 2, 3, 15000),
(247, 26, 1, 1, 24000),
(248, 26, 1, 2, 16000),
(249, 26, 1, 3, 15500),
(250, 22, 2, 1, 26000),
(251, 22, 2, 2, 20000),
(252, 22, 2, 3, 15000),
(253, 8, 1, 1, 24000),
(254, 8, 1, 2, 16000),
(255, 8, 1, 3, 15500),
(256, 6, 2, 1, 32000),
(257, 6, 2, 2, 25000),
(258, 6, 2, 3, 19000),
(259, 15, 1, 1, 66000),
(260, 15, 1, 2, 49000),
(261, 15, 1, 3, 32000);

-- 
-- Вывод данных для таблицы zamena_elements
--
INSERT INTO zamena_elements VALUES
(1, 1, 800, 3),
(2, 2, 800, 2),
(3, 3, 800, 3),
(4, 4, 800, 2),
(5, 5, 800, 3),
(6, 6, 800, 2),
(7, 7, 800, 3),
(8, 8, 800, 3),
(9, 9, 800, 3),
(10, 10, 800, 2),
(11, 11, 800, 3),
(12, 12, 800, 2),
(13, 13, 800, 3),
(14, 14, 800, 2),
(15, 15, 800, 2),
(16, 16, 800, 3),
(17, 17, 800, 2),
(18, 18, 800, 3),
(19, 19, 800, 2),
(20, 20, 800, 3),
(21, 21, 800, 2),
(22, 22, 800, 3),
(23, 23, 800, 2),
(24, 24, 800, 3),
(25, 25, 800, 2),
(26, 26, 800, 2),
(27, 27, 800, 2),
(28, 28, 800, 3),
(29, 29, 800, 2),
(30, 30, 800, 2),
(31, 31, 800, 3),
(32, 32, 800, 2),
(33, 33, 800, 3),
(34, 34, 800, 2),
(35, 35, 800, 3),
(36, 36, 800, 3),
(37, 37, 800, 2),
(38, 38, 800, 3),
(39, 39, 800, 2),
(40, 40, 800, 2),
(41, 41, 800, 3),
(42, 42, 800, 2),
(43, 43, 800, 3),
(44, 44, 800, 2),
(45, 45, 800, 3),
(46, 46, 800, 3),
(47, 47, 800, 3),
(48, 48, 800, 2),
(49, 49, 800, 3),
(50, 50, 800, 2),
(51, 51, 800, 3),
(52, 52, 800, 2),
(53, 53, 800, 3),
(54, 54, 800, 2),
(55, 55, 800, 3),
(56, 56, 800, 2),
(57, 57, 800, 3),
(58, 58, 800, 2),
(59, 59, 800, 3),
(60, 60, 800, 2),
(61, 61, 800, 3),
(62, 62, 800, 2),
(63, 63, 800, 3),
(64, 64, 800, 3),
(65, 65, 800, 2),
(66, 66, 800, 2),
(67, 67, 800, 2),
(68, 68, 800, 3),
(69, 69, 800, 2),
(70, 70, 800, 2),
(71, 71, 800, 3),
(72, 72, 800, 2),
(73, 73, 800, 2),
(74, 74, 800, 3),
(75, 75, 800, 3),
(76, 76, 800, 2),
(77, 77, 800, 2),
(78, 78, 800, 2),
(79, 79, 800, 3),
(80, 80, 800, 3),
(81, 81, 800, 2),
(82, 82, 800, 2),
(83, 83, 800, 2),
(84, 84, 800, 3),
(85, 85, 800, 3),
(86, 86, 800, 3),
(87, 87, 800, 2),
(88, 88, 800, 2),
(89, 89, 800, 3),
(90, 90, 800, 3),
(91, 91, 800, 3),
(92, 92, 800, 2),
(93, 93, 800, 2),
(94, 94, 800, 3),
(95, 95, 800, 3),
(96, 96, 800, 2),
(97, 97, 800, 3),
(98, 98, 800, 2),
(99, 99, 800, 3),
(100, 100, 800, 2),
(101, 101, 800, 3),
(102, 102, 800, 3),
(103, 103, 800, 3),
(104, 104, 800, 2),
(105, 105, 800, 3),
(106, 106, 800, 2),
(107, 107, 800, 3),
(108, 108, 800, 2),
(109, 109, 800, 2),
(110, 110, 800, 3),
(111, 111, 800, 2),
(112, 112, 800, 3),
(113, 113, 800, 2),
(114, 114, 800, 3),
(115, 115, 800, 2),
(116, 116, 800, 3),
(117, 117, 800, 2),
(118, 118, 800, 3),
(119, 119, 800, 2),
(120, 120, 800, 2),
(121, 121, 800, 2),
(122, 122, 800, 3),
(123, 123, 800, 2),
(124, 124, 800, 2),
(125, 125, 800, 3),
(126, 126, 800, 2),
(127, 127, 800, 3),
(128, 128, 800, 2),
(129, 129, 800, 3),
(130, 130, 800, 3),
(131, 131, 800, 2),
(132, 132, 800, 3),
(133, 133, 800, 2),
(134, 134, 800, 2),
(135, 135, 800, 3),
(136, 136, 800, 2),
(137, 137, 800, 3),
(138, 138, 800, 2),
(139, 139, 800, 3),
(140, 140, 800, 3),
(141, 141, 800, 3),
(142, 142, 800, 3),
(143, 143, 800, 2),
(144, 144, 800, 3),
(145, 145, 800, 2),
(146, 146, 800, 3),
(147, 147, 800, 2),
(148, 148, 800, 3),
(149, 149, 800, 3),
(150, 150, 800, 3),
(151, 151, 800, 2),
(152, 152, 800, 3),
(153, 153, 800, 2),
(154, 154, 800, 3),
(155, 155, 800, 2),
(156, 156, 800, 2),
(157, 157, 800, 3),
(158, 158, 800, 2),
(159, 159, 800, 3),
(160, 160, 800, 2),
(161, 161, 800, 3),
(162, 162, 800, 2),
(163, 163, 800, 3),
(164, 164, 800, 2),
(165, 165, 800, 3),
(166, 166, 800, 2),
(167, 167, 800, 2),
(168, 168, 800, 2),
(169, 169, 800, 3),
(170, 170, 800, 2),
(171, 171, 800, 2),
(172, 172, 800, 3),
(173, 173, 800, 2),
(174, 174, 800, 3),
(175, 175, 800, 2),
(176, 176, 800, 3),
(177, 177, 800, 3),
(178, 178, 800, 2),
(179, 179, 800, 3),
(180, 180, 800, 2),
(181, 181, 800, 2),
(182, 182, 800, 3),
(183, 183, 800, 2),
(184, 184, 800, 3),
(185, 185, 800, 2),
(186, 186, 800, 3),
(187, 187, 800, 3),
(188, 188, 800, 3),
(189, 189, 800, 2),
(190, 190, 800, 3),
(191, 191, 800, 2),
(192, 192, 800, 3),
(193, 193, 800, 2),
(194, 194, 800, 3),
(195, 195, 800, 2),
(196, 196, 800, 3),
(197, 197, 800, 2),
(198, 198, 800, 3),
(199, 199, 800, 2),
(200, 200, 800, 3),
(201, 201, 800, 2),
(202, 202, 800, 3),
(203, 203, 800, 2),
(204, 204, 800, 3),
(205, 205, 800, 3),
(206, 206, 800, 2),
(207, 207, 800, 2),
(208, 208, 800, 2),
(209, 209, 800, 3),
(210, 210, 800, 2),
(211, 211, 800, 3),
(212, 212, 800, 2),
(213, 213, 800, 2),
(214, 214, 800, 3),
(215, 215, 800, 3),
(216, 216, 800, 2),
(217, 217, 800, 3),
(218, 218, 800, 2),
(219, 219, 800, 3),
(220, 220, 800, 2),
(221, 221, 800, 3),
(222, 222, 800, 3),
(223, 223, 800, 3),
(224, 224, 800, 2),
(225, 225, 800, 3),
(226, 226, 800, 2),
(227, 227, 800, 3),
(228, 228, 800, 2),
(229, 229, 800, 2),
(230, 230, 800, 3),
(231, 231, 800, 2),
(232, 232, 800, 3),
(233, 233, 800, 2),
(234, 234, 800, 3),
(235, 235, 800, 2),
(236, 236, 800, 3),
(237, 237, 800, 2),
(238, 238, 800, 3),
(239, 239, 800, 3),
(240, 240, 800, 2),
(241, 241, 800, 3),
(242, 242, 800, 2),
(243, 243, 800, 3),
(244, 244, 800, 2),
(245, 245, 800, 2),
(246, 246, 800, 3),
(247, 247, 800, 2),
(248, 248, 800, 3),
(249, 249, 800, 2),
(250, 250, 800, 3),
(251, 251, 800, 2),
(252, 252, 800, 3),
(253, 253, 800, 2),
(254, 254, 800, 3),
(255, 255, 800, 2),
(256, 256, 800, 2),
(257, 257, 800, 2),
(258, 258, 800, 3),
(259, 259, 800, 2),
(260, 260, 800, 2),
(261, 261, 800, 3);

-- 
-- Вывод данных для таблицы remont_elements
--
INSERT INTO remont_elements VALUES
(1, 1, 1500, 3),
(2, 2, 1500, 4),
(3, 3, 1500, 5),
(4, 4, 1500, 3),
(5, 5, 1500, 6),
(6, 6, 1500, 3),
(7, 7, 1500, 6),
(8, 8, 1500, 4),
(9, 9, 1500, 4),
(10, 10, 1500, 4),
(11, 11, 1500, 5),
(12, 12, 1500, 4),
(13, 13, 1500, 5),
(14, 14, 1500, 6),
(15, 15, 1500, 4),
(16, 16, 1500, 3),
(17, 17, 1500, 4),
(18, 18, 1500, 6),
(19, 19, 1500, 4),
(20, 20, 1500, 4),
(21, 21, 1500, 5),
(22, 22, 1500, 3),
(23, 23, 1500, 6),
(24, 24, 1500, 4),
(25, 25, 1500, 3),
(26, 26, 1500, 4),
(27, 27, 1500, 4),
(28, 28, 1500, 5),
(29, 29, 1500, 6),
(30, 30, 1500, 4),
(31, 31, 1500, 4),
(32, 32, 1500, 4),
(33, 33, 1500, 5),
(34, 34, 1500, 4),
(35, 35, 1500, 6),
(36, 36, 1500, 4),
(37, 37, 1500, 5),
(38, 38, 1500, 4),
(39, 39, 1500, 6),
(40, 40, 1500, 4),
(41, 41, 1500, 3),
(42, 42, 1500, 4),
(43, 43, 1500, 5),
(44, 44, 1500, 4),
(45, 45, 1500, 6),
(46, 46, 1500, 4),
(47, 47, 1500, 5),
(48, 48, 1500, 4),
(49, 49, 1500, 4),
(50, 50, 1500, 4),
(51, 51, 1500, 5),
(52, 52, 1500, 4),
(53, 53, 1500, 3),
(54, 54, 1500, 4),
(55, 55, 1500, 3),
(56, 56, 1500, 4),
(57, 57, 1500, 5),
(58, 58, 1500, 4),
(59, 59, 1500, 5),
(60, 60, 1500, 4),
(61, 61, 1500, 6),
(62, 62, 1500, 3),
(63, 63, 1500, 4),
(64, 64, 1500, 5),
(65, 65, 1500, 4),
(66, 66, 1500, 3),
(67, 67, 1500, 3),
(68, 68, 1500, 4),
(69, 69, 1500, 5),
(70, 70, 1500, 4),
(71, 71, 1500, 4),
(72, 72, 1500, 4),
(73, 73, 1500, 5),
(74, 74, 1500, 4),
(75, 75, 1500, 6),
(76, 76, 1500, 4),
(77, 77, 1500, 5),
(78, 78, 1500, 4),
(79, 79, 1500, 6),
(80, 80, 1500, 4),
(81, 81, 1500, 5),
(82, 82, 1500, 4),
(83, 83, 1500, 6),
(84, 84, 1500, 5),
(85, 85, 1500, 4),
(86, 86, 1500, 3),
(87, 87, 1500, 4),
(88, 88, 1500, 5),
(89, 89, 1500, 4),
(90, 90, 1500, 3),
(91, 91, 1500, 4),
(92, 92, 1500, 5),
(93, 93, 1500, 4),
(94, 94, 1500, 3),
(95, 95, 1500, 4),
(96, 96, 1500, 3),
(97, 97, 1500, 4),
(98, 98, 1500, 5),
(99, 99, 1500, 3),
(100, 100, 1500, 6),
(101, 101, 1500, 3),
(102, 102, 1500, 6),
(103, 103, 1500, 4),
(104, 104, 1500, 4),
(105, 105, 1500, 4),
(106, 106, 1500, 5),
(107, 107, 1500, 4),
(108, 108, 1500, 5),
(109, 109, 1500, 6),
(110, 110, 1500, 4),
(111, 111, 1500, 3),
(112, 112, 1500, 4),
(113, 113, 1500, 6),
(114, 114, 1500, 4),
(115, 115, 1500, 4),
(116, 116, 1500, 5),
(117, 117, 1500, 3),
(118, 118, 1500, 6),
(119, 119, 1500, 4),
(120, 120, 1500, 3),
(121, 121, 1500, 4),
(122, 122, 1500, 4),
(123, 123, 1500, 5),
(124, 124, 1500, 6),
(125, 125, 1500, 4),
(126, 126, 1500, 4),
(127, 127, 1500, 4),
(128, 128, 1500, 5),
(129, 129, 1500, 4),
(130, 130, 1500, 6),
(131, 131, 1500, 4),
(132, 132, 1500, 5),
(133, 133, 1500, 4),
(134, 134, 1500, 6),
(135, 135, 1500, 4),
(136, 136, 1500, 3),
(137, 137, 1500, 4),
(138, 138, 1500, 5),
(139, 139, 1500, 4),
(140, 140, 1500, 6),
(141, 141, 1500, 4),
(142, 142, 1500, 3),
(143, 143, 1500, 4),
(144, 144, 1500, 5),
(145, 145, 1500, 3),
(146, 146, 1500, 6),
(147, 147, 1500, 3),
(148, 148, 1500, 6),
(149, 149, 1500, 4),
(150, 150, 1500, 4),
(151, 151, 1500, 4),
(152, 152, 1500, 5),
(153, 153, 1500, 4),
(154, 154, 1500, 5),
(155, 155, 1500, 6),
(156, 156, 1500, 4),
(157, 157, 1500, 3),
(158, 158, 1500, 4),
(159, 159, 1500, 6),
(160, 160, 1500, 4),
(161, 161, 1500, 4),
(162, 162, 1500, 5),
(163, 163, 1500, 3),
(164, 164, 1500, 6),
(165, 165, 1500, 4),
(166, 166, 1500, 3),
(167, 167, 1500, 4),
(168, 168, 1500, 4),
(169, 169, 1500, 5),
(170, 170, 1500, 6),
(171, 171, 1500, 4),
(172, 172, 1500, 4),
(173, 173, 1500, 4),
(174, 174, 1500, 5),
(175, 175, 1500, 4),
(176, 176, 1500, 6),
(177, 177, 1500, 4),
(178, 178, 1500, 5),
(179, 179, 1500, 4),
(180, 180, 1500, 6),
(181, 181, 1500, 4),
(182, 182, 1500, 3),
(183, 183, 1500, 4),
(184, 184, 1500, 5),
(185, 185, 1500, 4),
(186, 186, 1500, 6),
(187, 187, 1500, 4),
(188, 188, 1500, 5),
(189, 189, 1500, 4),
(190, 190, 1500, 4),
(191, 191, 1500, 4),
(192, 192, 1500, 5),
(193, 193, 1500, 4),
(194, 194, 1500, 3),
(195, 195, 1500, 4),
(196, 196, 1500, 3),
(197, 197, 1500, 4),
(198, 198, 1500, 5),
(199, 199, 1500, 4),
(200, 200, 1500, 5),
(201, 201, 1500, 4),
(202, 202, 1500, 6),
(203, 203, 1500, 3),
(204, 204, 1500, 4),
(205, 205, 1500, 5),
(206, 206, 1500, 4),
(207, 207, 1500, 3),
(208, 208, 1500, 3),
(209, 209, 1500, 4),
(210, 210, 1500, 5),
(211, 211, 1500, 3),
(212, 212, 1500, 6),
(213, 213, 1500, 4),
(214, 214, 1500, 3),
(215, 215, 1500, 4),
(216, 216, 1500, 4),
(217, 217, 1500, 5),
(218, 218, 1500, 6),
(219, 219, 1500, 4),
(220, 220, 1500, 4),
(221, 221, 1500, 4),
(222, 222, 1500, 5),
(223, 223, 1500, 4),
(224, 224, 1500, 6),
(225, 225, 1500, 4),
(226, 226, 1500, 5),
(227, 227, 1500, 4),
(228, 228, 1500, 6),
(229, 229, 1500, 4),
(230, 230, 1500, 3),
(231, 231, 1500, 4),
(232, 232, 1500, 5),
(233, 233, 1500, 4),
(234, 234, 1500, 6),
(235, 235, 1500, 4),
(236, 236, 1500, 5),
(237, 237, 1500, 4),
(238, 238, 1500, 5),
(239, 239, 1500, 6),
(240, 240, 1500, 4),
(241, 241, 1500, 4),
(242, 242, 1500, 4),
(243, 243, 1500, 5),
(244, 244, 1500, 4),
(245, 245, 1500, 6),
(246, 246, 1500, 4),
(247, 247, 1500, 5),
(248, 248, 1500, 4),
(249, 249, 1500, 6),
(250, 250, 1500, 4),
(251, 251, 1500, 3),
(252, 252, 1500, 4),
(253, 253, 1500, 5),
(254, 254, 1500, 4),
(255, 255, 1500, 6),
(256, 256, 1500, 4),
(257, 257, 1500, 3),
(258, 258, 1500, 4),
(259, 259, 1500, 5),
(260, 260, 1500, 3),
(261, 261, 1500, 6);

-- 
-- Вывод данных для таблицы remont_basa
--
INSERT INTO remont_basa VALUES
(1, 'corolla', 'JHLRD88859C020595', 'крышка багажника', 'Оригинал', 0, 15400, 0, 0),
(2, 'corolla', 'JHLRD88859C020595', 'капот', '', 9400, 0, 0, 0),
(3, 'corolla', 'JHLRD88859C020595', 'передняя левая дверь', '', 0, 0, 0, 6000),
(4, 'corolla', 'JHLRD88859C020595', 'переднее левое крыло', '', 0, 0, 3000, 0),
(5, 'corolla', 'JHLRD88859C020595', 'заднее левое крыло', '', 9300, 0, 0, 0),
(6, 'corolla', 'JHLRD88859C020595', 'передняя правая дверь', 'Аналог', 0, 15400, 0, 0),
(7, 'corolla', 'JHLRD88859C020595', 'задняя правая дверь', 'БУ', 0, 9600, 0, 0),
(8, 'corolla', 'JHLRD88859C020595', 'переднее правое крыло', 'Оригинал', 0, 27600, 0, 0),
(9, 'camry', '3VWCM31Y25M363610', 'крыша', '', 0, 0, 0, 6000),
(10, 'camry', '3VWCM31Y25M363610', 'капот', '', 11700, 0, 0, 0),
(11, 'camry', '3VWCM31Y25M363610', 'передняя левая дверь', '', 0, 0, 0, 9000),
(12, 'camry', '3VWCM31Y25M363610', 'переднее левое крыло', '', 0, 0, 2200, 0),
(13, 'camry', '3VWCM31Y25M363610', 'задняя левая дверь', '', 0, 0, 1400, 0),
(14, 'camry', '3VWCM31Y25M363610', 'передняя правая дверь', 'Аналог', 0, 24400, 0, 0),
(15, 'rav4', '1GNSKJKJ6FR295279', 'крыша', 'Оригинал', 0, 34400, 0, 0),
(16, 'x5', '3GTU2VEC8EG212258', 'крыша', '', 0, 0, 0, 4500),
(17, 'x5', '3GTU2VEC8EG212258', 'капот', 'БУ', 0, 31600, 0, 0),
(18, 'x5', '3GTU2VEC8EG212258', 'передняя левая дверь', 'БУ', 0, 42400, 0, 0),
(19, 'x5', '3GTU2VEC8EG212258', 'переднее левое крыло', '', 0, 0, 3000, 0),
(20, 'x5', '3GTU2VEC8EG212258', 'задняя левая дверь', '', 0, 0, 0, 4500),
(21, 'polo', 'JM1BK123X41234567', 'крыша', '', 9400, 0, 0, 0),
(22, 'polo', 'JM1BK123X41234567', 'капот', '', 0, 0, 1400, 0),
(23, 'cx-5', '1FAFP55U91A263449', 'крыша', '', 8100, 0, 0, 0),
(24, 'civic', '4T3ZK3BB0AU047379', 'капот', '', 0, 0, 2200, 0),
(25, 'solaris', '3VWJB7AT4DM378215', 'крыша', 'Оригинал', 0, 29400, 0, 0),
(26, 'rio', '5NPEU46F36H085974', 'капот', '', 12100, 0, 0, 0),
(27, 'vesta', '1GC1KVE83FF199741', 'крыша', '', 0, 0, 0, 6000),
(28, 'kaptur', '5FNYF3H75FB034188', 'капот', 'Аналог', 0, 23600, 0, 0),
(29, 'duster', '1FAHP3FN2AW257149', 'крыша', '', 9100, 0, 0, 0),
(30, 'e-class', 'WDDLJ7GB0FA029645', 'капот', 'Оригинал', 0, 26400, 0, 0),
(31, 'sportage', '1HD1BNL31TY077630', 'крыша', '', 0, 0, 0, 6000),
(32, 'logan', 'WBAKE3C56DE766131', 'капот', '', 0, 0, 1900, 0),
(33, 'granta', 'KMHDN55D93U032109', 'крыша', '', 8900, 0, 0, 0),
(34, 'tucson', 'JN8AF5MV7ET311912', 'капот', '', 0, 0, 0, 6000),
(35, 'tiguan', 'WBAEE1419J2567297', 'крыша', 'Оригинал', 0, 25600, 0, 0),
(36, '5-series', '1GNEK13Z15R120035', 'капот', 'Оригинал', 0, 33600, 0, 0),
(37, 'cx-5', '1FAFP55U91A263449', 'крыша', '', 0, 0, 0, 7500),
(38, 'mazda6', '1FMCU9JD7AKD96321', 'крыша', 'Оригинал', 0, 39400, 0, 0);

-- 
-- Вывод данных для таблицы polirovka_elements
--
INSERT INTO polirovka_elements VALUES
(1, 800, 1, 4, 1, 1),
(2, 800, 2, 4, 2, 2),
(3, 800, 3, 4, 3, 3),
(4, 800, 2, 4, 2, 4),
(5, 800, 3, 4, 1, 5),
(6, 800, 3, 4, 3, 6),
(7, 800, 2, 4, 2, 7),
(8, 800, 1, 4, 1, 8),
(9, 800, 3, 4, 1, 9),
(10, 800, 2, 4, 2, 10),
(11, 800, 1, 4, 1, 11),
(12, 800, 3, 4, 2, 12),
(13, 800, 2, 4, 1, 13),
(14, 800, 3, 4, 3, 14),
(15, 800, 1, 4, 1, 15),
(16, 800, 3, 4, 2, 16),
(17, 800, 2, 4, 3, 17),
(18, 800, 3, 4, 1, 18),
(19, 800, 3, 4, 3, 19),
(20, 800, 1, 4, 1, 20),
(21, 800, 3, 4, 2, 21),
(22, 800, 2, 4, 3, 22),
(23, 800, 3, 4, 2, 23),
(24, 800, 3, 4, 1, 24),
(25, 800, 1, 4, 3, 25),
(26, 800, 3, 4, 2, 26),
(27, 800, 1, 4, 1, 27),
(28, 800, 3, 4, 1, 28),
(29, 800, 2, 4, 2, 29),
(30, 800, 3, 4, 1, 30),
(31, 800, 2, 4, 2, 31),
(32, 800, 3, 4, 1, 32),
(33, 800, 1, 4, 3, 33),
(34, 800, 3, 4, 2, 34),
(35, 800, 2, 4, 1, 35),
(36, 800, 1, 4, 1, 36),
(37, 800, 1, 4, 2, 37),
(38, 800, 3, 4, 3, 38),
(39, 800, 2, 4, 2, 39),
(40, 800, 3, 4, 1, 40),
(41, 800, 2, 4, 3, 41),
(42, 800, 1, 4, 2, 42),
(43, 800, 3, 4, 1, 43),
(44, 800, 2, 4, 2, 44),
(45, 800, 3, 4, 3, 45),
(46, 800, 2, 4, 2, 46),
(47, 800, 3, 4, 1, 47),
(48, 800, 2, 4, 1, 48),
(49, 800, 3, 4, 2, 49),
(50, 800, 1, 4, 2, 50),
(51, 800, 1, 4, 2, 51),
(52, 800, 3, 4, 3, 52),
(53, 800, 2, 4, 2, 53),
(54, 800, 3, 4, 1, 54),
(55, 800, 2, 4, 1, 55),
(56, 800, 1, 4, 2, 56),
(57, 800, 3, 4, 3, 57),
(58, 800, 1, 4, 2, 58),
(59, 800, 3, 4, 1, 59),
(60, 800, 2, 4, 1, 60),
(61, 800, 3, 4, 2, 61),
(62, 800, 2, 4, 3, 62),
(63, 800, 3, 4, 2, 63),
(64, 800, 1, 4, 1, 64),
(65, 800, 3, 4, 1, 65),
(66, 800, 2, 4, 2, 66),
(67, 800, 2, 4, 2, 67),
(68, 800, 3, 4, 2, 68),
(69, 800, 1, 4, 1, 69),
(70, 800, 3, 4, 2, 70),
(71, 800, 2, 4, 2, 71),
(72, 800, 2, 4, 2, 72),
(73, 800, 3, 4, 2, 73),
(74, 800, 3, 4, 2, 74),
(75, 800, 1, 4, 1, 75),
(76, 800, 2, 4, 2, 76),
(77, 800, 2, 4, 1, 77),
(78, 800, 2, 4, 2, 78),
(79, 800, 3, 4, 1, 79),
(80, 800, 2, 4, 2, 80),
(81, 800, 2, 4, 3, 81),
(82, 800, 3, 4, 2, 82),
(83, 800, 2, 4, 1, 83),
(84, 800, 3, 4, 2, 84),
(85, 800, 2, 4, 1, 85),
(86, 800, 1, 4, 2, 86),
(87, 800, 3, 4, 2, 87),
(88, 800, 2, 4, 1, 88),
(89, 800, 3, 4, 2, 89),
(90, 800, 2, 4, 1, 90),
(91, 800, 3, 4, 2, 91),
(92, 800, 1, 4, 3, 92),
(93, 800, 3, 4, 2, 93),
(94, 800, 2, 4, 1, 94),
(95, 800, 1, 4, 2, 95),
(96, 800, 2, 4, 3, 96),
(97, 800, 3, 4, 2, 97),
(98, 800, 2, 4, 1, 98),
(99, 800, 3, 4, 3, 99),
(100, 800, 3, 4, 2, 100),
(101, 800, 2, 4, 1, 101),
(102, 800, 1, 4, 1, 102),
(103, 800, 3, 4, 2, 103),
(104, 800, 2, 4, 1, 104),
(105, 800, 1, 4, 2, 105),
(106, 800, 3, 4, 1, 106),
(107, 800, 2, 4, 3, 107),
(108, 800, 3, 4, 1, 108),
(109, 800, 1, 4, 2, 109),
(110, 800, 3, 4, 3, 110),
(111, 800, 2, 4, 1, 111),
(112, 800, 3, 4, 3, 112),
(113, 800, 3, 4, 1, 113),
(114, 800, 1, 4, 2, 114),
(115, 800, 3, 4, 3, 115),
(116, 800, 2, 4, 2, 116),
(117, 800, 3, 4, 1, 117),
(118, 800, 3, 4, 3, 118),
(119, 800, 1, 4, 2, 119),
(120, 800, 3, 4, 1, 120),
(121, 800, 1, 4, 1, 121),
(122, 800, 3, 4, 2, 122),
(123, 800, 2, 4, 1, 123),
(124, 800, 1, 4, 2, 124),
(125, 800, 2, 4, 1, 125),
(126, 800, 3, 4, 3, 126),
(127, 800, 2, 4, 2, 127),
(128, 800, 3, 4, 1, 128),
(129, 800, 3, 4, 1, 129),
(130, 800, 2, 4, 2, 130),
(131, 800, 1, 4, 3, 131),
(132, 800, 3, 4, 2, 132),
(133, 800, 2, 4, 1, 133),
(134, 800, 1, 4, 3, 134),
(135, 800, 3, 4, 2, 135),
(136, 800, 2, 4, 1, 136),
(137, 800, 3, 4, 2, 137),
(138, 800, 1, 4, 3, 138),
(139, 800, 3, 4, 2, 139),
(140, 800, 2, 4, 1, 140),
(141, 800, 3, 4, 2, 141),
(142, 800, 1, 4, 3, 142),
(143, 800, 2, 4, 2, 143),
(144, 800, 3, 4, 1, 144),
(145, 800, 2, 4, 3, 145),
(146, 800, 3, 4, 2, 146),
(147, 800, 3, 4, 1, 147),
(148, 800, 2, 4, 1, 148),
(149, 800, 1, 4, 2, 149),
(150, 800, 3, 4, 1, 150),
(151, 800, 2, 4, 2, 151),
(152, 800, 1, 4, 1, 152),
(153, 800, 3, 4, 3, 153),
(154, 800, 2, 4, 1, 154),
(155, 800, 3, 4, 2, 155),
(156, 800, 1, 4, 3, 156),
(157, 800, 3, 4, 1, 157),
(158, 800, 2, 4, 3, 158),
(159, 800, 3, 4, 1, 159),
(160, 800, 3, 4, 2, 160),
(161, 800, 1, 4, 3, 161),
(162, 800, 3, 4, 2, 162),
(163, 800, 2, 4, 1, 163),
(164, 800, 3, 4, 3, 164),
(165, 800, 3, 4, 2, 165),
(166, 800, 1, 4, 1, 166),
(167, 800, 3, 4, 1, 167),
(168, 800, 1, 4, 2, 168),
(169, 800, 3, 4, 1, 169),
(170, 800, 2, 4, 2, 170),
(171, 800, 3, 4, 1, 171),
(172, 800, 2, 4, 3, 172),
(173, 800, 3, 4, 2, 173),
(174, 800, 1, 4, 1, 174),
(175, 800, 3, 4, 1, 175),
(176, 800, 2, 4, 2, 176),
(177, 800, 1, 4, 3, 177),
(178, 800, 1, 4, 2, 178),
(179, 800, 3, 4, 1, 179),
(180, 800, 2, 4, 3, 180),
(181, 800, 3, 4, 2, 181),
(182, 800, 2, 4, 1, 182),
(183, 800, 1, 4, 2, 183),
(184, 800, 3, 4, 3, 184),
(185, 800, 2, 4, 2, 185),
(186, 800, 3, 4, 1, 186),
(187, 800, 2, 4, 1, 187),
(188, 800, 3, 4, 2, 188),
(189, 800, 2, 4, 2, 189),
(190, 800, 3, 4, 2, 190),
(191, 800, 1, 4, 3, 191),
(192, 800, 1, 4, 2, 192),
(193, 800, 3, 4, 1, 193),
(194, 800, 2, 4, 1, 194),
(195, 800, 3, 4, 2, 195),
(196, 800, 2, 4, 3, 196),
(197, 800, 1, 4, 2, 197),
(198, 800, 3, 4, 1, 198),
(199, 800, 1, 4, 1, 199),
(200, 800, 3, 4, 2, 200),
(201, 800, 2, 4, 3, 201),
(202, 800, 3, 4, 2, 202),
(203, 800, 2, 4, 1, 203),
(204, 800, 3, 4, 1, 204),
(205, 800, 1, 4, 2, 205),
(206, 800, 3, 4, 2, 206),
(207, 800, 2, 4, 2, 207),
(208, 800, 2, 4, 1, 208),
(209, 800, 3, 4, 2, 209),
(210, 800, 1, 4, 2, 210),
(211, 800, 3, 4, 1, 211),
(212, 800, 2, 4, 2, 212),
(213, 800, 3, 4, 1, 213),
(214, 800, 1, 4, 2, 214),
(215, 800, 3, 4, 3, 215),
(216, 800, 2, 4, 2, 216),
(217, 800, 1, 4, 1, 217),
(218, 800, 1, 4, 2, 218),
(219, 800, 3, 4, 1, 219),
(220, 800, 2, 4, 2, 220),
(221, 800, 3, 4, 2, 221),
(222, 800, 2, 4, 1, 222),
(223, 800, 1, 4, 2, 223),
(224, 800, 3, 4, 1, 224),
(225, 800, 2, 4, 2, 225),
(226, 800, 3, 4, 3, 226),
(227, 800, 2, 4, 2, 227),
(228, 800, 3, 4, 1, 228),
(229, 800, 2, 4, 2, 229),
(230, 800, 3, 4, 3, 230),
(231, 800, 1, 4, 2, 231),
(232, 800, 1, 4, 1, 232),
(233, 800, 3, 4, 3, 233),
(234, 800, 2, 4, 2, 234),
(235, 800, 3, 4, 1, 235),
(236, 800, 2, 4, 1, 236),
(237, 800, 1, 4, 2, 237),
(238, 800, 3, 4, 3, 237),
(239, 800, 1, 4, 2, 238),
(240, 800, 2, 4, 1, 239),
(241, 800, 3, 4, 1, 240),
(242, 800, 2, 4, 2, 241),
(243, 800, 3, 4, 2, 242),
(244, 800, 3, 4, 2, 243),
(245, 800, 2, 4, 1, 244),
(246, 800, 1, 4, 2, 245),
(247, 800, 3, 4, 2, 246),
(248, 800, 2, 4, 1, 247),
(249, 800, 1, 4, 2, 248),
(250, 800, 3, 4, 1, 249),
(251, 800, 2, 4, 2, 250),
(252, 800, 3, 4, 3, 251),
(253, 800, 1, 4, 2, 252),
(254, 800, 3, 4, 1, 253),
(255, 800, 2, 4, 2, 254),
(256, 800, 3, 4, 1, 255),
(257, 800, 3, 4, 2, 256),
(258, 800, 1, 4, 2, 257),
(259, 800, 3, 4, 1, 258),
(260, 800, 2, 4, 2, 259),
(261, 800, 3, 4, 1, 260);

-- 
-- Вывод данных для таблицы pokraska_elements
--
INSERT INTO pokraska_elements VALUES
(1, 800, 3, 2, 3, 1, 1),
(2, 800, 5, 1, 5, 1, 1),
(3, 800, 3, 3, 3, 1, 1),
(4, 800, 3, 2, 3, 2, 1),
(5, 800, 5, 1, 5, 2, 1),
(6, 800, 3, 3, 3, 2, 1),
(7, 800, 2, 2, 2, 3, 1),
(8, 800, 3, 1, 4, 3, 1),
(9, 800, 2, 3, 3, 3, 1),
(10, 800, 4, 2, 2, 4, 1),
(11, 800, 2, 1, 4, 4, 1),
(12, 800, 3, 3, 2, 4, 1),
(13, 800, 2, 2, 3, 5, 1),
(14, 800, 5, 1, 3, 5, 1),
(15, 800, 2, 3, 5, 5, 1),
(16, 800, 2, 2, 2, 6, 1),
(17, 800, 4, 1, 3, 6, 1),
(18, 800, 2, 3, 2, 6, 1),
(19, 800, 3, 2, 4, 7, 1),
(20, 800, 2, 1, 2, 7, 1),
(21, 800, 4, 3, 5, 7, 1),
(22, 800, 2, 2, 2, 8, 1),
(23, 800, 2, 1, 3, 8, 1),
(24, 800, 5, 3, 2, 8, 1),
(25, 800, 2, 2, 4, 9, 1),
(26, 800, 3, 1, 2, 9, 1),
(27, 800, 2, 3, 5, 9, 1),
(28, 800, 5, 2, 2, 10, 1),
(29, 800, 2, 1, 2, 10, 1),
(30, 800, 2, 3, 4, 10, 1),
(31, 800, 3, 2, 2, 11, 1),
(32, 800, 2, 1, 2, 11, 1),
(33, 800, 4, 3, 5, 11, 1),
(34, 800, 2, 2, 2, 12, 1),
(35, 800, 3, 1, 3, 12, 1),
(36, 800, 2, 3, 2, 12, 1),
(37, 800, 4, 2, 4, 13, 1),
(38, 800, 2, 1, 2, 13, 1),
(39, 800, 3, 3, 4, 13, 1),
(40, 800, 2, 2, 4, 14, 1),
(41, 800, 4, 1, 2, 14, 1),
(42, 800, 2, 3, 5, 14, 1),
(43, 800, 5, 2, 2, 15, 1),
(44, 800, 2, 1, 4, 15, 1),
(45, 800, 2, 3, 2, 15, 1),
(46, 800, 5, 2, 5, 16, 1),
(47, 800, 2, 1, 2, 16, 1),
(48, 800, 2, 3, 3, 16, 1),
(49, 800, 3, 2, 2, 17, 1),
(50, 800, 2, 1, 4, 17, 1),
(51, 800, 5, 3, 2, 17, 1),
(52, 800, 2, 2, 5, 18, 1),
(53, 800, 3, 1, 2, 18, 1),
(54, 800, 2, 3, 3, 18, 1),
(55, 800, 2, 2, 2, 19, 1),
(56, 800, 2, 1, 5, 19, 1),
(57, 800, 5, 3, 2, 19, 1),
(58, 800, 2, 2, 2, 20, 1),
(59, 800, 3, 1, 4, 20, 1),
(60, 800, 2, 3, 2, 20, 1),
(61, 800, 4, 2, 4, 21, 1),
(62, 800, 2, 1, 2, 21, 1),
(63, 800, 5, 3, 4, 21, 1),
(64, 800, 2, 2, 2, 22, 1),
(65, 800, 2, 1, 3, 22, 1),
(66, 800, 5, 3, 2, 22, 1),
(67, 800, 2, 2, 4, 23, 1),
(68, 800, 3, 1, 2, 23, 1),
(69, 800, 2, 3, 3, 23, 1),
(70, 800, 4, 2, 2, 24, 1),
(71, 800, 2, 1, 5, 24, 1),
(72, 800, 5, 3, 2, 24, 1),
(73, 800, 2, 2, 3, 25, 1),
(74, 800, 3, 1, 2, 25, 1),
(75, 800, 2, 3, 5, 25, 1),
(76, 800, 4, 2, 2, 26, 1),
(77, 800, 2, 1, 4, 26, 1),
(78, 800, 4, 3, 2, 26, 1),
(79, 800, 2, 2, 3, 27, 1),
(80, 800, 5, 1, 2, 27, 1),
(81, 800, 2, 3, 4, 27, 1),
(82, 800, 3, 2, 2, 28, 1),
(83, 800, 2, 1, 3, 28, 1),
(84, 800, 2, 3, 2, 28, 1),
(85, 800, 3, 2, 4, 29, 1),
(86, 800, 2, 1, 2, 29, 1),
(87, 800, 4, 3, 3, 29, 1),
(88, 800, 2, 2, 2, 30, 1),
(89, 800, 3, 1, 4, 30, 1),
(90, 800, 2, 3, 2, 30, 1),
(91, 800, 4, 2, 3, 31, 1),
(92, 800, 2, 1, 2, 31, 1),
(93, 800, 4, 3, 4, 31, 1),
(94, 800, 2, 2, 2, 32, 1),
(95, 800, 3, 1, 3, 32, 1),
(96, 800, 2, 3, 2, 32, 1),
(97, 800, 5, 2, 4, 33, 1),
(98, 800, 2, 1, 2, 33, 1),
(99, 800, 3, 3, 3, 33, 1),
(100, 800, 2, 2, 2, 34, 1),
(101, 800, 4, 1, 3, 34, 1),
(102, 800, 2, 3, 2, 34, 1),
(103, 800, 3, 2, 2, 35, 1),
(104, 800, 2, 1, 3, 35, 1),
(105, 800, 4, 3, 2, 35, 1),
(106, 800, 2, 2, 4, 36, 1),
(107, 800, 3, 1, 2, 36, 1),
(108, 800, 2, 3, 3, 36, 1),
(109, 800, 4, 2, 2, 37, 1),
(110, 800, 2, 1, 4, 37, 1),
(111, 800, 3, 3, 2, 37, 1),
(112, 800, 2, 2, 3, 38, 1),
(113, 800, 5, 1, 2, 38, 1),
(114, 800, 2, 3, 4, 38, 1),
(115, 800, 4, 2, 2, 39, 1),
(116, 800, 2, 1, 3, 39, 1),
(117, 800, 2, 3, 2, 39, 1),
(118, 800, 5, 2, 4, 40, 1),
(119, 800, 2, 1, 2, 40, 1),
(120, 800, 3, 3, 3, 40, 1),
(121, 800, 4, 2, 2, 41, 1),
(122, 800, 2, 1, 4, 41, 1),
(123, 800, 3, 3, 2, 41, 1),
(124, 800, 2, 2, 3, 42, 1),
(125, 800, 4, 1, 2, 42, 1),
(126, 800, 2, 3, 4, 42, 1),
(127, 800, 3, 2, 2, 43, 1),
(128, 800, 2, 1, 3, 43, 1),
(129, 800, 5, 3, 2, 43, 1),
(130, 800, 2, 2, 4, 44, 1),
(131, 800, 4, 1, 2, 44, 1),
(132, 800, 2, 3, 3, 44, 1),
(133, 800, 2, 2, 2, 45, 1),
(134, 800, 2, 1, 5, 45, 1),
(135, 800, 4, 3, 2, 45, 1),
(136, 800, 2, 2, 4, 46, 1),
(137, 800, 3, 1, 2, 46, 1),
(138, 800, 2, 3, 5, 46, 1),
(139, 800, 5, 2, 3, 47, 1),
(140, 800, 3, 1, 4, 47, 1),
(141, 800, 3, 3, 3, 47, 1),
(142, 800, 3, 2, 3, 48, 1),
(143, 800, 4, 1, 3, 48, 1),
(144, 800, 3, 3, 4, 48, 1),
(145, 800, 5, 2, 3, 49, 1),
(146, 800, 3, 1, 4, 49, 1),
(147, 800, 3, 3, 3, 49, 1),
(148, 800, 3, 2, 2, 50, 1),
(149, 800, 2, 1, 3, 50, 1),
(150, 800, 3, 3, 2, 50, 1),
(151, 800, 4, 2, 3, 51, 1),
(152, 800, 3, 1, 4, 51, 1),
(153, 800, 4, 3, 3, 51, 1),
(154, 800, 3, 2, 2, 52, 1),
(155, 800, 2, 1, 3, 52, 1),
(156, 800, 3, 3, 4, 52, 1),
(157, 800, 4, 2, 3, 53, 1),
(158, 800, 3, 1, 2, 53, 1),
(159, 800, 2, 3, 5, 53, 1),
(160, 800, 3, 2, 3, 54, 1),
(161, 800, 5, 1, 2, 54, 1),
(162, 800, 3, 3, 3, 54, 1),
(163, 800, 2, 2, 4, 55, 1),
(164, 800, 3, 1, 3, 55, 1),
(165, 800, 3, 3, 2, 55, 1),
(166, 800, 4, 2, 5, 56, 1),
(167, 800, 3, 1, 3, 56, 1),
(168, 800, 3, 3, 4, 56, 1),
(169, 800, 4, 2, 3, 57, 1),
(170, 800, 3, 1, 2, 57, 1),
(171, 800, 5, 3, 3, 57, 1),
(172, 800, 3, 2, 4, 58, 1),
(173, 800, 3, 1, 3, 58, 1),
(174, 800, 3, 3, 5, 58, 1),
(175, 800, 4, 2, 3, 59, 1),
(176, 800, 3, 1, 2, 59, 1),
(177, 800, 2, 3, 3, 59, 1),
(178, 800, 3, 2, 5, 60, 1),
(179, 800, 2, 1, 3, 60, 1),
(180, 800, 3, 3, 4, 60, 1),
(181, 800, 4, 2, 3, 61, 1),
(182, 800, 3, 1, 2, 61, 1),
(183, 800, 2, 3, 3, 61, 1),
(184, 800, 3, 2, 4, 62, 1),
(185, 800, 2, 1, 3, 62, 1),
(186, 800, 3, 3, 2, 62, 1),
(187, 800, 4, 2, 3, 63, 1),
(188, 800, 3, 1, 2, 63, 1),
(189, 800, 2, 3, 3, 63, 1),
(190, 800, 3, 2, 4, 64, 1),
(191, 800, 4, 1, 3, 64, 1),
(192, 800, 3, 3, 5, 64, 1),
(193, 800, 2, 2, 3, 65, 1),
(194, 800, 3, 1, 2, 65, 1),
(195, 800, 4, 3, 3, 65, 1),
(196, 800, 3, 2, 5, 66, 1),
(197, 800, 2, 1, 3, 66, 1),
(198, 800, 3, 3, 4, 66, 1),
(199, 800, 4, 2, 3, 67, 1),
(200, 800, 3, 1, 2, 67, 1),
(201, 800, 2, 3, 3, 67, 1),
(202, 800, 3, 2, 4, 68, 1),
(203, 800, 4, 1, 3, 68, 1),
(204, 800, 3, 3, 4, 68, 1),
(205, 800, 2, 2, 3, 69, 1),
(206, 800, 3, 1, 5, 69, 1),
(207, 800, 4, 3, 3, 69, 1),
(208, 800, 3, 2, 2, 70, 1),
(209, 800, 2, 1, 3, 70, 1),
(210, 800, 3, 3, 4, 70, 1),
(211, 800, 4, 2, 3, 71, 1),
(212, 800, 3, 1, 5, 71, 1),
(213, 800, 5, 3, 3, 71, 1),
(214, 800, 3, 2, 2, 72, 1),
(215, 800, 2, 1, 3, 72, 1),
(216, 800, 3, 3, 5, 72, 1),
(217, 800, 4, 2, 3, 73, 1),
(218, 800, 3, 1, 2, 73, 1),
(219, 800, 5, 3, 3, 73, 1),
(220, 800, 3, 2, 5, 74, 1),
(221, 800, 2, 1, 3, 74, 1),
(222, 800, 3, 3, 2, 74, 1),
(223, 800, 4, 2, 3, 75, 1),
(224, 800, 3, 1, 4, 75, 1),
(225, 800, 5, 3, 3, 75, 1),
(226, 800, 3, 2, 4, 76, 1),
(227, 800, 2, 1, 3, 76, 1),
(228, 800, 3, 3, 4, 76, 1),
(229, 800, 4, 2, 2, 77, 1),
(230, 800, 3, 1, 3, 77, 1),
(231, 800, 5, 3, 4, 77, 1),
(232, 800, 3, 2, 3, 78, 1),
(233, 800, 5, 1, 5, 78, 1),
(234, 800, 3, 3, 3, 78, 1),
(235, 800, 4, 2, 4, 79, 1),
(236, 800, 3, 1, 3, 79, 1),
(237, 800, 5, 3, 5, 79, 1),
(238, 800, 3, 2, 3, 80, 1),
(239, 800, 5, 1, 4, 80, 1),
(240, 800, 3, 3, 3, 80, 1),
(241, 800, 4, 2, 4, 81, 1),
(242, 800, 3, 1, 5, 81, 1),
(243, 800, 5, 3, 3, 81, 1),
(244, 800, 3, 2, 4, 82, 1),
(245, 800, 4, 1, 3, 82, 1),
(246, 800, 3, 3, 5, 82, 1),
(247, 800, 5, 2, 3, 83, 1),
(248, 800, 3, 1, 4, 83, 1),
(249, 800, 2, 3, 3, 83, 1),
(250, 800, 3, 2, 5, 84, 1),
(251, 800, 3, 1, 3, 84, 1),
(252, 800, 3, 3, 4, 84, 1),
(253, 800, 4, 2, 3, 85, 1),
(254, 800, 3, 1, 2, 85, 1),
(255, 800, 5, 3, 3, 85, 1),
(256, 800, 3, 2, 2, 86, 1),
(257, 800, 3, 1, 3, 86, 1),
(258, 800, 3, 3, 4, 86, 1),
(259, 800, 4, 2, 3, 87, 1),
(260, 800, 3, 1, 2, 87, 1),
(261, 800, 3, 3, 3, 87, 1),
(262, 800, 4, 2, 4, 88, 1),
(263, 800, 3, 1, 3, 88, 1),
(264, 800, 4, 3, 5, 88, 1),
(265, 800, 3, 2, 3, 89, 1),
(266, 800, 2, 1, 4, 89, 1),
(267, 800, 3, 3, 3, 89, 1),
(268, 800, 4, 2, 5, 90, 1),
(269, 800, 3, 1, 3, 90, 1),
(270, 800, 2, 3, 3, 90, 1),
(271, 800, 3, 2, 3, 91, 1),
(272, 800, 5, 1, 2, 91, 1),
(273, 800, 3, 3, 3, 91, 1),
(274, 800, 2, 2, 4, 92, 1),
(275, 800, 3, 1, 3, 92, 1),
(276, 800, 3, 3, 2, 92, 1),
(277, 800, 3, 2, 2, 93, 1),
(278, 800, 3, 1, 2, 93, 1),
(279, 800, 2, 3, 2, 93, 1),
(280, 800, 3, 2, 3, 94, 1),
(281, 800, 5, 1, 5, 94, 1),
(282, 800, 3, 3, 3, 94, 1),
(283, 800, 3, 2, 3, 95, 1),
(284, 800, 5, 1, 5, 95, 1),
(285, 800, 3, 3, 3, 95, 1),
(286, 800, 2, 2, 2, 96, 1),
(287, 800, 3, 1, 4, 96, 1),
(288, 800, 2, 3, 3, 96, 1),
(289, 800, 4, 2, 2, 97, 1),
(290, 800, 2, 1, 4, 97, 1),
(291, 800, 3, 3, 2, 97, 1),
(292, 800, 2, 2, 3, 98, 1),
(293, 800, 5, 1, 3, 98, 1),
(294, 800, 2, 3, 5, 98, 1),
(295, 800, 2, 2, 2, 99, 1),
(296, 800, 4, 1, 3, 99, 1),
(297, 800, 2, 3, 2, 99, 1),
(298, 800, 3, 2, 4, 100, 1),
(299, 800, 2, 1, 2, 100, 1),
(300, 800, 4, 3, 5, 100, 1),
(301, 800, 2, 2, 2, 101, 1),
(302, 800, 2, 1, 3, 101, 1),
(303, 800, 5, 3, 2, 101, 1),
(304, 800, 2, 2, 4, 102, 1),
(305, 800, 3, 1, 2, 102, 1),
(306, 800, 2, 3, 5, 102, 1),
(307, 800, 5, 2, 2, 103, 1),
(308, 800, 2, 1, 2, 103, 1),
(309, 800, 2, 3, 4, 103, 1),
(310, 800, 3, 2, 2, 104, 1),
(311, 800, 2, 1, 2, 104, 1),
(312, 800, 4, 3, 5, 104, 1),
(313, 800, 2, 2, 2, 105, 1),
(314, 800, 3, 1, 3, 105, 1),
(315, 800, 2, 3, 2, 105, 1),
(316, 800, 4, 2, 4, 106, 1),
(317, 800, 2, 1, 2, 106, 1),
(318, 800, 3, 3, 4, 106, 1),
(319, 800, 2, 2, 4, 107, 1),
(320, 800, 4, 1, 2, 107, 1),
(321, 800, 2, 3, 5, 107, 1),
(322, 800, 5, 2, 2, 108, 1),
(323, 800, 2, 1, 3, 108, 1),
(324, 800, 2, 3, 5, 108, 1),
(325, 800, 5, 2, 3, 109, 1),
(326, 800, 2, 1, 3, 109, 1),
(327, 800, 2, 3, 5, 109, 1),
(328, 800, 3, 2, 3, 110, 1),
(329, 800, 2, 1, 2, 110, 1),
(330, 800, 5, 3, 4, 110, 1),
(331, 800, 2, 2, 3, 111, 1),
(332, 800, 3, 1, 2, 111, 1),
(333, 800, 5, 3, 4, 111, 1),
(334, 800, 3, 2, 2, 112, 1),
(335, 800, 3, 1, 3, 112, 1),
(336, 800, 5, 3, 3, 112, 1),
(337, 800, 3, 2, 5, 113, 1),
(338, 800, 2, 1, 2, 113, 1),
(339, 800, 3, 3, 3, 113, 1),
(340, 800, 2, 2, 2, 114, 1),
(341, 800, 4, 1, 4, 114, 1),
(342, 800, 2, 3, 2, 114, 1),
(343, 800, 3, 2, 5, 115, 1),
(344, 800, 2, 1, 2, 115, 1),
(345, 800, 5, 3, 3, 115, 1),
(346, 800, 2, 2, 2, 116, 1),
(347, 800, 2, 1, 4, 116, 1),
(348, 800, 4, 3, 2, 116, 1),
(349, 800, 2, 2, 5, 117, 1),
(350, 800, 3, 1, 2, 117, 1),
(351, 800, 2, 3, 2, 117, 1),
(352, 800, 4, 2, 4, 118, 1),
(353, 800, 2, 1, 2, 118, 1),
(354, 800, 2, 3, 2, 118, 1),
(355, 800, 5, 2, 5, 119, 1),
(356, 800, 2, 1, 2, 119, 1),
(357, 800, 3, 3, 3, 119, 1),
(358, 800, 2, 2, 2, 120, 1),
(359, 800, 5, 1, 4, 120, 1),
(360, 800, 2, 3, 2, 120, 1),
(361, 800, 2, 2, 4, 121, 1),
(362, 800, 3, 1, 4, 121, 1),
(363, 800, 2, 3, 2, 121, 1),
(364, 800, 4, 2, 5, 122, 1),
(365, 800, 2, 1, 3, 122, 1),
(366, 800, 3, 3, 5, 122, 1),
(367, 800, 2, 2, 3, 123, 1),
(368, 800, 4, 1, 3, 123, 1),
(369, 800, 2, 3, 5, 123, 1),
(370, 800, 3, 2, 3, 124, 1),
(371, 800, 2, 1, 2, 124, 1),
(372, 800, 4, 3, 4, 124, 1),
(373, 800, 2, 2, 3, 125, 1),
(374, 800, 5, 1, 2, 125, 1),
(375, 800, 2, 3, 4, 125, 1),
(376, 800, 2, 2, 2, 126, 1),
(377, 800, 5, 1, 3, 126, 1),
(378, 800, 2, 3, 3, 126, 1),
(379, 800, 2, 2, 5, 127, 1),
(380, 800, 3, 1, 2, 127, 1),
(381, 800, 2, 3, 3, 127, 1),
(382, 800, 5, 2, 2, 128, 1),
(383, 800, 2, 1, 4, 128, 1),
(384, 800, 3, 3, 2, 128, 1),
(385, 800, 2, 2, 5, 129, 1),
(386, 800, 3, 1, 2, 129, 1),
(387, 800, 5, 3, 3, 129, 1),
(388, 800, 3, 2, 2, 130, 1),
(389, 800, 3, 1, 4, 130, 1),
(390, 800, 5, 3, 2, 130, 1),
(391, 800, 3, 2, 5, 131, 1),
(392, 800, 2, 1, 2, 131, 1),
(393, 800, 3, 3, 2, 131, 1),
(394, 800, 2, 2, 4, 132, 1),
(395, 800, 4, 1, 2, 132, 1),
(396, 800, 2, 3, 2, 132, 1),
(397, 800, 3, 2, 5, 133, 1),
(398, 800, 2, 1, 2, 133, 1),
(399, 800, 5, 3, 3, 133, 1),
(400, 800, 2, 2, 2, 134, 1),
(401, 800, 2, 1, 4, 134, 1),
(402, 800, 4, 3, 2, 134, 1),
(403, 800, 2, 2, 4, 135, 1),
(404, 800, 3, 1, 4, 135, 1),
(405, 800, 2, 3, 2, 135, 1),
(406, 800, 4, 2, 5, 136, 1),
(407, 800, 2, 1, 2, 136, 1),
(408, 800, 2, 3, 4, 136, 1),
(409, 800, 5, 2, 3, 137, 1),
(410, 800, 2, 1, 5, 137, 1),
(411, 800, 3, 3, 3, 137, 1),
(412, 800, 2, 2, 3, 138, 1),
(413, 800, 5, 1, 5, 138, 1),
(414, 800, 2, 3, 3, 138, 1),
(415, 800, 2, 2, 2, 139, 1),
(416, 800, 3, 1, 4, 139, 1),
(417, 800, 2, 3, 3, 139, 1),
(418, 800, 4, 2, 2, 140, 1),
(419, 800, 2, 1, 4, 140, 1),
(420, 800, 3, 3, 2, 140, 1),
(421, 800, 2, 2, 3, 141, 1),
(422, 800, 4, 1, 3, 141, 1),
(423, 800, 2, 3, 5, 141, 1),
(424, 800, 3, 2, 3, 142, 2),
(425, 800, 5, 1, 5, 142, 2),
(426, 800, 3, 3, 3, 142, 2),
(427, 800, 3, 2, 3, 143, 2),
(428, 800, 5, 1, 5, 143, 2),
(429, 800, 3, 3, 3, 143, 2),
(430, 800, 2, 2, 2, 144, 2),
(431, 800, 3, 1, 4, 144, 2),
(432, 800, 2, 3, 3, 144, 2),
(433, 800, 4, 2, 2, 145, 2),
(434, 800, 2, 1, 4, 145, 2),
(435, 800, 3, 3, 2, 145, 2),
(436, 800, 2, 2, 3, 146, 2),
(437, 800, 5, 1, 3, 146, 2),
(438, 800, 2, 3, 5, 146, 2),
(439, 800, 2, 2, 2, 147, 2),
(440, 800, 4, 1, 3, 147, 2),
(441, 800, 2, 3, 2, 147, 2),
(442, 800, 3, 2, 4, 148, 2),
(443, 800, 2, 1, 2, 148, 2),
(444, 800, 4, 3, 5, 148, 2),
(445, 800, 2, 2, 2, 149, 2),
(446, 800, 2, 1, 3, 149, 2),
(447, 800, 5, 3, 2, 149, 2),
(448, 800, 2, 2, 4, 150, 2),
(449, 800, 3, 1, 2, 150, 2),
(450, 800, 2, 3, 5, 150, 2),
(451, 800, 5, 2, 2, 151, 2),
(452, 800, 2, 1, 2, 151, 2),
(453, 800, 2, 3, 4, 151, 2),
(454, 800, 3, 2, 2, 152, 2),
(455, 800, 2, 1, 2, 152, 2),
(456, 800, 4, 3, 5, 152, 2),
(457, 800, 2, 2, 2, 153, 2),
(458, 800, 3, 1, 3, 153, 2),
(459, 800, 2, 3, 2, 153, 2),
(460, 800, 4, 2, 4, 154, 2),
(461, 800, 2, 1, 2, 154, 2),
(462, 800, 3, 3, 4, 154, 2),
(463, 800, 2, 2, 4, 155, 2),
(464, 800, 4, 1, 2, 155, 2),
(465, 800, 2, 3, 5, 155, 2),
(466, 800, 5, 2, 2, 156, 2),
(467, 800, 2, 1, 4, 156, 2),
(468, 800, 2, 3, 2, 156, 2),
(469, 800, 5, 2, 5, 157, 2),
(470, 800, 2, 1, 2, 157, 2),
(471, 800, 2, 3, 3, 157, 2),
(472, 800, 3, 2, 2, 158, 2),
(473, 800, 2, 1, 4, 158, 2),
(474, 800, 5, 3, 2, 158, 2),
(475, 800, 2, 2, 5, 159, 2),
(476, 800, 3, 1, 2, 159, 2),
(477, 800, 2, 3, 3, 159, 2),
(478, 800, 2, 2, 2, 160, 2),
(479, 800, 2, 1, 5, 160, 2),
(480, 800, 5, 3, 2, 160, 2),
(481, 800, 2, 2, 2, 161, 2),
(482, 800, 3, 1, 4, 161, 2),
(483, 800, 2, 3, 2, 161, 2),
(484, 800, 4, 2, 4, 162, 2),
(485, 800, 2, 1, 2, 162, 2),
(486, 800, 5, 3, 4, 162, 2),
(487, 800, 2, 2, 2, 163, 2),
(488, 800, 2, 1, 3, 163, 2),
(489, 800, 5, 3, 2, 163, 2),
(490, 800, 2, 2, 4, 164, 2),
(491, 800, 3, 1, 2, 164, 2),
(492, 800, 2, 3, 3, 164, 2),
(493, 800, 4, 2, 2, 165, 2),
(494, 800, 2, 1, 5, 165, 2),
(495, 800, 5, 3, 2, 165, 2),
(496, 800, 2, 2, 3, 166, 2),
(497, 800, 3, 1, 2, 166, 2),
(498, 800, 2, 3, 5, 166, 2),
(499, 800, 4, 2, 2, 167, 2),
(500, 800, 2, 1, 4, 167, 2),
(501, 800, 4, 3, 2, 167, 2),
(502, 800, 2, 2, 3, 168, 2),
(503, 800, 5, 1, 2, 168, 2),
(504, 800, 2, 3, 4, 168, 2),
(505, 800, 3, 2, 2, 169, 2),
(506, 800, 2, 1, 3, 169, 2),
(507, 800, 2, 3, 2, 169, 2),
(508, 800, 3, 2, 4, 170, 2),
(509, 800, 2, 1, 2, 170, 2),
(510, 800, 4, 3, 3, 170, 2),
(511, 800, 2, 2, 2, 171, 2),
(512, 800, 3, 1, 4, 171, 2),
(513, 800, 2, 3, 2, 171, 2),
(514, 800, 4, 2, 3, 172, 2),
(515, 800, 2, 1, 2, 172, 2),
(516, 800, 4, 3, 4, 172, 2),
(517, 800, 2, 2, 2, 173, 2),
(518, 800, 3, 1, 3, 173, 2),
(519, 800, 2, 3, 2, 173, 2),
(520, 800, 5, 2, 4, 174, 2),
(521, 800, 2, 1, 2, 174, 2),
(522, 800, 3, 3, 3, 174, 2),
(523, 800, 2, 2, 2, 175, 2),
(524, 800, 4, 1, 3, 175, 2),
(525, 800, 2, 3, 2, 175, 2),
(526, 800, 3, 2, 2, 176, 2),
(527, 800, 2, 1, 3, 176, 2),
(528, 800, 4, 3, 2, 176, 2),
(529, 800, 2, 2, 4, 177, 2),
(530, 800, 3, 1, 2, 177, 2),
(531, 800, 2, 3, 3, 177, 2),
(532, 800, 4, 2, 2, 178, 2),
(533, 800, 2, 1, 4, 178, 2),
(534, 800, 3, 3, 2, 178, 2),
(535, 800, 2, 2, 3, 179, 2),
(536, 800, 5, 1, 2, 179, 2),
(537, 800, 2, 3, 4, 179, 2),
(538, 800, 4, 2, 2, 180, 2),
(539, 800, 2, 1, 3, 180, 2),
(540, 800, 2, 3, 2, 180, 2),
(541, 800, 5, 2, 4, 181, 2),
(542, 800, 2, 1, 2, 181, 2),
(543, 800, 3, 3, 3, 181, 2),
(544, 800, 4, 2, 2, 182, 2),
(545, 800, 2, 1, 4, 182, 2),
(546, 800, 3, 3, 2, 182, 2),
(547, 800, 2, 2, 3, 183, 2),
(548, 800, 4, 1, 2, 183, 2),
(549, 800, 2, 3, 4, 183, 2),
(550, 800, 3, 2, 2, 184, 2),
(551, 800, 2, 1, 3, 184, 2),
(552, 800, 5, 3, 2, 184, 2),
(553, 800, 2, 2, 4, 185, 2),
(554, 800, 4, 1, 2, 185, 2),
(555, 800, 2, 3, 3, 185, 2),
(556, 800, 2, 2, 2, 186, 2),
(557, 800, 2, 1, 5, 186, 2),
(558, 800, 4, 3, 2, 186, 2),
(559, 800, 2, 2, 4, 187, 2),
(560, 800, 3, 1, 2, 187, 2),
(561, 800, 2, 3, 5, 187, 2),
(562, 800, 5, 2, 3, 188, 2),
(563, 800, 3, 1, 4, 188, 2),
(564, 800, 3, 3, 3, 188, 2),
(565, 800, 3, 2, 3, 189, 2),
(566, 800, 4, 1, 3, 189, 2),
(567, 800, 3, 3, 4, 189, 2),
(568, 800, 5, 2, 3, 190, 2),
(569, 800, 3, 1, 4, 190, 2),
(570, 800, 3, 3, 3, 190, 2),
(571, 800, 3, 2, 2, 191, 2),
(572, 800, 2, 1, 3, 191, 2),
(573, 800, 3, 3, 2, 191, 2),
(574, 800, 4, 2, 3, 192, 2),
(575, 800, 3, 1, 4, 192, 2),
(576, 800, 4, 3, 3, 192, 2),
(577, 800, 3, 2, 2, 193, 2),
(578, 800, 2, 1, 3, 193, 2),
(579, 800, 3, 3, 4, 193, 2),
(580, 800, 4, 2, 3, 194, 2),
(581, 800, 3, 1, 2, 194, 2),
(582, 800, 2, 3, 5, 194, 2),
(583, 800, 3, 2, 3, 195, 2),
(584, 800, 5, 1, 2, 195, 2),
(585, 800, 3, 3, 3, 195, 2),
(586, 800, 2, 2, 4, 196, 2),
(587, 800, 3, 1, 3, 196, 2),
(588, 800, 3, 3, 2, 196, 2),
(589, 800, 4, 2, 5, 197, 2),
(590, 800, 3, 1, 3, 197, 2),
(591, 800, 3, 3, 4, 197, 2),
(592, 800, 4, 2, 3, 198, 2),
(593, 800, 3, 1, 2, 198, 2),
(594, 800, 5, 3, 3, 198, 2),
(595, 800, 3, 2, 4, 199, 2),
(596, 800, 3, 1, 3, 199, 2),
(597, 800, 3, 3, 5, 199, 2),
(598, 800, 4, 2, 3, 200, 2),
(599, 800, 3, 1, 2, 200, 2),
(600, 800, 2, 3, 3, 200, 2),
(601, 800, 3, 2, 5, 201, 2),
(602, 800, 2, 1, 3, 201, 2),
(603, 800, 3, 3, 4, 201, 2),
(604, 800, 4, 2, 3, 202, 2),
(605, 800, 3, 1, 2, 202, 2),
(606, 800, 2, 3, 3, 202, 2),
(607, 800, 3, 2, 4, 203, 2),
(608, 800, 2, 1, 3, 203, 2),
(609, 800, 3, 3, 2, 203, 2),
(610, 800, 4, 2, 3, 204, 2),
(611, 800, 3, 1, 2, 204, 2),
(612, 800, 2, 3, 3, 204, 2),
(613, 800, 3, 2, 4, 205, 2),
(614, 800, 4, 1, 3, 205, 2),
(615, 800, 3, 3, 5, 205, 2),
(616, 800, 2, 2, 3, 206, 2),
(617, 800, 3, 1, 2, 206, 2),
(618, 800, 4, 3, 3, 206, 2),
(619, 800, 3, 2, 5, 207, 2),
(620, 800, 2, 1, 3, 207, 2),
(621, 800, 3, 3, 4, 207, 2),
(622, 800, 4, 2, 3, 208, 2),
(623, 800, 3, 1, 2, 208, 2),
(624, 800, 2, 3, 3, 208, 2),
(625, 800, 3, 2, 4, 209, 2),
(626, 800, 4, 1, 3, 209, 2),
(627, 800, 3, 3, 4, 209, 2),
(628, 800, 3, 2, 3, 210, 2),
(629, 800, 4, 1, 5, 210, 2),
(630, 800, 4, 3, 2, 210, 2),
(631, 800, 3, 2, 3, 211, 3),
(632, 800, 2, 1, 5, 211, 3),
(633, 800, 3, 3, 3, 211, 3),
(634, 800, 4, 2, 3, 212, 3),
(635, 800, 3, 1, 5, 212, 3),
(636, 800, 2, 3, 3, 212, 3),
(637, 800, 3, 2, 2, 213, 3),
(638, 800, 4, 1, 4, 213, 3),
(639, 800, 3, 3, 3, 213, 3),
(640, 800, 2, 2, 2, 214, 3),
(641, 800, 3, 1, 4, 214, 3),
(642, 800, 4, 3, 2, 214, 3),
(643, 800, 3, 2, 3, 215, 3),
(644, 800, 2, 1, 3, 215, 3),
(645, 800, 3, 3, 5, 215, 3),
(646, 800, 4, 2, 2, 216, 3),
(647, 800, 3, 1, 3, 216, 3),
(648, 800, 5, 3, 2, 216, 3),
(649, 800, 3, 2, 4, 217, 5),
(650, 800, 2, 1, 2, 217, 5),
(651, 800, 3, 3, 5, 217, 5),
(652, 800, 4, 2, 2, 218, 5),
(653, 800, 3, 1, 3, 218, 5),
(654, 800, 5, 3, 2, 218, 5),
(655, 800, 3, 2, 4, 219, 5),
(656, 800, 2, 1, 2, 219, 5),
(657, 800, 3, 3, 5, 219, 5),
(658, 800, 4, 2, 2, 220, 6),
(659, 800, 3, 1, 2, 220, 6),
(660, 800, 5, 3, 4, 220, 6),
(661, 800, 3, 2, 2, 221, 6),
(662, 800, 2, 1, 2, 221, 6),
(663, 800, 3, 3, 5, 221, 6),
(664, 800, 4, 2, 2, 222, 6),
(665, 800, 3, 1, 3, 222, 6),
(666, 800, 5, 3, 2, 222, 6),
(667, 800, 3, 2, 4, 223, 7),
(668, 800, 5, 1, 2, 223, 7),
(669, 800, 3, 3, 4, 223, 7),
(670, 800, 4, 2, 4, 224, 7),
(671, 800, 3, 1, 2, 224, 7),
(672, 800, 5, 3, 5, 224, 7),
(673, 800, 3, 2, 2, 225, 7),
(674, 800, 5, 1, 4, 225, 7),
(675, 800, 3, 3, 2, 225, 7),
(676, 800, 4, 2, 5, 226, 8),
(677, 800, 3, 1, 2, 226, 8),
(678, 800, 5, 3, 3, 226, 8),
(679, 800, 3, 2, 2, 227, 8),
(680, 800, 4, 1, 4, 227, 8),
(681, 800, 3, 3, 2, 227, 8),
(682, 800, 5, 2, 5, 228, 8),
(683, 800, 3, 1, 2, 228, 8),
(684, 800, 4, 3, 3, 228, 8),
(685, 800, 3, 2, 2, 229, 9),
(686, 800, 2, 1, 5, 229, 9),
(687, 800, 3, 3, 2, 229, 9),
(688, 800, 4, 2, 2, 230, 9),
(689, 800, 3, 1, 4, 230, 9),
(690, 800, 2, 3, 2, 230, 9),
(691, 800, 3, 2, 4, 231, 9),
(692, 800, 4, 1, 2, 231, 9),
(693, 800, 3, 3, 4, 231, 9),
(694, 800, 2, 2, 2, 232, 10),
(695, 800, 3, 1, 3, 232, 10),
(696, 800, 4, 3, 2, 232, 10),
(697, 800, 3, 2, 4, 233, 10),
(698, 800, 2, 1, 2, 233, 10),
(699, 800, 3, 3, 3, 233, 10),
(700, 800, 4, 2, 2, 234, 10),
(701, 800, 3, 1, 5, 234, 10),
(702, 800, 5, 3, 2, 234, 10),
(703, 800, 3, 2, 3, 235, 10),
(704, 800, 2, 1, 2, 235, 10),
(705, 800, 3, 3, 5, 235, 10),
(706, 800, 4, 2, 2, 236, 10),
(707, 800, 3, 1, 4, 236, 10),
(708, 800, 5, 3, 2, 236, 10),
(709, 800, 3, 2, 3, 237, 10),
(710, 800, 2, 1, 2, 237, 10),
(711, 800, 3, 3, 4, 237, 10),
(712, 800, 2, 3, 1, 238, 4),
(713, 800, 4, 2, 3, 238, 4),
(714, 800, 2, 1, 5, 238, 4),
(715, 800, 3, 3, 3, 239, 4),
(716, 800, 2, 2, 3, 239, 4),
(717, 800, 5, 1, 5, 239, 4),
(718, 800, 2, 3, 3, 240, 4),
(719, 800, 2, 2, 2, 240, 4),
(720, 800, 4, 1, 4, 240, 4),
(721, 800, 2, 3, 3, 241, 8),
(722, 800, 3, 2, 2, 241, 8),
(723, 800, 2, 1, 4, 241, 8),
(724, 800, 4, 3, 2, 242, 8),
(725, 800, 2, 2, 3, 242, 8),
(726, 800, 2, 1, 3, 242, 8),
(727, 800, 5, 3, 5, 243, 8),
(728, 800, 2, 2, 2, 243, 8),
(729, 800, 3, 1, 3, 243, 8),
(730, 800, 2, 3, 2, 244, 10),
(731, 800, 5, 2, 4, 244, 10),
(732, 800, 2, 1, 2, 244, 10),
(733, 800, 2, 3, 5, 245, 10),
(734, 800, 3, 2, 2, 245, 10),
(735, 800, 2, 1, 3, 245, 10),
(736, 800, 4, 3, 2, 246, 10),
(737, 800, 2, 2, 4, 246, 10),
(738, 800, 3, 1, 2, 246, 10),
(739, 800, 2, 3, 5, 247, 9),
(740, 800, 4, 2, 2, 247, 9),
(741, 800, 2, 1, 2, 247, 9),
(742, 800, 3, 3, 4, 248, 9),
(743, 800, 5, 2, 2, 248, 9),
(744, 800, 3, 1, 2, 248, 9),
(745, 800, 3, 3, 5, 249, 9),
(746, 800, 5, 2, 2, 249, 9),
(747, 800, 3, 1, 3, 249, 9),
(748, 800, 2, 3, 2, 250, 7),
(749, 800, 3, 2, 4, 250, 7),
(750, 800, 2, 1, 2, 250, 7),
(751, 800, 4, 3, 4, 251, 7),
(752, 800, 2, 2, 4, 251, 7),
(753, 800, 3, 1, 2, 251, 7),
(754, 800, 2, 3, 5, 252, 7),
(755, 800, 5, 2, 2, 252, 7),
(756, 800, 2, 1, 4, 252, 7),
(757, 800, 2, 3, 2, 253, 3),
(758, 800, 4, 2, 5, 253, 3),
(759, 800, 2, 1, 2, 253, 3),
(760, 800, 3, 3, 3, 254, 3),
(761, 800, 2, 2, 2, 254, 3),
(762, 800, 4, 1, 4, 254, 3),
(763, 800, 2, 3, 2, 255, 3),
(764, 800, 2, 2, 5, 255, 3),
(765, 800, 5, 1, 2, 255, 3),
(766, 800, 2, 3, 3, 256, 2),
(767, 800, 3, 2, 2, 256, 2),
(768, 800, 2, 1, 5, 256, 2),
(769, 800, 5, 3, 2, 257, 2),
(770, 800, 2, 2, 2, 257, 2),
(771, 800, 2, 1, 4, 257, 2),
(772, 800, 3, 3, 2, 258, 2),
(773, 800, 2, 2, 4, 258, 2),
(774, 800, 4, 1, 2, 258, 2),
(775, 800, 2, 3, 4, 259, 5),
(776, 800, 3, 2, 2, 259, 5),
(777, 800, 2, 1, 3, 259, 5),
(778, 800, 4, 3, 2, 260, 5),
(779, 800, 2, 2, 4, 260, 5),
(780, 800, 3, 1, 2, 260, 5),
(781, 800, 2, 3, 3, 261, 5),
(782, 800, 4, 2, 2, 261, 5),
(783, 800, 2, 1, 5, 261, 5);

-- 
-- Вывод данных для таблицы history_rabot
--
-- Таблица goodsmanager.history_rabot не содержит данных

--
-- Установка базы данных по умолчанию
--
USE goodsmanager;

--
-- Удалить триггер `tr_ReindexRows`
--
DROP TRIGGER IF EXISTS tr_ReindexRows;

--
-- Установка базы данных по умолчанию
--
USE goodsmanager;

DELIMITER $$

--
-- Создать триггер `tr_ReindexRows`
--
CREATE
DEFINER = 'root'@'localhost'
TRIGGER tr_ReindexRows
BEFORE INSERT
ON remont_basa
FOR EACH ROW
BEGIN
  DECLARE max_id int;
  SET max_id = (SELECT
      MAX(IDbasa)
    FROM remont_basa);
  SET NEW.IDbasa = IF(max_id IS NULL, 1, max_id + 1);
END
$$

DELIMITER ;

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
--
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;