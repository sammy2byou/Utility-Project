--For milestone 2
CREATE TABLE UTILITY_PROVIDER
(	business_num			INT         NOT NULL,
	late_fee				DECIMAL,
	address					VARCHAR,
	service_region			VARCHAR, --Multi-value attribute, how show that in sql?
	utilities_offered		VARCHAR,
	email					VARCHAR,
	phone					VARCHAR,
	PRIMARY KEY	(business_num));

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
	line_item				VARCHAR, --multi
	account_num				INT,
	due_Date				DATETIME,
	total					DECIMAL,
	tax						DECIMAL,
	issue_date				DATETIME,
	line_item_descritpion	VARCHAR, --multi
	PRIMARY KEY (invoice_num));
--below command is just for testing
--DROP TABLE UTILITY, UTILITY_PROVIDER, CUSTOMER, ACCOUNT, INVOICE;