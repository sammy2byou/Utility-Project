CREATE TABLE UTILITY_PROVIDER
(	business_num			INT         NOT NULL,
	operating_as			VARCHAR,
	late_fee				DECIMAL,
	addr					VARCHAR,
	service_region			VARCHAR, --Multi-value attribute, how show that in sql?
	utilities_offered		VARCHAR,
	email					VARCHAR,
	phone					VARCHAR,
	PRIMARY KEY	(business_num));

CREATE TABLE REGION
	( region_id				INT NOT NULL,
	  region_name			VARCHAR,
	  PRIMARY KEY (region_id, region_name));

CREATE TABLE SERVICE_REGION
	( region_id				INT NOT NULL,
	  region_name			VARCHAR,
	  business_num			INT NOT NULL,
	  business_name			VARCHAR,
	  
	  PRIMARY KEY (region_id),
	  FOREIGN KEY (region_name) REFERENCES REGION(region_name),
	  FOREIGN KEY (business_name) REFERENCES UTILITY_PROVIDER(operating_as)
	);

CREATE TABLE UTILITY
(	utility_ID				INT		NOT NULL,
	measurment_units		VARCHAR,
	unit_cost				DECIMAL,
	PRIMARY KEY (utility_ID));

CREATE TABLE CUSTOMER
(	account_num				INT NOT NULL,
	mailing_pref			VARCHAR,
	billing_addr			VARCHAR,
	meter_num				INT,
	service_addr			VARCHAR,
	phone					VARCHAR,
	email					VARCHAR,
	PRIMARY KEY(account_num));

CREATE TABLE ACCOUNT
(	account_num				INT NOT NULL,
	debit					VARCHAR, --multi
	credit					VARCHAR, --multi
	meter_num				INT,
	next_invoice_date		DATETIME,
	balance					DECIMAL,
	utility_consumption		VARCHAR, --multi
	payment_history			VARCHAR, --multi
	associated_invoices		VARCHAR, --multi
	payment_details			VARCHAR,
	overdue_payment			VARCHAR, --maybe DATETIME???
	service_start_date		DATETIME,
	service_end_date		DATETIME,
	PRIMARY KEY(account_num));

CREATE TABLE INVOICE
(	invoice_num				INT NOT NULL,
	sub_total				DECIMAL,
	balance					DECIMAL,
	account_num				INT,
	due_Date				DATETIME,
	total					DECIMAL,
	tax						DECIMAL,
	issue_date				DATETIME,
	PRIMARY KEY (invoice_num));

	CREATE TABLE LINE_ITEMS
	(assoc_invoice_num		INT NOT NULL,
	 line_descript			VARCHAR,
	 line_item				DECIMAL,

	PRIMARY KEY(assoc_invoice_num));

	CREATE TABLE TRANSACTIONS
	(assoc_invoice_num		INT NOT NULL,
	 descript				VARCHAR,
	 transaction_amount		DECIMAL NOT NULL,
	  
	PRIMARY KEY (assoc_invoice_num));

	CREATE TABLE PRODUCT_OFFERING
	(product_num			INT NOT NULL,
	 descript				VARCHAR,
	 MSRP					DECIMAL,

	 PRIMARY KEY(product_num));
