--DELETES EVERYTHING FIRST SO I CAN RUN WHOLE FILE AT A TIME
DELETE FROM PROVIDER_SERVICE_REGION  WHERE PROVIDER_SERVICE_REGION.service_ID<100;
DELETE FROM UTILITY WHERE UTILITY.utility_id <100;
DELETE FROM CUSTOMER_ADDRESS WHERE CUSTOMER_ADDRESS.customer_id<101;
DELETE FROM CUSTOMER WHERE customer_id<200;
DELETE FROM UTILITY_PROVIDER WHERE business_number <818125408;
DELETE FROM REGION WHERE tax_rate<100;

INSERT INTO CUSTOMER
VALUES
(1,  'Jackson',  'Castillo',  'Digital',  'castilja@outlook.com',  '780-555-0161'),
(2,  'Julian',  'Lee',  'Mail',  'leeju@outlook.com',  '780-555-0155'),
(3,  'Grayson',  'Ramos',  'Digital',  'ramosgr@outlook.com',  '780-555-0102'),
(4,  'Jacob',  'Sanders',  'Mail',  'sanderja@outlook.com',  '780-555-0129'),
(5,  'Paisley',  'Simard',  'Digital',  'simardpa@sympatico.ca',  '780-555-0169'),
(6,  'Jaxson',  'Foster',  'Mail',  'fosterja@outlook.com',  '250-555-0108'),
(7,  'Luke',  'Lavoie',  'Digital',  'lavoielu@sympatico.ca',  '250-555-0111'),
(8,  'Ezekiel',  'Morgan',  'Mail',  'morganez@hotmail.com',  '250-555-0172'),
(9,  'Everly',  'Ortiz',  'Digital',  'ortizev@hotmail.com',  '250-555-0123'),
(10,  'Bella',  'Ramirez',  'Mail',  'ramirebe@gmail.com',  '250-555-0139'),
(11,  'Emily',  'Stewart',  'Digital',  'stewarem@hotmail.com',  '250-555-0160'),
(12,  'Jordan',  'Tremblay',  'Mail',  'trembljo@outlook.com',  '604-555-0145'),
(13,  'Elias',  'Turner',  'Digital',  'turnerel@hotmail.com',  '604-555-0192'),
(14,  'Autumn',  'White',  'Mail',  'whiteau@gmail.com',  '604-555-0169'),
(15,  'Caleb',  'Young',  'Digital',  'youngca@gmail.com',  '604-555-0177'),
(16,  'Gabriella',  'Reed',  'Mail',  'reedga@outlook.com',  '902-555-0162'),
(17,  'Nora',  'Richard',  'Digital',  'richarno@sympatico.ca',  '902-555-0161'),
(18,  'Arya',  'Taylor',  'Mail',  'taylorar@gmail.com',  '902-555-0172'),
(19,  'Charlotte',  'Torres',  'Digital',  'torresch@gmail.com',  '902-555-0195'),
(20,  'Mila',  'Gagne',  'Mail',  'gagnemi@sympatico.ca',  '204-555-0126'),
(21,  'Brooklyn',  'Walker',  'Digital',  'walkerbr@gmail.com',  '204-555-0129'),
(22,  'Luca',  'Bouchard',  'Mail',  'bouchalu@sympatico.ca',  '506-555-0190'),
(23,  'Henry',  'Brooks',  'Digital',  'brookshe@outlook.com',  '506-555-0184'),
(24,  'Ezra',  'Cooper',  'Mail',  'cooperez@hotmail.ca',  '506-555-0187'),
(25,  'Ella',  'Cruz',  'Digital',  'cruzel@hotmail.com',  '506-555-0177'),
(26,  'Elijah',  'Diaz',  'Mail',  'diazel@hotmail.com',  '506-555-0119'),
(27,  'Adrian',  'Garcia',  'Digital',  'garciaad@gmail.com',  '506-555-0107'),
(28,  'Piper',  'Graham',  'Mail',  'grahampi@sympatico.ca',  '709-555-0103'),
(29,  'Isabella',  'Gray',  'Digital',  'grayis@outlook.com',  '709-555-0103'),
(30,  'Iris',  'James',  'Mail',  'jamesir@outlook.com',  '709-555-0199'),
(31,  'Melody',  'Johnston',  'Digital',  'johnstme@sympatico.ca',  '709-555-0139'),
(32,  'Camila',  'King',  'Mail',  'kingca@gmail.com',  '709-555-0151'),
(33,  'Leah',  'Leblanc',  'Digital',  'leblanle@sympatico.ca',  '709-555-0143'),
(34,  'Asher',  'Moore',  'Mail',  'mooreas@gmail.com',  '506-555-0148'),
(35,  'Elizabeth',  'Parker',  'Digital',  'parkerel@hotmail.com',  '506-555-0180'),
(36,  'Audrey',  'Perez',  'Mail',  'perezau@gmail.com',  '506-555-0159'),
(37,  'Eli',  'Phillips',  'Digital',  'philliel@hotmail.com',  '506-555-0137'),
(38,  'Ariana',  'Thomas',  'Mail',  'thomasar@gmail.com',  '506-555-0194'),
(39,  'Hannah',  'Ward',  'Digital',  'wardha@outlook.com',  '506-555-0126'),
(40,  'Hunter',  'Wood',  'Mail',  'woodhu@outlook.com',  '802-555-0179'),
(41,  'Myles',  'Boucher',  'Digital',  'bouchemy@hotmail.ca',  '902-555-0162'),
(42,  'Olivia',  'Clarke',  'Mail',  'clarkeol@sympatico.ca',  '902-555-0161'),
(43,  'Emery',  'Collins',  'Digital',  'collinem@hotmail.ca',  '902-555-0172'),
(44,  'David',  'Hall',  'Mail',  'hallda@hotmail.com',  '902-555-0195'),
(45,  'Freya',  'Peterson',  'Digital',  'petersfr@hotmail.com',  '902-555-0142'),
(46,  'Emilia',  'Reyes',  'Mail',  'reyesem@hotmail.com',  '902-555-0163'),
(47,  'Eleanor',  'Roberts',  'Digital',  'robertel@hotmail.com',  '902-555-0180'),
(48,  'Levi',  'Thompson',  'Mail',  'thompsle@sympatico.ca',  '902-555-0192'),
(49,  'Cameron',  'Allen',  'Digital',  'allenca@gmail.com',  '416-555-0107'),
(50,  'Gabriel',  'Bailey',  'Mail',  'baileyga@hotmail.com',  '416-555-0123'),
(51,  'Hudson',  'Chavez',  'Digital',  'chavezhu@outlook.com',  '416-555-0187'),
(52,  'Evelyn',  'Cook',  'Mail',  'cookev@hotmail.com',  '416-555-0190'),
(53,  'Ellie',  'Edwards',  'Digital',  'edwardel@hotmail.com',  '416-555-0102'),
(54,  'Eliana',  'Evans',  'Mail',  'evansel@hotmail.com',  '416-555-0149'),
(55,  'Maria',  'Fortin',  'Digital',  'fortinma@sympatico.ca',  '905-555-0116'),
(56,  'Josiah',  'Gagnon',  'Mail',  'gagnonjo@outlook.com',  '905-555-0160'),
(57,  'Liam',  'Gauthier',  'Digital',  'gauthili@sympatico.ca',  '905-555-0184'),
(58,  'Amelia',  'Hernandez',  'Mail',  'hernanam@gmail.com',  '905-555-0126'),
(59,  'Grace',  'Howard',  'Digital',  'howardgr@outlook.com',  '905-555-0104'),
(60,  'Jayden',  'Jimenez',  'Mail',  'jimeneja@outlook.com',  '905-555-0196'),
(61,  'Adeline',  'Jones',  'Digital',  'jonesad@gmail.com',  '905-555-0171'),
(62,  'Andrew',  'Lopez',  'Mail',  'lopezan@gmail.com',  '905-555-0195'),
(63,  'Kennedy',  'MacDonald',  'Digital',  'macdonke@sympatico.ca',  '905-555-0143'),
(64,  'Dylan',  'Mitchell',  'Mail',  'mitchedy@hotmail.com',  '905-555-0183'),
(65,  'Ethan',  'Morales',  'Digital',  'moraleet@hotmail.com',  '905-555-0172'),
(66,  'James',  'Myers',  'Mail',  'myersja@outlook.com',  '905-555-0109'),
(67,  'Matthew',  'Reid',  'Digital',  'reidma@sympatico.ca',  '217-555-0116'),
(68,  'Luna',  'Robinson',  'Mail',  'robinslu@sympatico.ca',  '217-555-0144'),
(69,  'Avery',  'Sanchez',  'Digital',  'sancheav@gmail.com',  '217-555-0102'),
(70,  'Jeremiah',  'Smith',  'Mail',  'smithje@outlook.com',  '217-555-0129'),
(71,  'Adam',  'Williams',  'Digital',  'williaad@gmail.com',  '217-555-0127'),
(72,  'Nolan',  'Wright',  'Mail',  'wrightno@sympatico.ca',  '217-555-0170'),
(73,  'Delilah',  'Campbell',  'Digital',  'campbede@hotmail.com',  '902-555-0138'),
(74,  'Aria',  'Anderson',  'Mail',  'andersar@hotmail.ca',  '438-555-0199'),
(75,  'Isaac',  'Bennet',  'Digital',  'bennetis@outlook.com',  '438-555-0166'),
(76,  'Addison',  'Brown',  'Mail',  'brownad@gmail.com',  '438-555-0168'),
(77,  'Hailey',  'Cox',  'Digital',  'coxha@outlook.com',  '438-555-0152'),
(78,  'Owen',  'Davis',  'Mail',  'davisow@sympatico.ca',  '438-555-0139'),
(79,  'Christopher',  'Flores',  'Digital',  'floresch@gmail.com',  '438-555-0130'),
(80,  'Oliver',  'Girard',  'Mail',  'girardol@sympatico.ca',  '418-555-0156'),
(81,  'Claire',  'Green',  'Digital',  'greencl@hotmail.com',  '418-555-0177'),
(82,  'Everleigh',  'Gutierrez',  'Mail',  'gutierev@hotmail.com',  '418-555-0108'),
(83,  'Ivy',  'Hughes',  'Digital',  'hughesiv@outlook.com',  '418-555-0168'),
(84,  'Layla',  'Jones',  'Mail',  'jonesla@sympatico.ca',  '418-555-0100'),
(85,  'Naomi',  'Landry',  'Digital',  'landryna@sympatico.ca',  '418-555-0108'),
(86,  'Mason',  'Levesque',  'Mail',  'levesqma@sympatico.ca',  '819-555-0198'),
(87,  'Joseph',  'Martin',  'Digital',  'martinjo@outlook.com',  '819-555-0110'),
(88,  'Noah',  'McDonald',  'Mail',  'mcdonano@sympatico.ca',  '819-555-0154'),
(89,  'Aiden',  'Miller',  'Digital',  'millerai@gmail.com',  '819-555-0131'),
(90,  'Cooper',  'Nelson',  'Mail',  'nelsonco@hotmail.com',  '819-555-0174'),
(91,  'Jade',  'Patel',  'Digital',  'patelja@outlook.com',  '819-555-0198'),
(92,  'Natalie',  'Poirier',  'Mail',  'poiriena@sympatico.ca',  '418-555-0108'),
(93,  'Jace',  'Price',  'Digital',  'priceja@outlook.com',  '418-555-0145'),
(94,  'Harper',  'Richardson',  'Mail',  'richarha@outlook.com',  '418-555-0107'),
(95,  'Everett',  'Rogers',  'Digital',  'rogersev@hotmail.com',  '418-555-0182'),
(96,  'Jaxon',  'Ross',  'Mail',  'rossja@outlook.com',  '418-555-0152'),
(97,  'Joshua',  'Roy',  'Digital',  'royjo@outlook.com',  '418-555-0165'),
(98,  'Charlie',  'Scott',  'Mail',  'scottch@gmail.com',  '819-555-0167'),
(99,  'Anthony',  'Wilson',  'Digital',  'wilsonan@gmail.com',  '819-555-0123'),
(100,  'Raelynn',  'Caron',  'Mail',  'caronra@sympatico.ca',  '867-555-0161');
SELECT TOP (10) * FROM CUSTOMER;

INSERT INTO REGION
VALUES
('AB',  'Alberta',  5),
('BC',  'British Columbia',  12),
('MB',  'Manitoba',  12),
('NB',  'New Brunswick',  15),
('NL',  'Newfoundland and Labrador',  15),
('NS',  'Nova Scotia',  15),
('NT',  'Northwest Territories', 5),
('NU',  'Nunavut', 5),
('ON',  'Ontario', 13),
('PE',  'Prince Edward Island', 15),
('QC',  'Quebec',  14.975),
('SK',  'Saskatchewan',  11),
('YT',  'Yukon', 5);
SELECT TOP(10) * FROM REGION;

--For Foreign keys need to select form that table. Hence the SELECT command inside the INSERT command
INSERT INTO UTILITY_PROVIDER
VALUES
(221568934, 'Enbridge', 1.5, 'webmaster-corp@enbridge.com�',  '403-231-3900',  '200',  'Fifth Avenue Place',  'T2P 3L8',  'Calgary',  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'AB'),  'Canada'),
(818125405, 'Hydro One', 1.5, '',  '888-664-9376',  'P.O. Box 5700',  '',  'L3R 1C8',  'Toronto',  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID ='ON'),  'Canada'),
(218911783, 'Cogeco', 3, 'businesssolutions@cogeco.com',  '833-947-2526',  '1',  'Place Ville-Marie',  'H3B 2B6',  'Montreal',  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'),  'Canada');
SELECT TOP(10) * FROM UTILITY_PROVIDER;

INSERT INTO CUSTOMER_ADDRESS
VALUES
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 1), (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'AB'), 'Billing', '610', 'West Honey Creek St.', 'T7S 6C6', 'Whitecourt', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 1), (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'AB'), 'Service', '9610', 'West Honey Creek St.', 'T7S 6C6', 'Whitecourt', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 2),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'AB'), 'Service', '7', 'Peninsula Street  ', 'T4L 6S8', 'Lacombe', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 2),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'AB'), 'Billing', '77', 'Peninsula Street  ', 'T4L 6S8', 'Lacombe', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 3),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'AB'), 'Both', '31', 'South Addison St. ', 'T8N 2T1', 'St. Albert', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 4),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'AB'), 'Service', '688', 'West Lantern Street ', 'T9X 6S6', 'Vermilion', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 5),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'AB'), 'Billing', '9357', 'Sussex Ave.  ', 'T7Z 8T1', 'Stony Plain', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 6),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'BC'), 'Both', '904', 'Tanglewood St.  ', 'V2G 4X3', 'Williams Lake', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 7),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'BC'), 'Service', '5', 'Somerset St.  ', 'V8J 5R2', 'Prince Rupert', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 8),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'BC'), 'Billing', '60', 'Anderson Street  ', 'V3A 1E6', 'Langley City', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 9),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'BC'), 'Both', '24', 'Rockland St.  ', 'V1N 7T3', 'Castlegar', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 10),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'BC'), 'Service', '881', 'Brandywine St.  ', 'V3Y 8S9', 'Pitt Meadows', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 11),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'BC'), 'Billing', '8773', 'Newcastle Drive  ', 'V0L 4C2', 'Chilcotin', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 12),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'BC'), 'Both', '8', 'Arnold Street  ', 'V4B 6C1', 'White Rock', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 13),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'BC'), 'Service', '7641', 'Devon Lane  ', 'V0S 3T8', 'Juan de Fuca Shore', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 14),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'BC'), 'Billing', '7633', 'Willow Road  ', 'V8G 7G2', 'Terrace', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 15),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'BC'), 'Both', '1', 'Newport St.  ', 'V1G 7L9', 'Dawson Creek', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 16),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NL'), 'Service', '35', 'Manchester St.  ', 'A2B 2S7', 'Windsor', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 17),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NL'), 'Billing', '8', 'Constitution Street  ', 'A5A 9M0', 'Clarenville', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 18),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NL'), 'Both', '499', 'Main Rd.  ', 'A1V 7E7', 'Gander', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 19),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NL'), 'Service', '9814', 'Elmwood Street  ', 'A1S 1S2', 'Goulds', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 20),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'MB'), 'Billing', '8039', 'Clinton Drive  ', 'R4K 3G0', 'Cartier', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 21),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'MB'), 'Both', '11', 'Belmont Dr.  ', 'R7N 9K2', 'Dauphin', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 22),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NB'), 'Service', '163', 'Princeton St.  ', 'E5V 0K6', 'Deer Island', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 23),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NB'), 'Billing', '7261', 'Marsh Street  ', 'E4L 8Y0', 'Sackville', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 24),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NB'), 'Both', '7785', 'Bay Meadows St. ', 'E3V 5H7', 'Edmundston', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 25),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NB'), 'Service', '145', 'Grove Lane  ', 'E7E 1L5', 'Saint-Leonard', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 26),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NB'), 'Billing', '7109', 'Acacia St.  ', 'E8K 6R8', 'Beresford', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 27),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NB'), 'Both', '8210', 'Stonybrook Street  ', 'E3N 8C5', 'Campbellton', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 28),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NB'), 'Service', '569', 'Tunnel St.  ', 'E8G 5H5', 'Belledune', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 29),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NB'), 'Billing', '50', 'Shipley St.  ', 'E8J 7S0', 'Petit-Rocher', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 30),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NB'), 'Both', '806', 'Oakwood Avenue  ', 'E4T 3H9', 'Bass River', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 31),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NB'), 'Service', '9036', 'NE. Glendale Court ', 'E5H 2V3', 'Pennfield', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 32),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NB'), 'Billing', '340', 'Jennings Lane  ', 'E9C 6K6', 'Doaktown', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 33),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NB'), 'Both', '43', 'Cobblestone Street  ', 'E5C 6B9', 'St. George', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 34),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NB'), 'Service', '9859', 'Littleton St.  ', 'E6A 9S9', 'Boiestown', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 35),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NB'), 'Billing', '281', 'Ketch Harbour Street ', 'E5S 9V6', 'Kingston', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 36),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NB'), 'Both', '548', 'San Juan St. ', 'E1B 4P8', 'Riverview', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 37),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NB'), 'Service', '7811', 'Coffee Street  ', 'E4G 7T2', 'Smiths Creek', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 38),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NB'), 'Billing', '38', 'Rock Maple St. ', 'E8B 5T0', 'Kedgwick', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 39),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NB'), 'Both', '668', 'W. Stonybrook Dr. ', 'E4H 4X1', 'Hillsborough', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 40),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NB'), 'Service', '97', 'Walnutwood Road  ', 'E7M 4T4', 'Woodstock', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 41),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NS'), 'Billing', '690', 'Proctor Lane  ', 'B2H 8R8', 'New Glasgow', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 42),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NS'), 'Both', '36', 'Sunbeam Street  ', 'B0T 2X8', 'Queens County', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 43),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NS'), 'Service', '7833', 'Green Hill Dr. ', 'B2N 7M0', 'Truro', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 44),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NS'), 'Billing', '8272', 'North Acacia Rd. ', 'B0V 6A6', 'Digby Neck', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 45),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NS'), 'Both', '95', 'Windfall Street  ', 'B1T 8R5', 'Christmas Island', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 46),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NS'), 'Service', '586', 'Prospect Dr.  ', 'B1A 7V4', 'Glace Bay', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 47),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NS'), 'Billing', '750', 'Longfellow Court  ', 'B2T 7S1', 'Enfield', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 48),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NS'), 'Both', '948', 'North Beacon Ave. ', 'B1B 4P7', 'Port Morien', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 49),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Service', '990', 'Bald Hill Ave. ', 'K9V 7K3', 'Lindsay', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 50),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Billing', '7701', 'Garden Court  ', 'K7S 7S6', 'Arnprior', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 51),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Both', '8700', 'Glenlake St.  ', 'N8P 7V4', 'Windsor', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 52),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Service', '86', 'Williams Street  ', 'L9R 6L2', 'Alliston', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 53),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Billing', '7239', 'Griffin Street  ', 'N3L 3X8', 'Paris', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 54),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Both', '776', 'Lexington St.  ', 'N4B 7V6', 'Delhi', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 55),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Service', '56', 'Heather Avenue  ', 'P1H 7M6', 'Huntsville', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 56),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Billing', '340', 'South Orchard Court ', 'K1G 8Y5', 'Ottawa', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 57),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Both', '946', 'N. Franklin Lane ', 'N5L 6X3', 'Port Stanley', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 58),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Service', '7355', 'Arlington Drive  ', 'L4P 9P4', 'Keswick', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 59),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Billing', '198', 'Atlantic St.  ', 'L7J 3X2', 'Acton', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 60),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Both', '685', 'Glendale St.  ', 'L9H 2N7', 'Dundas', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 61),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Service', '6', 'West Halifax Street ', 'P8N 5V8', 'Dryden', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 62),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Billing', '7394', 'Wintergreen Ave.  ', 'K4P 7V3', 'Greely', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 63),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Both', '9353', 'Old Wellington Lane ', 'L4G 1T6', 'Aurora', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 64),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Service', '29', 'Plymouth Dr.  ', 'L1A 8C1', 'Port Hope', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 65),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Billing', '1', 'Pendergast Avenue  ', 'L7E 4G4', 'Bolton', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 66),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Both', '9689', 'Valley Farms Drive ', 'N8N 9H7', 'Tecumseh Outskirts', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 67),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Service', '490', 'West Westminster Dr. ', 'L9Y 1T5', 'Collingwood', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 68),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Billing', '122', 'Holly St.  ', 'P5A 1P6', 'Elliot Lake', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 69),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Both', '1', 'Pacific St.  ', 'K4M 0P9', 'Manotick', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 70),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Service', '556', 'Golf Drive  ', 'N3B 3E3', 'Elmira', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 71),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Billing', '7873', 'Edgemont Ave.  ', 'L9L 4P9', 'Port Perry', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 72),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), 'Both', '11', 'Fifth St.  ', 'L3M 8C1', 'Grimsby', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 73),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'PE'), 'Service', '9733', 'W. Meadow Dr. ', 'C1N 1A2', 'Summerside', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 74),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Billing', '651', 'Arlington St.  ', 'J0G 1Y2', 'Bois-Francs-Nord', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 75),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Both', '8332', 'Fairfield Dr.  ', 'J7X 0R6', 'Valleyfield', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 76),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Service', '9', 'Sherwood St.  ', 'J5A 8R7', 'Saint-Constant', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 77),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Billing', '393', 'Garfield Street  ', 'H7N 2G8', 'Laval-des-Rapides', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 78),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Both', '8449', 'Fawn Street  ', 'J0B 3L0', 'Estrie-Est', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 79),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Service', '1', 'Birchwood Ave.  ', 'G0C 2V7', 'Gasp�sie-Sud', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 80),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Billing', '911', 'Walnut Street  ', 'G0B 2X5', 'Cap-aux-Meules', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 81),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Both', '372', 'Pierce Lane  ', 'J0W 1M2', 'Outaouais-Nord', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 82),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Service', '9', 'NW. Marshall Dr. ', 'H0H 9C8', 'Reserved', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 83),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Billing', '218', 'Academy St.  ', 'G5J 7K3', 'Amqui', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 84),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Both', '6', 'Shore Road  ', 'J0H 2G5', 'Bois-Francs-Sud', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 85),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Service', '79', 'Wood Ave.  ', 'J0X 5L6', 'Outaouais-Sud', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 86),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Billing', '865', 'Third St.  ', 'G4X 9P4', 'Gasp�', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 87),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Both', '880', 'Center Ave.  ', 'G0A 8R2', 'Capitale-Nationale', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 88),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Service', '7826', 'E. Glendale Lane ', 'J9Z 5H9', 'La Sarre', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 89),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Billing', '9010', 'Briarwood Road  ', 'H9S 9H8', 'L �le-Dorval', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 90),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Both', '8', 'Colonial Street  ', 'J3L 5K0', 'Chambly', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 91),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Service', '56', 'Poplar Dr.  ', 'J9P 2X0', 'Val-d Or', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 92),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Billing', '9997', 'Peg Shop St. ', 'G0T 2T6', 'Le Fjord', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 93),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Both', '168', 'Colonial Street  ', 'G0E 3B9', 'Gasp�sie-Nord', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 94),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Service', '58', 'Del Monte Dr. ', 'G3G 7R8', 'Lac-Saint-Charles', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 95),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Billing', '355', 'Lawrence St.  ', 'J2W 6K6', 'Saint-Luc', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 96),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Both', '91', 'Branch Street  ', 'J8E 5N1', 'Mont-Tremblant', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 97),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Service', '531', 'Glen Eagles Ave. ', 'G5R 2X1', 'Rivi�re-du-Loup', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 98),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Billing', '7109', 'Eagle Street  ', 'G0R 4T5', 'Appalaches', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 99),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), 'Both', '838', 'Riverside Street  ', 'J4V 9Y5', 'Greenfield Park', 'Canada', NULL, NULL),
((SELECT CUSTOMER.customer_id FROM CUSTOMER WHERE CUSTOMER.customer_id = 100),  (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'YT'), 'Service', '280', 'Blackburn Avenue  ', 'Y1A 1H4', 'Whitehorse', 'Canada', NULL, NULL);
SELECT TOP (10) * FROM CUSTOMER_ADDRESS;

--*****TEMP VALUES*****
INSERT INTO UTILITY
VALUES
(1, 'Electricy', 0.25, 'wt'),
(2, 'Water', 1.25, 'ml'),
(3, 'Natural Gas', 3.25, 'ml'),
(4, 'Electricy', 0.25, 'wt'),
(5, 'Water', 1.25, 'ml'),
(6, 'Natural Gas', 3.25, 'ml'),
(7, 'Electricy', 0.25, 'wt'),
(8, 'Water', 1.25, 'ml'),
(9, 'Natural Gas', 3.25, 'ml');
SELECT TOP (10) * FROM UTILITY;

INSERT INTO PROVIDER_SERVICE_REGION
VALUES
(1, (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), (SELECT UTILITY_PROVIDER.business_number FROM UTILITY_PROVIDER WHERE UTILITY_PROVIDER.business_number = 218911783),(SELECT UTILITY.utility_id FROM UTILITY WHERE UTILITY.utility_id = 1)),
(2, (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'BC'), (SELECT UTILITY_PROVIDER.business_number FROM UTILITY_PROVIDER WHERE UTILITY_PROVIDER.business_number = 221568934),(SELECT UTILITY.utility_id FROM UTILITY WHERE UTILITY.utility_id = 2)),
(3, (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), (SELECT UTILITY_PROVIDER.business_number FROM UTILITY_PROVIDER WHERE UTILITY_PROVIDER.business_number = 218911783),(SELECT UTILITY.utility_id FROM UTILITY WHERE UTILITY.utility_id = 3)),
(4, (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'AB'), (SELECT UTILITY_PROVIDER.business_number FROM UTILITY_PROVIDER WHERE UTILITY_PROVIDER.business_number = 221568934),(SELECT UTILITY.utility_id FROM UTILITY WHERE UTILITY.utility_id = 4)),
(5, (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'YT'), (SELECT UTILITY_PROVIDER.business_number FROM UTILITY_PROVIDER WHERE UTILITY_PROVIDER.business_number = 218911783),(SELECT UTILITY.utility_id FROM UTILITY WHERE UTILITY.utility_id = 5)),
(6, (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), (SELECT UTILITY_PROVIDER.business_number FROM UTILITY_PROVIDER WHERE UTILITY_PROVIDER.business_number = 818125405),(SELECT UTILITY.utility_id FROM UTILITY WHERE UTILITY.utility_id = 5)),
(7, (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'QC'), (SELECT UTILITY_PROVIDER.business_number FROM UTILITY_PROVIDER WHERE UTILITY_PROVIDER.business_number = 221568934),(SELECT UTILITY.utility_id FROM UTILITY WHERE UTILITY.utility_id = 6)),
(8, (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'ON'), (SELECT UTILITY_PROVIDER.business_number FROM UTILITY_PROVIDER WHERE UTILITY_PROVIDER.business_number = 818125405),(SELECT UTILITY.utility_id FROM UTILITY WHERE UTILITY.utility_id = 7)),
(9, (SELECT REGION.region_ID FROM REGION WHERE REGION.region_ID = 'NS'), (SELECT UTILITY_PROVIDER.business_number FROM UTILITY_PROVIDER WHERE UTILITY_PROVIDER.business_number = 221568934),(SELECT UTILITY.utility_id FROM UTILITY WHERE UTILITY.utility_id = 8));
SELECT TOP(10) * FROM PROVIDER_SERVICE_REGION;

--INSERT INTO ACCOUNT VALUES
SELECT TOP (10) * FROM ACCOUNT;

--INSERT INTO INVOICE VALUES
SELECT TOP (10) * FROM INVOICE;

--INSERT INTO LINE_ITEM VALLUES
SELECT TOP (10) * FROM LINE_ITEM;

--INSERT INTO INVOICE_ITEM VALUES
SELECT TOP (10) * FROM INVOICE_ITEM;

--INSERT INTO ACCOUNT_TRANSACTIONS
SELECT TOP (10) * FROM ACCOUNT_TRANSACTIONS;

--INSERT INTO METER VALUES
SELECT TOP (10) * FROM METER;

--INSERT INTO USAGE VALUES
SELECT TOP (10) * FROM USAGE;