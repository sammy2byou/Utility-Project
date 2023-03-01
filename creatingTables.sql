--For milestone 2
CREATE TABLE UTILITY_PROVIDER
( late_fee            DECIMAL,
  business_num        INT         NOT NULL,
  address             VARCHAR(),
  service_region      VARCHAR(), --Multi-value attribute, how show that in sql?
  utilities_offered   VARCHAR(),
  email               VARCHAR(),
  phone               VARCHAR(),
PRIMARY KEY   (business_num));
