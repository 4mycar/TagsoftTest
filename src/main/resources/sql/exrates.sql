-- ----------------------------
-- Sequence structure for hibernate_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "hibernate_sequence";
CREATE SEQUENCE "hibernate_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for currencies
-- ----------------------------
DROP TABLE IF EXISTS "currencies";
CREATE TABLE "currencies" (
  "id" int4 NOT NULL,
  "alpha_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "country" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of currencies
-- ----------------------------
BEGIN;
INSERT INTO "currencies" VALUES (971, 'AFN', 'Afghani', 'AFGHANISTAN');
INSERT INTO "currencies" VALUES (8, 'ALL', 'Lek', 'ALBANIA');
INSERT INTO "currencies" VALUES (12, 'DZD', 'Algerian Dinar', 'ALGERIA');
INSERT INTO "currencies" VALUES (973, 'AOA', 'Kwanza', 'ANGOLA');
INSERT INTO "currencies" VALUES (32, 'ARS', 'Argentine Peso', 'ARGENTINA');
INSERT INTO "currencies" VALUES (51, 'AMD', 'Armenian Dram', 'ARMENIA');
INSERT INTO "currencies" VALUES (533, 'AWG', 'Aruban Florin', 'ARUBA');
INSERT INTO "currencies" VALUES (36, 'AUD', 'Australian Dollar', 'AUSTRALIA');
INSERT INTO "currencies" VALUES (944, 'AZN', 'Azerbaijan Manat', 'AZERBAIJAN');
INSERT INTO "currencies" VALUES (44, 'BSD', 'Bahamian Dollar', 'BAHAMAS (THE)');
INSERT INTO "currencies" VALUES (48, 'BHD', 'Bahraini Dinar', 'BAHRAIN');
INSERT INTO "currencies" VALUES (50, 'BDT', 'Taka', 'BANGLADESH');
INSERT INTO "currencies" VALUES (52, 'BBD', 'Barbados Dollar', 'BARBADOS');
INSERT INTO "currencies" VALUES (933, 'BYN', 'Belarusian Ruble', 'BELARUS');
INSERT INTO "currencies" VALUES (84, 'BZD', 'Belize Dollar', 'BELIZE');
INSERT INTO "currencies" VALUES (60, 'BMD', 'Bermudian Dollar', 'BERMUDA');
INSERT INTO "currencies" VALUES (64, 'BTN', 'Ngultrum', 'BHUTAN');
INSERT INTO "currencies" VALUES (68, 'BOB', 'Boliviano', 'BOLIVIA (PLURINATIONAL STATE OF)');
INSERT INTO "currencies" VALUES (984, 'BOV', 'Mvdol', 'BOLIVIA (PLURINATIONAL STATE OF)');
INSERT INTO "currencies" VALUES (977, 'BAM', 'Convertible Mark', 'BOSNIA AND HERZEGOVINA');
INSERT INTO "currencies" VALUES (72, 'BWP', 'Pula', 'BOTSWANA');
INSERT INTO "currencies" VALUES (986, 'BRL', 'Brazilian Real', 'BRAZIL');
INSERT INTO "currencies" VALUES (96, 'BND', 'Brunei Dollar', 'BRUNEI DARUSSALAM');
INSERT INTO "currencies" VALUES (975, 'BGN', 'Bulgarian Lev', 'BULGARIA');
INSERT INTO "currencies" VALUES (108, 'BIF', 'Burundi Franc', 'BURUNDI');
INSERT INTO "currencies" VALUES (132, 'CVE', 'Cabo Verde Escudo', 'CABO VERDE');
INSERT INTO "currencies" VALUES (116, 'KHR', 'Riel', 'CAMBODIA');
INSERT INTO "currencies" VALUES (124, 'CAD', 'Canadian Dollar', 'CANADA');
INSERT INTO "currencies" VALUES (136, 'KYD', 'Cayman Islands Dollar', 'CAYMAN ISLANDS (THE)');
INSERT INTO "currencies" VALUES (950, 'XAF', 'CFA Franc BEAC', 'CHAD');
INSERT INTO "currencies" VALUES (152, 'CLP', 'Chilean Peso', 'CHILE');
INSERT INTO "currencies" VALUES (990, 'CLF', 'Unidad de Fomento', 'CHILE');
INSERT INTO "currencies" VALUES (156, 'CNY', 'Yuan Renminbi', 'CHINA');
INSERT INTO "currencies" VALUES (170, 'COP', 'Colombian Peso', 'COLOMBIA');
INSERT INTO "currencies" VALUES (970, 'COU', 'Unidad de Valor Real', 'COLOMBIA');
INSERT INTO "currencies" VALUES (174, 'KMF', 'Comorian Franc ', 'COMOROS (THE)');
INSERT INTO "currencies" VALUES (976, 'CDF', 'Congolese Franc', 'CONGO (THE DEMOCRATIC REPUBLIC OF THE)');
INSERT INTO "currencies" VALUES (188, 'CRC', 'Costa Rican Colon', 'COSTA RICA');
INSERT INTO "currencies" VALUES (952, 'XOF', 'CFA Franc BCEAO', 'CÔTE D''IVOIRE');
INSERT INTO "currencies" VALUES (191, 'HRK', 'Kuna', 'CROATIA');
INSERT INTO "currencies" VALUES (192, 'CUP', 'Cuban Peso', 'CUBA');
INSERT INTO "currencies" VALUES (931, 'CUC', 'Peso Convertible', 'CUBA');
INSERT INTO "currencies" VALUES (203, 'CZK', 'Czech Koruna', 'CZECHIA');
INSERT INTO "currencies" VALUES (262, 'DJF', 'Djibouti Franc', 'DJIBOUTI');
INSERT INTO "currencies" VALUES (214, 'DOP', 'Dominican Peso', 'DOMINICAN REPUBLIC (THE)');
INSERT INTO "currencies" VALUES (818, 'EGP', 'Egyptian Pound', 'EGYPT');
INSERT INTO "currencies" VALUES (222, 'SVC', 'El Salvador Colon', 'EL SALVADOR');
INSERT INTO "currencies" VALUES (232, 'ERN', 'Nakfa', 'ERITREA');
INSERT INTO "currencies" VALUES (748, 'SZL', 'Lilangeni', 'ESWATINI');
INSERT INTO "currencies" VALUES (230, 'ETB', 'Ethiopian Birr', 'ETHIOPIA');
INSERT INTO "currencies" VALUES (978, 'EUR', 'Euro', 'EUROPEAN UNION');
INSERT INTO "currencies" VALUES (238, 'FKP', 'Falkland Islands Pound', 'FALKLAND ISLANDS (THE) [MALVINAS]');
INSERT INTO "currencies" VALUES (208, 'DKK', 'Danish Krone', 'FAROE ISLANDS (THE)');
INSERT INTO "currencies" VALUES (242, 'FJD', 'Fiji Dollar', 'FIJI');
INSERT INTO "currencies" VALUES (953, 'XPF', 'CFP Franc', 'FRENCH POLYNESIA');
INSERT INTO "currencies" VALUES (270, 'GMD', 'Dalasi', 'GAMBIA (THE)');
INSERT INTO "currencies" VALUES (981, 'GEL', 'Lari', 'GEORGIA');
INSERT INTO "currencies" VALUES (936, 'GHS', 'Ghana Cedi', 'GHANA');
INSERT INTO "currencies" VALUES (292, 'GIP', 'Gibraltar Pound', 'GIBRALTAR');
INSERT INTO "currencies" VALUES (320, 'GTQ', 'Quetzal', 'GUATEMALA');
INSERT INTO "currencies" VALUES (324, 'GNF', 'Guinean Franc', 'GUINEA');
INSERT INTO "currencies" VALUES (328, 'GYD', 'Guyana Dollar', 'GUYANA');
INSERT INTO "currencies" VALUES (332, 'HTG', 'Gourde', 'HAITI');
INSERT INTO "currencies" VALUES (340, 'HNL', 'Lempira', 'HONDURAS');
INSERT INTO "currencies" VALUES (344, 'HKD', 'Hong Kong Dollar', 'HONG KONG');
INSERT INTO "currencies" VALUES (348, 'HUF', 'Forint', 'HUNGARY');
INSERT INTO "currencies" VALUES (352, 'ISK', 'Iceland Krona', 'ICELAND');
INSERT INTO "currencies" VALUES (356, 'INR', 'Indian Rupee', 'INDIA');
INSERT INTO "currencies" VALUES (360, 'IDR', 'Rupiah', 'INDONESIA');
INSERT INTO "currencies" VALUES (960, 'XDR', 'SDR (Special Drawing Right)', 'INTERNATIONAL MONETARY FUND (IMF) ');
INSERT INTO "currencies" VALUES (364, 'IRR', 'Iranian Rial', 'IRAN (ISLAMIC REPUBLIC OF)');
INSERT INTO "currencies" VALUES (368, 'IQD', 'Iraqi Dinar', 'IRAQ');
INSERT INTO "currencies" VALUES (376, 'ILS', 'New Israeli Sheqel', 'ISRAEL');
INSERT INTO "currencies" VALUES (388, 'JMD', 'Jamaican Dollar', 'JAMAICA');
INSERT INTO "currencies" VALUES (392, 'JPY', 'Yen', 'JAPAN');
INSERT INTO "currencies" VALUES (400, 'JOD', 'Jordanian Dinar', 'JORDAN');
INSERT INTO "currencies" VALUES (398, 'KZT', 'Tenge', 'KAZAKHSTAN');
INSERT INTO "currencies" VALUES (404, 'KES', 'Kenyan Shilling', 'KENYA');
INSERT INTO "currencies" VALUES (408, 'KPW', 'North Korean Won', 'KOREA (THE DEMOCRATIC PEOPLE’S REPUBLIC OF)');
INSERT INTO "currencies" VALUES (410, 'KRW', 'Won', 'KOREA (THE REPUBLIC OF)');
INSERT INTO "currencies" VALUES (414, 'KWD', 'Kuwaiti Dinar', 'KUWAIT');
INSERT INTO "currencies" VALUES (417, 'KGS', 'Som', 'KYRGYZSTAN');
INSERT INTO "currencies" VALUES (418, 'LAK', 'Lao Kip', 'LAO PEOPLE’S DEMOCRATIC REPUBLIC (THE)');
INSERT INTO "currencies" VALUES (643, 'RUB', 'Russian Ruble', 'RUSSIAN FEDERATION (THE)');
INSERT INTO "currencies" VALUES (422, 'LBP', 'Lebanese Pound', 'LEBANON');
INSERT INTO "currencies" VALUES (426, 'LSL', 'Loti', 'LESOTHO');
INSERT INTO "currencies" VALUES (430, 'LRD', 'Liberian Dollar', 'LIBERIA');
INSERT INTO "currencies" VALUES (434, 'LYD', 'Libyan Dinar', 'LIBYA');
INSERT INTO "currencies" VALUES (446, 'MOP', 'Pataca', 'MACAO');
INSERT INTO "currencies" VALUES (807, 'MKD', 'Denar', 'NORTH MACEDONIA');
INSERT INTO "currencies" VALUES (969, 'MGA', 'Malagasy Ariary', 'MADAGASCAR');
INSERT INTO "currencies" VALUES (454, 'MWK', 'Malawi Kwacha', 'MALAWI');
INSERT INTO "currencies" VALUES (458, 'MYR', 'Malaysian Ringgit', 'MALAYSIA');
INSERT INTO "currencies" VALUES (462, 'MVR', 'Rufiyaa', 'MALDIVES');
INSERT INTO "currencies" VALUES (929, 'MRU', 'Ouguiya', 'MAURITANIA');
INSERT INTO "currencies" VALUES (480, 'MUR', 'Mauritius Rupee', 'MAURITIUS');
INSERT INTO "currencies" VALUES (965, 'XUA', 'ADB Unit of Account', 'MEMBER COUNTRIES OF THE AFRICAN DEVELOPMENT BANK GROUP');
INSERT INTO "currencies" VALUES (484, 'MXN', 'Mexican Peso', 'MEXICO');
INSERT INTO "currencies" VALUES (979, 'MXV', 'Mexican Unidad de Inversion (UDI)', 'MEXICO');
INSERT INTO "currencies" VALUES (498, 'MDL', 'Moldovan Leu', 'MOLDOVA (THE REPUBLIC OF)');
INSERT INTO "currencies" VALUES (496, 'MNT', 'Tugrik', 'MONGOLIA');
INSERT INTO "currencies" VALUES (951, 'XCD', 'East Caribbean Dollar', 'MONTSERRAT');
INSERT INTO "currencies" VALUES (943, 'MZN', 'Mozambique Metical', 'MOZAMBIQUE');
INSERT INTO "currencies" VALUES (104, 'MMK', 'Kyat', 'MYANMAR');
INSERT INTO "currencies" VALUES (516, 'NAD', 'Namibia Dollar', 'NAMIBIA');
INSERT INTO "currencies" VALUES (524, 'NPR', 'Nepalese Rupee', 'NEPAL');
INSERT INTO "currencies" VALUES (554, 'NZD', 'New Zealand Dollar', 'NEW ZEALAND');
INSERT INTO "currencies" VALUES (558, 'NIO', 'Cordoba Oro', 'NICARAGUA');
INSERT INTO "currencies" VALUES (566, 'NGN', 'Naira', 'NIGERIA');
INSERT INTO "currencies" VALUES (578, 'NOK', 'Norwegian Krone', 'NORWAY');
INSERT INTO "currencies" VALUES (512, 'OMR', 'Rial Omani', 'OMAN');
INSERT INTO "currencies" VALUES (586, 'PKR', 'Pakistan Rupee', 'PAKISTAN');
INSERT INTO "currencies" VALUES (590, 'PAB', 'Balboa', 'PANAMA');
INSERT INTO "currencies" VALUES (598, 'PGK', 'Kina', 'PAPUA NEW GUINEA');
INSERT INTO "currencies" VALUES (600, 'PYG', 'Guarani', 'PARAGUAY');
INSERT INTO "currencies" VALUES (604, 'PEN', 'Sol', 'PERU');
INSERT INTO "currencies" VALUES (608, 'PHP', 'Philippine Peso', 'PHILIPPINES (THE)');
INSERT INTO "currencies" VALUES (985, 'PLN', 'Zloty', 'POLAND');
INSERT INTO "currencies" VALUES (634, 'QAR', 'Qatari Rial', 'QATAR');
INSERT INTO "currencies" VALUES (946, 'RON', 'Romanian Leu', 'ROMANIA');
INSERT INTO "currencies" VALUES (646, 'RWF', 'Rwanda Franc', 'RWANDA');
INSERT INTO "currencies" VALUES (654, 'SHP', 'Saint Helena Pound', 'SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA');
INSERT INTO "currencies" VALUES (882, 'WST', 'Tala', 'SAMOA');
INSERT INTO "currencies" VALUES (930, 'STN', 'Dobra', 'SAO TOME AND PRINCIPE');
INSERT INTO "currencies" VALUES (682, 'SAR', 'Saudi Riyal', 'SAUDI ARABIA');
INSERT INTO "currencies" VALUES (941, 'RSD', 'Serbian Dinar', 'SERBIA');
INSERT INTO "currencies" VALUES (690, 'SCR', 'Seychelles Rupee', 'SEYCHELLES');
INSERT INTO "currencies" VALUES (694, 'SLL', 'Leone', 'SIERRA LEONE');
INSERT INTO "currencies" VALUES (702, 'SGD', 'Singapore Dollar', 'SINGAPORE');
INSERT INTO "currencies" VALUES (532, 'ANG', 'Netherlands Antillean Guilder', 'SINT MAARTEN (DUTCH PART)');
INSERT INTO "currencies" VALUES (994, 'XSU', 'Sucre', 'SISTEMA UNITARIO DE COMPENSACION REGIONAL DE PAGOS "SUCRE"');
INSERT INTO "currencies" VALUES (90, 'SBD', 'Solomon Islands Dollar', 'SOLOMON ISLANDS');
INSERT INTO "currencies" VALUES (706, 'SOS', 'Somali Shilling', 'SOMALIA');
INSERT INTO "currencies" VALUES (710, 'ZAR', 'Rand', 'SOUTH AFRICA');
INSERT INTO "currencies" VALUES (728, 'SSP', 'South Sudanese Pound', 'SOUTH SUDAN');
INSERT INTO "currencies" VALUES (144, 'LKR', 'Sri Lanka Rupee', 'SRI LANKA');
INSERT INTO "currencies" VALUES (938, 'SDG', 'Sudanese Pound', 'SUDAN (THE)');
INSERT INTO "currencies" VALUES (968, 'SRD', 'Surinam Dollar', 'SURINAME');
INSERT INTO "currencies" VALUES (752, 'SEK', 'Swedish Krona', 'SWEDEN');
INSERT INTO "currencies" VALUES (756, 'CHF', 'Swiss Franc', 'SWITZERLAND');
INSERT INTO "currencies" VALUES (947, 'CHE', 'WIR Euro', 'SWITZERLAND');
INSERT INTO "currencies" VALUES (948, 'CHW', 'WIR Franc', 'SWITZERLAND');
INSERT INTO "currencies" VALUES (760, 'SYP', 'Syrian Pound', 'SYRIAN ARAB REPUBLIC');
INSERT INTO "currencies" VALUES (901, 'TWD', 'New Taiwan Dollar', 'TAIWAN (PROVINCE OF CHINA)');
INSERT INTO "currencies" VALUES (972, 'TJS', 'Somoni', 'TAJIKISTAN');
INSERT INTO "currencies" VALUES (834, 'TZS', 'Tanzanian Shilling', 'TANZANIA, UNITED REPUBLIC OF');
INSERT INTO "currencies" VALUES (764, 'THB', 'Baht', 'THAILAND');
INSERT INTO "currencies" VALUES (776, 'TOP', 'Pa’anga', 'TONGA');
INSERT INTO "currencies" VALUES (780, 'TTD', 'Trinidad and Tobago Dollar', 'TRINIDAD AND TOBAGO');
INSERT INTO "currencies" VALUES (788, 'TND', 'Tunisian Dinar', 'TUNISIA');
INSERT INTO "currencies" VALUES (949, 'TRY', 'Turkish Lira', 'TURKEY');
INSERT INTO "currencies" VALUES (934, 'TMT', 'Turkmenistan New Manat', 'TURKMENISTAN');
INSERT INTO "currencies" VALUES (800, 'UGX', 'Uganda Shilling', 'UGANDA');
INSERT INTO "currencies" VALUES (980, 'UAH', 'Hryvnia', 'UKRAINE');
INSERT INTO "currencies" VALUES (784, 'AED', 'UAE Dirham', 'UNITED ARAB EMIRATES (THE)');
INSERT INTO "currencies" VALUES (826, 'GBP', 'Pound Sterling', 'UNITED KINGDOM OF GREAT BRITAIN AND NORTHERN IRELAND (THE)');
INSERT INTO "currencies" VALUES (840, 'USD', 'US Dollar', 'UNITED STATES OF AMERICA (THE)');
INSERT INTO "currencies" VALUES (997, 'USN', 'US Dollar (Next day)', 'UNITED STATES OF AMERICA (THE)');
INSERT INTO "currencies" VALUES (858, 'UYU', 'Peso Uruguayo', 'URUGUAY');
INSERT INTO "currencies" VALUES (940, 'UYI', 'Uruguay Peso en Unidades Indexadas (UI)', 'URUGUAY');
INSERT INTO "currencies" VALUES (927, 'UYW', 'Unidad Previsional', 'URUGUAY');
INSERT INTO "currencies" VALUES (860, 'UZS', 'Uzbekistan Sum', 'UZBEKISTAN');
INSERT INTO "currencies" VALUES (548, 'VUV', 'Vatu', 'VANUATU');
INSERT INTO "currencies" VALUES (928, 'VES', 'Bolívar Soberano', 'VENEZUELA (BOLIVARIAN REPUBLIC OF)');
INSERT INTO "currencies" VALUES (704, 'VND', 'Dong', 'VIET NAM');
INSERT INTO "currencies" VALUES (504, 'MAD', 'Moroccan Dirham', 'WESTERN SAHARA');
INSERT INTO "currencies" VALUES (886, 'YER', 'Yemeni Rial', 'YEMEN');
INSERT INTO "currencies" VALUES (967, 'ZMW', 'Zambian Kwacha', 'ZAMBIA');
INSERT INTO "currencies" VALUES (932, 'ZWL', 'Zimbabwe Dollar', 'ZIMBABWE');
INSERT INTO "currencies" VALUES (955, 'XBA', 'Bond Markets Unit European Composite Unit (EURCO)', 'ZZ01_Bond Markets Unit European_EURCO');
INSERT INTO "currencies" VALUES (956, 'XBB', 'Bond Markets Unit European Monetary Unit (E.M.U.-6)', 'ZZ02_Bond Markets Unit European_EMU-6');
INSERT INTO "currencies" VALUES (957, 'XBC', 'Bond Markets Unit European Unit of Account 9 (E.U.A.-9)', 'ZZ03_Bond Markets Unit European_EUA-9');
INSERT INTO "currencies" VALUES (958, 'XBD', 'Bond Markets Unit European Unit of Account 17 (E.U.A.-17)', 'ZZ04_Bond Markets Unit European_EUA-17');
INSERT INTO "currencies" VALUES (963, 'XTS', 'Codes specifically reserved for testing purposes', 'ZZ06_Testing_Code');
INSERT INTO "currencies" VALUES (999, 'XXX', 'The codes assigned for transactions where no currency is involved', 'ZZ07_No_Currency');
INSERT INTO "currencies" VALUES (959, 'XAU', 'Gold', 'ZZ08_Gold');
INSERT INTO "currencies" VALUES (964, 'XPD', 'Palladium', 'ZZ09_Palladium');
INSERT INTO "currencies" VALUES (962, 'XPT', 'Platinum', 'ZZ10_Platinum');
INSERT INTO "currencies" VALUES (961, 'XAG', 'Silver', 'ZZ11_Silver');
INSERT INTO "currencies" VALUES (998, 'BTC', 'Bitcoin', 'all');
COMMIT;

-- ----------------------------
-- Table structure for rates
-- ----------------------------
DROP TABLE IF EXISTS "rates";
CREATE TABLE "rates" (
  "id" int8 NOT NULL,
  "rate_avg" numeric(19,2),
  "rate_buy" numeric(19,2),
  "rate_sell" numeric(19,2),
  "timestamp" timestamp(6) NOT NULL,
  "currency_from_id" int4 NOT NULL,
  "currency_to_id" int4 NOT NULL,
  "source_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of rates
-- ----------------------------
BEGIN;
INSERT INTO "rates" VALUES (86, 28.03, 27.90, 28.16, '2021-02-01 20:46:25.283266', 840, 980, 1);
INSERT INTO "rates" VALUES (87, 33.91, 33.72, 34.10, '2021-02-01 20:46:25.339345', 978, 980, 1);
INSERT INTO "rates" VALUES (88, 0.38, 0.37, 0.40, '2021-02-01 20:46:25.348269', 643, 980, 1);
INSERT INTO "rates" VALUES (89, 1.21, 1.20, 1.22, '2021-02-01 20:46:25.355264', 978, 840, 1);
INSERT INTO "rates" VALUES (90, 7.50, 7.41, 7.59, '2021-02-01 20:46:25.364264', 985, 980, 1);
INSERT INTO "rates" VALUES (91, 27.98, 27.80, 28.17, '2021-02-01 20:46:26.032282', 840, 980, 2);
INSERT INTO "rates" VALUES (92, 33.89, 33.65, 34.13, '2021-02-01 20:46:26.041266', 978, 980, 2);
INSERT INTO "rates" VALUES (93, 0.38, 0.37, 0.40, '2021-02-01 20:46:26.050285', 643, 980, 2);
INSERT INTO "rates" VALUES (94, 33800.77, 32110.73, 35490.81, '2021-02-01 20:46:26.060283', 998, 840, 2);
INSERT INTO "rates" VALUES (95, 28.03, 27.90, 28.16, '2021-02-01 21:11:07.204245', 840, 980, 1);
INSERT INTO "rates" VALUES (96, 33.91, 33.72, 34.10, '2021-02-01 21:11:07.212253', 978, 980, 1);
INSERT INTO "rates" VALUES (97, 0.38, 0.37, 0.40, '2021-02-01 21:11:07.219248', 643, 980, 1);
INSERT INTO "rates" VALUES (98, 1.21, 1.20, 1.22, '2021-02-01 21:11:07.224248', 978, 840, 1);
INSERT INTO "rates" VALUES (99, 7.50, 7.41, 7.59, '2021-02-01 21:11:07.232244', 985, 980, 1);
INSERT INTO "rates" VALUES (100, 27.98, 27.80, 28.17, '2021-02-01 21:11:07.678266', 840, 980, 2);
INSERT INTO "rates" VALUES (101, 33.89, 33.65, 34.13, '2021-02-01 21:11:07.686284', 978, 980, 2);
INSERT INTO "rates" VALUES (102, 0.38, 0.37, 0.40, '2021-02-01 21:11:07.695265', 643, 980, 2);
INSERT INTO "rates" VALUES (103, 33921.60, 32225.52, 35617.68, '2021-02-01 21:11:07.703247', 998, 840, 2);
INSERT INTO "rates" VALUES (104, 28.00, 27.85, 28.15, '2021-02-02 12:52:48.850291', 840, 980, 1);
INSERT INTO "rates" VALUES (105, 33.90, 33.70, 34.10, '2021-02-02 12:52:48.962297', 978, 980, 1);
INSERT INTO "rates" VALUES (106, 0.38, 0.37, 0.40, '2021-02-02 12:52:48.974318', 643, 980, 1);
INSERT INTO "rates" VALUES (107, 1.21, 1.20, 1.22, '2021-02-02 12:52:48.985286', 978, 840, 1);
INSERT INTO "rates" VALUES (108, 7.49, 7.40, 7.58, '2021-02-02 12:52:49.000285', 985, 980, 1);
INSERT INTO "rates" VALUES (109, 27.96, 27.75, 28.17, '2021-02-02 12:52:49.869317', 840, 980, 2);
INSERT INTO "rates" VALUES (110, 33.86, 33.60, 34.13, '2021-02-02 12:52:49.886286', 978, 980, 2);
INSERT INTO "rates" VALUES (111, 0.38, 0.36, 0.40, '2021-02-02 12:52:49.906301', 643, 980, 2);
INSERT INTO "rates" VALUES (112, 35195.85, 33436.05, 36955.64, '2021-02-02 12:52:49.931293', 998, 840, 2);
INSERT INTO "rates" VALUES (113, 21.39, 21.39, 21.39, '2021-02-02 12:52:50.270367', 36, 980, 3);
INSERT INTO "rates" VALUES (114, 21.90, 21.90, 21.90, '2021-02-02 12:52:50.278295', 124, 980, 3);
INSERT INTO "rates" VALUES (115, 4.34, 4.34, 4.34, '2021-02-02 12:52:50.288285', 156, 980, 3);
INSERT INTO "rates" VALUES (116, 4.48, 4.48, 4.48, '2021-02-02 12:52:50.295316', 191, 980, 3);
INSERT INTO "rates" VALUES (117, 1.31, 1.31, 1.31, '2021-02-02 12:52:50.305289', 203, 980, 3);
INSERT INTO "rates" VALUES (118, 4.56, 4.56, 4.56, '2021-02-02 12:52:50.312286', 208, 980, 3);
INSERT INTO "rates" VALUES (119, 3.62, 3.62, 3.62, '2021-02-02 12:52:50.321296', 344, 980, 3);
INSERT INTO "rates" VALUES (120, 0.10, 0.10, 0.10, '2021-02-02 12:52:50.33029', 348, 980, 3);
INSERT INTO "rates" VALUES (121, 0.38, 0.38, 0.38, '2021-02-02 12:52:50.338294', 356, 980, 3);
INSERT INTO "rates" VALUES (122, 0.00, 0.00, 0.00, '2021-02-02 12:52:50.345286', 360, 980, 3);
INSERT INTO "rates" VALUES (123, 8.53, 8.53, 8.53, '2021-02-02 12:52:50.35629', 376, 980, 3);
INSERT INTO "rates" VALUES (124, 0.27, 0.27, 0.27, '2021-02-02 12:52:50.363288', 392, 980, 3);
INSERT INTO "rates" VALUES (125, 0.07, 0.07, 0.07, '2021-02-02 12:52:50.371295', 398, 980, 3);
INSERT INTO "rates" VALUES (126, 0.03, 0.03, 0.03, '2021-02-02 12:52:50.378297', 410, 980, 3);
INSERT INTO "rates" VALUES (127, 1.38, 1.38, 1.38, '2021-02-02 12:52:50.386289', 484, 980, 3);
INSERT INTO "rates" VALUES (128, 1.62, 1.62, 1.62, '2021-02-02 12:52:50.393288', 498, 980, 3);
INSERT INTO "rates" VALUES (129, 20.11, 20.11, 20.11, '2021-02-02 12:52:50.399287', 554, 980, 3);
INSERT INTO "rates" VALUES (130, 3.26, 3.26, 3.26, '2021-02-02 12:52:50.406288', 578, 980, 3);
INSERT INTO "rates" VALUES (131, 0.37, 0.37, 0.37, '2021-02-02 12:52:50.411287', 643, 980, 3);
INSERT INTO "rates" VALUES (132, 7.48, 7.48, 7.48, '2021-02-02 12:52:50.418287', 682, 980, 3);
INSERT INTO "rates" VALUES (133, 21.06, 21.06, 21.06, '2021-02-02 12:52:50.424299', 702, 980, 3);
INSERT INTO "rates" VALUES (134, 1.87, 1.87, 1.87, '2021-02-02 12:52:50.431294', 710, 980, 3);
INSERT INTO "rates" VALUES (135, 3.34, 3.34, 3.34, '2021-02-02 12:52:50.439303', 752, 980, 3);
INSERT INTO "rates" VALUES (136, 31.33, 31.33, 31.33, '2021-02-02 12:52:50.44629', 756, 980, 3);
INSERT INTO "rates" VALUES (137, 1.78, 1.78, 1.78, '2021-02-02 12:52:50.45429', 818, 980, 3);
INSERT INTO "rates" VALUES (138, 38.39, 38.39, 38.39, '2021-02-02 12:52:50.462289', 826, 980, 3);
INSERT INTO "rates" VALUES (139, 28.06, 28.06, 28.06, '2021-02-02 12:52:50.467312', 840, 980, 3);
INSERT INTO "rates" VALUES (140, 10.70, 10.70, 10.70, '2021-02-02 12:52:50.474298', 933, 980, 3);
INSERT INTO "rates" VALUES (141, 16.52, 16.52, 16.52, '2021-02-02 12:52:50.481289', 944, 980, 3);
INSERT INTO "rates" VALUES (142, 6.96, 6.96, 6.96, '2021-02-02 12:52:50.490288', 946, 980, 3);
INSERT INTO "rates" VALUES (143, 3.90, 3.90, 3.90, '2021-02-02 12:52:50.499289', 949, 980, 3);
INSERT INTO "rates" VALUES (144, 40.35, 40.35, 40.35, '2021-02-02 12:52:50.510288', 960, 980, 3);
INSERT INTO "rates" VALUES (145, 17.34, 17.34, 17.34, '2021-02-02 12:52:50.52929', 975, 980, 3);
INSERT INTO "rates" VALUES (146, 33.90, 33.90, 33.90, '2021-02-02 12:52:50.54229', 978, 980, 3);
INSERT INTO "rates" VALUES (147, 7.52, 7.52, 7.52, '2021-02-02 12:52:50.554288', 985, 980, 3);
INSERT INTO "rates" VALUES (148, 0.21, 0.21, 0.21, '2021-02-02 12:52:50.576289', 12, 980, 3);
INSERT INTO "rates" VALUES (149, 0.33, 0.33, 0.33, '2021-02-02 12:52:50.584288', 50, 980, 3);
INSERT INTO "rates" VALUES (150, 0.05, 0.05, 0.05, '2021-02-02 12:52:50.596285', 51, 980, 3);
INSERT INTO "rates" VALUES (151, 0.00, 0.00, 0.00, '2021-02-02 12:52:50.611291', 364, 980, 3);
INSERT INTO "rates" VALUES (152, 0.02, 0.02, 0.02, '2021-02-02 12:52:50.621314', 368, 980, 3);
INSERT INTO "rates" VALUES (153, 0.33, 0.33, 0.33, '2021-02-02 12:52:50.644295', 417, 980, 3);
INSERT INTO "rates" VALUES (154, 0.02, 0.02, 0.02, '2021-02-02 12:52:50.652291', 422, 980, 3);
INSERT INTO "rates" VALUES (155, 6.30, 6.30, 6.30, '2021-02-02 12:52:50.661294', 434, 980, 3);
INSERT INTO "rates" VALUES (156, 6.96, 6.96, 6.96, '2021-02-02 12:52:50.670291', 458, 980, 3);
INSERT INTO "rates" VALUES (157, 3.14, 3.14, 3.14, '2021-02-02 12:52:50.679301', 504, 980, 3);
INSERT INTO "rates" VALUES (158, 0.00, 0.00, 0.00, '2021-02-02 12:52:50.688301', 704, 980, 3);
INSERT INTO "rates" VALUES (159, 0.94, 0.94, 0.94, '2021-02-02 12:52:50.701301', 764, 980, 3);
INSERT INTO "rates" VALUES (160, 7.66, 7.66, 7.66, '2021-02-02 12:52:50.801287', 784, 980, 3);
INSERT INTO "rates" VALUES (161, 10.41, 10.41, 10.41, '2021-02-02 12:52:50.809286', 788, 980, 3);
INSERT INTO "rates" VALUES (162, 0.00, 0.00, 0.00, '2021-02-02 12:52:50.820286', 860, 980, 3);
INSERT INTO "rates" VALUES (163, 1.00, 1.00, 1.00, '2021-02-02 12:52:50.83836', 901, 980, 3);
INSERT INTO "rates" VALUES (164, 8.04, 8.04, 8.04, '2021-02-02 12:52:50.851288', 934, 980, 3);
INSERT INTO "rates" VALUES (165, 4.83, 4.83, 4.83, '2021-02-02 12:52:50.889298', 936, 980, 3);
INSERT INTO "rates" VALUES (166, 0.29, 0.29, 0.29, '2021-02-02 12:52:50.967301', 941, 980, 3);
INSERT INTO "rates" VALUES (167, 2.49, 2.49, 2.49, '2021-02-02 12:52:50.981288', 972, 980, 3);
INSERT INTO "rates" VALUES (168, 8.53, 8.53, 8.53, '2021-02-02 12:52:51.004289', 981, 980, 3);
INSERT INTO "rates" VALUES (169, 5.12, 5.12, 5.12, '2021-02-02 12:52:51.113296', 986, 980, 3);
INSERT INTO "rates" VALUES (170, 52265.68, 52265.68, 52265.68, '2021-02-02 12:52:51.128288', 959, 980, 3);
INSERT INTO "rates" VALUES (171, 824.76, 824.76, 824.76, '2021-02-02 12:52:51.246315', 961, 980, 3);
INSERT INTO "rates" VALUES (172, 31511.72, 31511.72, 31511.72, '2021-02-02 12:52:51.258287', 962, 980, 3);
INSERT INTO "rates" VALUES (173, 63972.71, 63972.71, 63972.71, '2021-02-02 12:52:51.26529', 964, 980, 3);
INSERT INTO "rates" VALUES (174, 28.03, 27.90, 28.15, '2021-02-02 23:14:51.769656', 840, 980, 1);
INSERT INTO "rates" VALUES (175, 33.80, 33.60, 34.00, '2021-02-02 23:14:51.861651', 978, 980, 1);
INSERT INTO "rates" VALUES (176, 0.38, 0.37, 0.40, '2021-02-02 23:14:51.872697', 643, 980, 1);
INSERT INTO "rates" VALUES (177, 1.20, 1.20, 1.21, '2021-02-02 23:14:51.883722', 978, 840, 1);
INSERT INTO "rates" VALUES (178, 7.49, 7.40, 7.58, '2021-02-02 23:14:51.899648', 985, 980, 1);
INSERT INTO "rates" VALUES (179, 27.96, 27.75, 28.17, '2021-02-02 23:14:52.957662', 840, 980, 2);
INSERT INTO "rates" VALUES (180, 33.76, 33.50, 34.01, '2021-02-02 23:14:52.973648', 978, 980, 2);
INSERT INTO "rates" VALUES (181, 0.38, 0.36, 0.40, '2021-02-02 23:14:52.987666', 643, 980, 2);
INSERT INTO "rates" VALUES (182, 35674.95, 33891.20, 37458.69, '2021-02-02 23:14:53.007648', 998, 840, 2);
INSERT INTO "rates" VALUES (183, 21.31, 21.31, 21.31, '2021-02-02 23:14:53.284649', 36, 980, 3);
INSERT INTO "rates" VALUES (184, 21.90, 21.90, 21.90, '2021-02-02 23:14:53.296669', 124, 980, 3);
INSERT INTO "rates" VALUES (185, 4.35, 4.35, 4.35, '2021-02-02 23:14:53.310652', 156, 980, 3);
INSERT INTO "rates" VALUES (186, 4.46, 4.46, 4.46, '2021-02-02 23:14:53.329656', 191, 980, 3);
INSERT INTO "rates" VALUES (187, 1.31, 1.31, 1.31, '2021-02-02 23:14:53.346651', 203, 980, 3);
INSERT INTO "rates" VALUES (188, 4.54, 4.54, 4.54, '2021-02-02 23:14:53.353649', 208, 980, 3);
INSERT INTO "rates" VALUES (189, 3.62, 3.62, 3.62, '2021-02-02 23:14:53.37165', 344, 980, 3);
INSERT INTO "rates" VALUES (190, 0.09, 0.09, 0.09, '2021-02-02 23:14:53.385659', 348, 980, 3);
INSERT INTO "rates" VALUES (191, 0.38, 0.38, 0.38, '2021-02-02 23:14:53.401651', 356, 980, 3);
INSERT INTO "rates" VALUES (192, 0.00, 0.00, 0.00, '2021-02-02 23:14:53.411647', 360, 980, 3);
INSERT INTO "rates" VALUES (193, 8.51, 8.51, 8.51, '2021-02-02 23:14:53.420673', 376, 980, 3);
INSERT INTO "rates" VALUES (194, 0.27, 0.27, 0.27, '2021-02-02 23:14:53.433643', 392, 980, 3);
INSERT INTO "rates" VALUES (195, 0.07, 0.07, 0.07, '2021-02-02 23:14:53.442648', 398, 980, 3);
INSERT INTO "rates" VALUES (196, 0.03, 0.03, 0.03, '2021-02-02 23:14:53.456652', 410, 980, 3);
INSERT INTO "rates" VALUES (197, 1.39, 1.39, 1.39, '2021-02-02 23:14:53.470647', 484, 980, 3);
INSERT INTO "rates" VALUES (198, 1.62, 1.62, 1.62, '2021-02-02 23:14:53.478658', 498, 980, 3);
INSERT INTO "rates" VALUES (199, 20.11, 20.11, 20.11, '2021-02-02 23:14:53.491672', 554, 980, 3);
INSERT INTO "rates" VALUES (200, 3.26, 3.26, 3.26, '2021-02-02 23:14:53.502649', 578, 980, 3);
INSERT INTO "rates" VALUES (201, 0.37, 0.37, 0.37, '2021-02-02 23:14:53.508646', 643, 980, 3);
INSERT INTO "rates" VALUES (202, 7.48, 7.48, 7.48, '2021-02-02 23:14:53.525648', 682, 980, 3);
INSERT INTO "rates" VALUES (203, 21.06, 21.06, 21.06, '2021-02-02 23:14:53.537651', 702, 980, 3);
INSERT INTO "rates" VALUES (204, 1.87, 1.87, 1.87, '2021-02-02 23:14:53.552651', 710, 980, 3);
INSERT INTO "rates" VALUES (205, 3.33, 3.33, 3.33, '2021-02-02 23:14:53.569649', 752, 980, 3);
INSERT INTO "rates" VALUES (206, 31.25, 31.25, 31.25, '2021-02-02 23:14:53.588666', 756, 980, 3);
INSERT INTO "rates" VALUES (207, 1.78, 1.78, 1.78, '2021-02-02 23:14:53.600646', 818, 980, 3);
INSERT INTO "rates" VALUES (208, 38.35, 38.35, 38.35, '2021-02-02 23:14:53.607647', 826, 980, 3);
INSERT INTO "rates" VALUES (209, 28.06, 28.06, 28.06, '2021-02-02 23:14:53.616672', 840, 980, 3);
INSERT INTO "rates" VALUES (210, 10.66, 10.66, 10.66, '2021-02-02 23:14:53.627649', 933, 980, 3);
INSERT INTO "rates" VALUES (211, 16.52, 16.52, 16.52, '2021-02-02 23:14:53.638646', 944, 980, 3);
INSERT INTO "rates" VALUES (212, 6.93, 6.93, 6.93, '2021-02-02 23:14:53.652669', 946, 980, 3);
INSERT INTO "rates" VALUES (213, 3.90, 3.90, 3.90, '2021-02-02 23:14:53.661648', 949, 980, 3);
INSERT INTO "rates" VALUES (214, 40.31, 40.31, 40.31, '2021-02-02 23:14:53.672655', 960, 980, 3);
INSERT INTO "rates" VALUES (215, 17.28, 17.28, 17.28, '2021-02-02 23:14:53.685656', 975, 980, 3);
INSERT INTO "rates" VALUES (216, 33.79, 33.79, 33.79, '2021-02-02 23:14:53.693648', 978, 980, 3);
INSERT INTO "rates" VALUES (217, 7.52, 7.52, 7.52, '2021-02-02 23:14:53.710646', 985, 980, 3);
INSERT INTO "rates" VALUES (218, 0.21, 0.21, 0.21, '2021-02-02 23:14:53.726649', 12, 980, 3);
INSERT INTO "rates" VALUES (219, 0.33, 0.33, 0.33, '2021-02-02 23:14:53.736644', 50, 980, 3);
INSERT INTO "rates" VALUES (220, 0.05, 0.05, 0.05, '2021-02-02 23:14:53.744667', 51, 980, 3);
INSERT INTO "rates" VALUES (221, 0.00, 0.00, 0.00, '2021-02-02 23:14:53.761654', 364, 980, 3);
INSERT INTO "rates" VALUES (222, 0.02, 0.02, 0.02, '2021-02-02 23:14:53.776676', 368, 980, 3);
INSERT INTO "rates" VALUES (223, 0.33, 0.33, 0.33, '2021-02-02 23:14:53.791651', 417, 980, 3);
INSERT INTO "rates" VALUES (224, 0.02, 0.02, 0.02, '2021-02-02 23:14:53.805667', 422, 980, 3);
INSERT INTO "rates" VALUES (225, 6.30, 6.30, 6.30, '2021-02-02 23:14:53.818651', 434, 980, 3);
INSERT INTO "rates" VALUES (226, 6.96, 6.96, 6.96, '2021-02-02 23:14:53.830646', 458, 980, 3);
INSERT INTO "rates" VALUES (227, 3.14, 3.14, 3.14, '2021-02-02 23:14:53.844707', 504, 980, 3);
INSERT INTO "rates" VALUES (228, 0.00, 0.00, 0.00, '2021-02-02 23:14:53.854644', 704, 980, 3);
INSERT INTO "rates" VALUES (229, 0.94, 0.94, 0.94, '2021-02-02 23:14:53.861665', 764, 980, 3);
INSERT INTO "rates" VALUES (230, 7.66, 7.66, 7.66, '2021-02-02 23:14:53.875646', 784, 980, 3);
INSERT INTO "rates" VALUES (231, 10.41, 10.41, 10.41, '2021-02-02 23:14:53.885649', 788, 980, 3);
INSERT INTO "rates" VALUES (232, 0.00, 0.00, 0.00, '2021-02-02 23:14:53.892647', 860, 980, 3);
INSERT INTO "rates" VALUES (233, 1.00, 1.00, 1.00, '2021-02-02 23:14:53.904657', 901, 980, 3);
INSERT INTO "rates" VALUES (234, 8.04, 8.04, 8.04, '2021-02-02 23:14:53.914652', 934, 980, 3);
INSERT INTO "rates" VALUES (235, 4.83, 4.83, 4.83, '2021-02-02 23:14:53.925644', 936, 980, 3);
INSERT INTO "rates" VALUES (236, 0.29, 0.29, 0.29, '2021-02-02 23:14:53.940645', 941, 980, 3);
INSERT INTO "rates" VALUES (237, 2.49, 2.49, 2.49, '2021-02-02 23:14:53.950649', 972, 980, 3);
INSERT INTO "rates" VALUES (238, 8.53, 8.53, 8.53, '2021-02-02 23:14:53.969657', 981, 980, 3);
INSERT INTO "rates" VALUES (239, 5.12, 5.12, 5.12, '2021-02-02 23:14:53.982645', 986, 980, 3);
INSERT INTO "rates" VALUES (240, 51486.96, 51486.96, 51486.96, '2021-02-02 23:14:53.991647', 959, 980, 3);
INSERT INTO "rates" VALUES (241, 770.03, 770.03, 770.03, '2021-02-02 23:14:54.001648', 961, 980, 3);
INSERT INTO "rates" VALUES (242, 30870.68, 30870.68, 30870.68, '2021-02-02 23:14:54.014649', 962, 980, 3);
INSERT INTO "rates" VALUES (243, 62840.15, 62840.15, 62840.15, '2021-02-02 23:14:54.024647', 964, 980, 3);
COMMIT;

-- ----------------------------
-- Table structure for sources
-- ----------------------------
DROP TABLE IF EXISTS "sources";
CREATE TABLE "sources" (
  "id" int4 NOT NULL,
  "api_path" varchar(255) COLLATE "pg_catalog"."default",
  "name" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of sources
-- ----------------------------
BEGIN;
INSERT INTO "sources" VALUES (1, 'https://api.monobank.ua/bank/currency', 'mono');
INSERT INTO "sources" VALUES (2, 'https://api.privatbank.ua/p24api/pubinfo?json&exchange&coursid=11', 'privat');
INSERT INTO "sources" VALUES (3, 'https://bank.gov.ua/NBUStatService/v1/statdirectory/exchange?date=&json', 'nbu');
COMMIT;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"hibernate_sequence"', 244, true);

-- ----------------------------
-- Primary Key structure for table currencies
-- ----------------------------
ALTER TABLE "currencies" ADD CONSTRAINT "currencies_pkey1" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table rates
-- ----------------------------
ALTER TABLE "rates" ADD CONSTRAINT "rates_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sources
-- ----------------------------
ALTER TABLE "sources" ADD CONSTRAINT "sources_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table rates
-- ----------------------------
ALTER TABLE "rates" ADD CONSTRAINT "fkd7f67lml89wu4gk46w85og9jf" FOREIGN KEY ("source_id") REFERENCES "sources" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "rates" ADD CONSTRAINT "fkd7rle24ccm7thqrwwmwph968r" FOREIGN KEY ("currency_from_id") REFERENCES "currencies" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "rates" ADD CONSTRAINT "fkk0gkioq1q4fqn136itbgk7qta" FOREIGN KEY ("currency_to_id") REFERENCES "currencies" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
