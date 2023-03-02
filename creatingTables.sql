--For milestone 2
CREATE TABLE UTILITY_PROVIDER
( late_fee            DECIMAL,
  business_num        INT         NOT NULL,
  address             VARCHAR(5),
  service_region      VARCHAR(5), --Multi-value attribute, how show that in sql?
  utilities_offered   VARCHAR(5),
  email               VARCHAR(5),
  phone               VARCHAR(5),
PRIMARY KEY	(business_num));