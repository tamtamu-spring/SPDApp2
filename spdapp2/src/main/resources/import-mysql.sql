USE `spd`;

SET FOREIGN_KEY_CHECKS=0;

TRUNCATE `users`;
INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `role`, `enabled`, `optlock`) 
VALUES
	(1, 'admin', '5182386375bf4ee4641ca484d17c879e0ce8d0a0f4613266e4cafe72e187548fd764a471a210ee7e', NULL, NULL, NULL, 'ROLE_ADMIN', 1, 0),
	(2, 'user', 'bff81665a6dd72c3d403059e081d1668bec4f44eb1674347e5793075a7be6c18dc605f0ef84f4b7f', NULL, NULL, NULL, 'ROLE_USER', 1, 0),
	(3, 'user_blocked', '0bc86f42c366e70db440a80cbd873f8a8996b155090b92adbbb16ba81a836c642b01e2d79fb3d84a', NULL, NULL, NULL, 'ROLE_USER', 1, 0),
	(4, 'DemoUser', '5182386375bf4ee4641ca484d17c879e0ce8d0a0f4613266e4cafe72e187548fd764a471a210ee7e', NULL, NULL, NULL, 'ROLE_ADMIN', 1, 0);

TRUNCATE `spd`;
INSERT INTO `spd` (`id`, `surname`, `firstname`, `lastname`, `alias`, `inn`, `passport`, `address_id`, `registration_info_id`, `optlock`)
VALUES
	(1, 'Пушкін', 'Олександр', 'Сергійович', 'Пушкін О.С.', '2164704018', NULL, 1, 1, 1),
	(2, 'Распутін', 'Григорій', 'Володимирович', 'Распутін Г.В.', '2430666666', NULL, 7, 2, 0),
	(3, 'Шевченко', 'Тарас', 'Григорович', 'Шевченко Т.Г.', '2150315258', NULL, 6, 3, 0);

TRUNCATE `account`;
INSERT INTO `account` (`id`, `spd_id`, `account_number`, `mfo`, `bank_name`, `optlock`)
VALUES
	(1, 1, '26001901362973', '300658', 'АТ "ОТП БАНК" (м. Київ)', 0),
	(2, 2, '26001801363041', '300658', 'АТ "ОТП БАНК" (м. Київ)', 0),
	(5, 3, '26003901362975', '300658', 'АТ "ОТП БАНК" (м. Київ)', 0);

TRUNCATE `address`;
INSERT INTO `address` (`id`, `country`, `region`, `city`, `street`, `building`, `flat`, `zip`, `optlock`)
VALUES
	(1, 'Україна', 'Київська обл.', 'м. Ірпень, смт. Гостомель', 'вул. Рекунова', '14', '59', '08290', 0),
	(6, 'Україна', NULL, 'м. Київ', 'пр-т Рокосовського', '12-А', '267', '04201', 0),
	(7, 'Україна', NULL, 'м. Київ', 'вул. Довженка', '11', '167', '03057', 0);

TRUNCATE `payment`;
INSERT INTO `payment` (`id`, `spd_id`, `payment_type_id`, `value`, `date_start`, `date_finish`, `optlock`)
VALUES
	(4, 2, 6, 75.0000000000, '2013-01-01', NULL, 0),
	(5, 3, 1, 10000.0000000000, '2013-01-01', NULL, 0),
	(25, 1, 6, 75.0000000000, '2013-01-01', NULL, 0),
	(26, 1, 7, 5.0000000000, '2013-01-01', NULL, 0),
	(33, 1, 9, 0.0080000000, '2013-01-01', NULL, 0),
	(34, 1, 9, 0.0069000000, '2013-02-01', NULL, 0),
	(35, 2, 1, 6000.0000000000, '2013-01-01', NULL, 0),
	(43, 1, 1, 7000.0000000000, '2013-01-01', NULL, 0),
	(48, 2, 7, 5.0000000000, '2013-01-01', NULL, 0),
	(49, 2, 9, 0.0080000000, '2013-01-01', NULL, 0),
	(50, 2, 9, 0.0069000000, '2013-02-01', NULL, 0),
	(53, 3, 9, 0.0080000000, '2013-01-01', NULL, 0),
	(54, 3, 6, 75.0000000000, '2013-01-01', NULL, 0),
	(55, 3, 7, 5.0000000000, '2013-01-01', NULL, 0),
	(56, 3, 9, 0.0069000000, '2013-02-01', NULL, 0),
	(57, 1, 1, 8000.0000000000, '2013-03-01', NULL, 0),
	(62, 1, 9, 0.0100000000, '2014-09-01', NULL, 0),
	(63, 1, 6, 50.0000000000, '2014-09-01', NULL, 0),
	(64, 1, 7, 0.0000000000, '2014-09-01', NULL, 0),
	(66, 1, 10, 600.0000000000, '2015-02-01', NULL, 0),
	(88, 2, 6, 80.0000000000, '2015-07-01', NULL, 0),
	(89, 1, 1, 9000.0000000000, '2015-05-01', NULL, 0),
	(90, 1, 6, 60.0000000000, '2015-07-01', NULL, 0),
	(91, 1, 6, 100.0000000000, '2015-08-01', NULL, 0),
	(119, 3, 10, 600.0000000000, '2015-01-01', NULL, 0),
	(120, 3, 1, 18000.0000000000, '2015-02-01', NULL, 0),
	(121, 3, 1, 20500.0000000000, '2015-04-01', NULL, 0),
	(122, 3, 6, 80.0000000000, '2015-07-01', NULL, 0),
	(123, 3, 1, 12500.0000000000, '2015-12-01', NULL, 0);

TRUNCATE `payment_type`;
INSERT INTO `payment_type` (`id`, `title`, `is_percent`, `is_bank_comission`, `alias`, `optlock`)
VALUES
	(1, 'Оклад', b'0', b'0', 'salaryRate', 0),
	(2, 'Премия', b'0', b'0', 'premium', 0),
	(6, 'Ведение счета', b'0', b'0', 'accountServiceFee', 0),
	(7, 'Ведение карты', b'0', b'0', 'cardServiceFee', 0),
	(8, 'Доплата к обороту', b'0', b'0', 'surcharge', 0),
	(9, 'Комиссия за обналичивание', b'1', b'1', 'withdrawCashComission', 0),
	(10, 'Аренда офиса', b'0', b'0', 'rent', 0);

TRUNCATE `agreement`;
INSERT INTO `agreement` (`id`, `spd_id`, `company_id`, `number`, `date_start`, `optlock`)
VALUES
	(1, 1, 1, '02/13-01', '2013-02-04', 0),
	(2, 2, 1, '02/13-04', '2013-02-07', 0),
	(11, 3, 1, '02/13-03', '2013-02-04', 0),
	(12, 1, 2, '02/13-05', '2013-06-04', 0);

TRUNCATE `agreement_tarif`;
INSERT INTO `agreement_tarif` (`id`, `agreement_id`, `configuring`, `programming`, `architecting`, `date_start`, `optlock`)
VALUES
	(1, 1, 90, 110, 130, '2013-02-04', 0),
	(3, 2, 75, 90, 110, '2013-02-07', 0),
	(10, 11, 110, 135, 160, '2013-02-04', 0),
	(19, 11, 220, 275, 350, '2015-10-01', 0),
	(20, 12, 220, 275, 350, '2013-06-04', 0);

TRUNCATE `company`;
INSERT INTO `company` (`id`, `title`, `edrpou`, `inn`, `vat_certificate`, `optlock`)
VALUES
	(1, 'ТОВ "КВЕСТ"', '00987654', '', '', 0),
	(2, 'ООО "ТЕСТ"', '34567890', '', '', 0);

TRUNCATE `company_account`;
INSERT INTO `company_account` (`id`, `company_id`, `presentation`, `date_start`, `optlock`)
VALUES
	(1, 1, '26007017100038 в АТ "Піреус Банк МКБ", МФО 300658', '2013-01-01', 0),
	(2, 2, '26007247100756 в АТ "ПРИВАТБАНК", МФО 320699', '2013-01-01', 0);

TRUNCATE `company_address`;
INSERT INTO `company_address` (`id`, `company_id`, `presentation`, `date_start`, `optlock`)
VALUES
	(1, 1, 'Україна, 03150, м.Київ, вул. Горького, буд. 172, офіс 1421', '2012-01-01', 0),
	(2, 1, 'Україна, 03680, м.Київ, вул. Козацька, буд. 122/4, літ. Б', '2015-07-01', 0),
	(3, 2, 'Україна, 01210, м. Киев, вул. Крещатик, 38', '2012-01-01', 0),
	(4, 2, 'Україна, 01210, м. Киев, вул. Крещатик, 45', '2015-01-01', 0);

TRUNCATE `company_director`;
INSERT INTO `company_director` (`id`, `company_id`, `post`, `full_name`, `short_name`, `employment_date`, `fired_date`, `optlock`)
VALUES
	(1, 1, 'Генеральний директор', 'Степанюк Алла Борисівна', 'Степанюк А.Б.', '2013-01-01', '2014-02-28', 0),
	(2, 1, 'Генеральний директор', 'Стоячий Олександр Володимирович', 'Стоячий О.В.', '2014-03-01', NULL, 0),
	(3, 2, 'Генеральный директор', 'Слєпаков Семен Валерійович', 'Слєпаков С.В.', '2013-01-01', NULL, 0),
	(4, 2, 'Генеральный директор', 'Смєрдячий Антон Захарович', 'Смєрдячий А.З.', '2014-01-01', NULL, 0);

TRUNCATE `esv_tax`;
INSERT INTO `esv_tax` (`id`, `value`, `date_start`, `optlock`)
VALUES
	(1, 398.01, '2013-01-01', 0),
	(2, 422.65, '2013-12-01', 0),
	(3, 478.17, '2015-09-01', 0),
	(4, 303.16, '2016-01-01', 0),
	(5, 319.00, '2016-05-01', 0),
	(6, 341.00, '2016-12-01', 0),
	(7, 704.00, '2017-01-01', 0);

TRUNCATE `registration_info`;
INSERT INTO `registration_info` (`id`, `description`, `dated`, `optlock`)
VALUES
	(1, '2 347 000 0000 007784', '2013-01-03', 0),
	(2, '2 064 000 0000 021827', '2013-01-17', 0),
	(3, '2 059 000 0000 028918', '2013-01-09', 0);

TRUNCATE `simple_tax`;
INSERT INTO `simple_tax` (`id`, `value`, `date_start`, `optlock`)
VALUES
	(3, 0.0500000000, '2013-01-01', 0),
	(4, 0.0400000000, '2015-03-01', 0),
	(6, 0.0500000000, '2016-01-01', 0);

TRUNCATE `specification`;
INSERT INTO `specification` (`id`, `agreement_id`, `specification_number`, `date_start`, `date_finish`, `specification_sum`, `configuring_hours`, `programming_hours`, `architecting_hours`, `optlock`)
VALUES
	(1, 1, 1, '2013-02-04', '2013-03-04', 23840.0000000000, 15, 13, 162, 0),
	(2, 2, 1, '2013-02-07', '2013-03-04', 19710.0020000000, 0, 10, 171, 0),
	(10, 11, 1, '2013-02-04', '2013-03-04', 30380.0000000000, 7, 6, 180, 1),
	(15, 1, 2, '2013-03-05', '2013-04-29', 19970.0000000000, 103, 50, 40, 0),
	(16, 2, 2, '2013-03-05', '2013-04-29', 14140.0000000000, 104, 35, 29, 0),
	(17, 11, 2, '2013-03-05', '2013-04-26', 22620.0000000000, 85, 58, 34, 0),
	(21, 1, 3, '2013-04-30', '2013-05-31', 8560.0000000000, 48, 22, 14, 0),
	(34, 2, 3, '2013-04-30', '2013-05-31', 6440.0000000000, 60, 13, 7, 0),
	(49, 11, 3, '2013-04-29', '2013-05-31', 10680.0000000000, 10, 20, 43, 0),
	(50, 12, 1, '2013-06-04', NULL, 0.00, 0, 0, 0, 0);

TRUNCATE `specification_calculation`;
INSERT INTO `specification_calculation` (`id`, `specification_id`, `date_start`, `part_number`, `opening_balance`, `esv`, `salary_rate`, `premium`, `rent`, `surcharge`, `card_service_fee`, `account_service_fee`, `simple_tax`, `withdraw_cash_comission`, `closing_balance`, `turnover`, `money_on_hand`, `money_transfer`, `withdraw_cash`, `optlock`)
VALUES
	(1, 1, '2013-01-01', 1, 0.0000000000, 1194.0300000000, 7000.0000000000, 130.0000000000, NULL, 448.9300000000, 5.0000000000, 75.0000000000, 445.5000000000, 57.0400000000, 3.4300000000, 8910.0000000000, 7133.4300000000, 7187.0400000000, 7130.0000000000, 0),
	(3, 2, '2013-01-01', 1, 0.0000000000, 1194.0300000000, 6000.0000000000, 234.0000000000, NULL, 402.1000000000, 5.0000000000, 75.0000000000, 398.0001000000, 49.8720000000, 4.0999000000, 7960.0020000000, 6238.0999000000, 6363.8720000000, 6234.0000000000, 0),
	(5, 10, '2013-01-01', 1, 0.0000000000, 1194.0300000000, 10000.0000000000, 300.0000000000, NULL, 613.5700000000, 5.0000000000, 75.0000000000, 613.5000000000, 82.4000000000, 0.0700000000, 12270.0000000000, 10300.0700000000, 10382.4000000000, 10300.0000000000, 0),
	(7, 2, '2013-02-01', 2, 4.0999000000, 0.0000000000, 6000.0000000000, 5000.0000000000, NULL, 594.1000000000, 5.0000000000, 75.0000000000, 587.5000000000, 75.9000000000, 10.6999000000, 11750.0000000000, 11006.6000000000, 11075.9000000000, 11000.0000000000, 0),
	(8, 1, '2013-02-01', 2, 3.4300000000, 0.0000000000, 7000.0000000000, 7000.0000000000, NULL, 753.4000000000, 5.0000000000, 75.0000000000, 746.5000000000, 96.6000000000, 10.3300000000, 14930.0000000000, 14006.9000000000, 14096.6000000000, 14000.0000000000, 0),
	(9, 10, '2013-02-01', 2, 0.0700000000, 0.0000000000, 10000.0000000000, 7000.0000000000, NULL, 912.7000000000, 5.0000000000, 75.0000000000, 905.5000000000, 117.3000000000, 7.2700000000, 18110.0000000000, 17007.2000000000, 17117.3000000000, 17000.0000000000, 0),
	(12, 15, '2013-04-01', 1, 10.3300000000, 0.0000000000, 8000.0000000000, 1500.0000000000, NULL, 504.4500000000, 5.0000000000, 75.0000000000, 507.5000000000, 65.5500000000, 7.2800000000, 10150.0000000000, 9496.9500000000, 9565.5500000000, 9500.0000000000, 0),
	(13, 15, '2013-04-01', 2, 7.2800000000, 1194.0300000000, 8000.0000000000, 0.0000000000, NULL, 490.7700000000, 5.0000000000, 75.0000000000, 491.0000000000, 55.2000000000, 7.0500000000, 9820.0000000000, 7999.7700000000, 8055.2000000000, 8000.0000000000, 0),
	(14, 16, '2013-04-01', 1, 10.6999000000, 0.0000000000, 6000.0000000000, 0.0000000000, NULL, 318.6000000000, 5.0000000000, 75.0000000000, 322.0000000000, 41.4000000000, 7.2999000000, 6440.0000000000, 5996.6000000000, 6041.4000000000, 6000.0000000000, 0),
	(15, 16, '2013-04-01', 2, 7.2999000000, 1194.0300000000, 6000.0000000000, 0.0000000000, NULL, 384.5700000000, 5.0000000000, 75.0000000000, 385.0000000000, 41.4000000000, 6.8699000000, 7700.0000000000, 5999.5700000000, 6041.4000000000, 6000.0000000000, 0),
	(16, 17, '2013-03-01', 1, 7.2700000000, 0.0000000000, 10000.0000000000, 0.0000000000, NULL, 531.0000000000, 5.0000000000, 75.0000000000, 534.0000000000, 69.0000000000, 4.2700000000, 10680.0000000000, 9997.0000000000, 10069.0000000000, 10000.0000000000, 0),
	(17, 17, '2013-04-01', 2, 4.2700000000, 1194.0300000000, 10000.0000000000, 0.0000000000, NULL, 596.9700000000, 5.0000000000, 75.0000000000, 597.0000000000, 69.0000000000, 4.2400000000, 11940.0000000000, 9999.9700000000, 10069.0000000000, 10000.0000000000, 0),
	(22, 21, '2013-05-01', 1, 7.0500000000, 0.0000000000, 8000.0000000000, 0.0000000000, NULL, 424.8000000000, 5.0000000000, 75.0000000000, 428.0000000000, 55.2000000000, 3.8500000000, 8560.0000000000, 7996.8000000000, 8055.2000000000, 8000.0000000000, 0),
	(45, 34, '2013-05-01', 1, 6.8699000000, 0.0000000000, 6000.0000000000, 0.0000000000, NULL, 318.6000000000, 5.0000000000, 75.0000000000, 322.0000000000, 41.4000000000, 3.4699000000, 6440.0000000000, 5996.6000000000, 6041.4000000000, 6000.0000000000, 0),
	(67, 49, '2013-05-01', 1, 4.2400000000, 0.0000000000, 10000.0000000000, 0.0000000000, NULL, 531.0000000000, 5.0000000000, 75.0000000000, 534.0000000000, 69.0000000000, 1.2400000000, 10680.0000000000, 9997.0000000000, 10069.0000000000, 10000.0000000000, 0);

TRUNCATE `specification_job`;
INSERT INTO `specification_job` (`id`, `specification_id`, `job_name`, `configuring_hours`, `programming_hours`, `architecting_hours`, `optlock`)
VALUES
	(1, 1, 'Модуль кросировок: взаємодія через http рядок\r\n', 15, 13, 62, 0),
	(3, 1, 'Розширення функціональності розділу лінійного обліку: Створення категорії «Охорона кабелю пікети»\r\n', NULL, NULL, 100, 0),
	(4, 2, 'Реализация структуры данных для работы модуля параллельной подгрузки слоев', 0, 10, 171, 0),
	(5, 10, 'Створення технічного завдання на впровадження модулю інтерактивної взаємодії', NULL, NULL, 80, 0),
	(6, 10, 'Створення технічного завдання на модуль паралельного підвантаження шарів', NULL, NULL, 100, 0),
	(7, 10, 'Тестування функціональності розробленого модулю інтерактивної взаємодії згідно затвердженого технічного завдання на впровадження модулю інтерактивної взаємодії', 7, 6, NULL, 0),
	(12, 15, 'Розширення функціональності розділу лінійного обліку:\r\ncтворення функції «Врізка колодязя»\r\n', 10, 10, 8, 0),
	(13, 15, 'Розширення функціональності логічного рівня станційного обліку:\r\nстворення категорії «Навантаження на порти станційного обладнання»\r\n', 48, 20, 16, 0),
	(14, 15, 'Розширення функціональності логічного рівня станційного обліку:\r\nстворення категорії «Навантаження на бокси оптичні FTTH»\r\n', 45, 20, 16, 0),
	(15, 21, 'Виконання робіт з конвертації, налаштуванні стилів відображення, імпорту в систему картографічних даних (Олександрівка, Антонівка, Біла Церков)', 48, 22, 14, 0),
	(23, 16, 'Реалізація функціональності модуля паралельного підвантаження шарів', 104, 35, 29, 0),
	(24, 34, 'Виконання робіт зі звірки конвертованих картографічних даних (Олександрівка, Антонівка, Біла Церква)', 60, 13, 7, 0);

TRUNCATE `specification_payment`;
INSERT INTO `specification_payment` (`id`, `specification_id`, `payment_number`, `payment_sum`, `payment_days`, `comment`, `optlock`)
VALUES
	(1, 1, 1, 23480.0000000000, 5, NULL, 0),
	(2, 15, 1, 10150.0000000000, 35, NULL, 0),
	(3, 15, 2, 9820.0000000000, 5, NULL, 0),
	(4, 21, 1, 8560.0000000000, 5, NULL, 0),
	(5, 2, 1, 19710.00, 5, NULL, 0);

SET FOREIGN_KEY_CHECKS=1;