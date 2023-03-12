/* CUSTOMER RELATED TABLES:
 * CUSTOMER
 * CUSTOMER_ADDRESS
 */
-- Represents a given person that has utility accounts.
CREATE TABLE CUSTOMER (
	customer_id				INT,
	mailing_preferences		VARCHAR,
	email					VARCHAR,
	phone					VARCHAR,
	meter_num				INT,
	
	PRIMARY KEY(customer_id)
);

-- Stores addressess for customers, the function for each is determined
-- by the address_description attribute.
CREATE TABLE CUSTOMER_ADDRESS (
	customer_id				INT NOT NULL,
	address_description		VARCHAR,
	street_number			INT,
	street_name				VARCHAR,
	postal_code				VARCHAR,
	city					VARCHAR,
	region					VARCHAR,
	country					VARCHAR,

	FOREIGN KEY (customer_id) REFERENCES CUSTOMER(customer_id)
);



/* UTILITY PROVIDER TABLES:
 * UTILITY
 * UTILITY_PROVIDER
 * PROVIDER_SERVICE_REGION
 * PROVIDED_UTILITIES
 */
-- Represents a type of utility, e.g. Electricity, Gas, etc. and
-- stores the cost for the utility.
CREATE TABLE UTILITY (
	utility_id				INT	NOT NULL,
	utility_description		VARCHAR,
	unit_cost				DECIMAL,
	measurement_units		VARCHAR,

	PRIMARY KEY (utility_id)
);

-- Represents a utility provider, each of which can
-- serve multiple utilities in multiple regions,
-- see PROVIDER_SERVICE_REGION and PROVIDED_UTILITIES
CREATE TABLE UTILITY_PROVIDER (	
	business_number			INT NOT NULL,
	late_interest_rate		DECIMAL,		-- this may make more sense under utility
	email					VARCHAR,		-- email and phone could have multiple values,
	phone					VARCHAR,		-- may be worth splitting these out into dedicated tables
	street_number			INT,			-- also consider this if additional addresses are needed
	street_name				VARCHAR,
	postal_code				VARCHAR,
	city					VARCHAR,
	region					VARCHAR,
	country					VARCHAR,

	PRIMARY KEY	(business_number)
);

-- Stores the regions under which given utility providers
-- operate.
CREATE TABLE PROVIDER_SERVICE_REGION (	
	business_number			INT NOT NULL,
	service_region_name		VARCHAR,

	FOREIGN KEY (business_number) REFERENCES UTILITY_PROVIDER(business_number)
);

-- Stores the utilities that a given utility provider
-- offers.
CREATE TABLE PROVIDED_UTILITIES (
	business_number			INT NOT NULL,
	utility_id				INT NOT NULL,
	utility_name			VARCHAR,

	PRIMARY KEY (business_number, utility_id),
	FOREIGN KEY (business_number) REFERENCES UTILITY_PROVIDER(business_number),
	FOREIGN KEY (utility_id) REFERENCES UTILITY(utility_id)
);



/* ACCOUNT AND INVOICE RELATED TABLES:
 * ACCOUNT
 * INVOICE
 * LINE_ITEM
 * INVOICE_ITEM
 * ACCOUNT_TRANSACTIONS
 */
-- Each account belongs to a single customer, and
-- represents each a single utility from a single provider
-- that the customer pays for.
CREATE TABLE ACCOUNT (
	account_number			INT,
	customer_id				INT NOT NULL,
	business_number			INT NOT NULL,
	utility_id				INT NOT NULL,
	next_invoice_date		DATETIME,
	service_start_date		DATETIME,
	service_end_date		DATETIME,
	meter_number			INT,			-- how does this relate to the meter_number field in CUSTOMER?
	balance					DECIMAL,
	utility_consumption		DECIMAL,		-- uncertain on the datatype here. Also, is this cumulative or
											-- just for a certain period. May be worth creating its own table.
	payment_details			VARCHAR,		-- should we be storing payment information, or should it be a per
											-- transaction type thing?
	overdue_payment			VARCHAR, 		-- uncertain on what the role of this is.

	PRIMARY KEY (account_number),
	FOREIGN KEY (customer_id) REFERENCES CUSTOMER(customer_id),
	FOREIGN KEY (business_number) REFERENCES UTILITY_PROVIDER(business_number),
	FOREIGN KEY (utility_id) REFERENCES UTILITY(utility_id)

);

-- Represents an invoice, issued by the utility provider
-- for the given account.
CREATE TABLE INVOICE (
	invoice_number			INT,
	account_number			INT NOT NULL,
	issue_date				DATETIME,
	due_Date				DATETIME,
	tax						DECIMAL,		-- will we need a way to figure out which line items are taxed?
	total					DECIMAL,
	balance					DECIMAL,		-- this and sub_total may not need to be stored, since they can
	sub_total				DECIMAL,		-- just be computed at runtime. I'm also unsure of what the sub_total should represent.

	PRIMARY KEY (invoice_number),
	FOREIGN KEY (account_number) REFERENCES ACCOUNT(account_number)
);

-- Represents an item that a utility provider could charge for.
CREATE TABLE LINE_ITEM (
	line_item				INT,
	line_item_description	VARCHAR,
	cost					DECIMAL,

	PRIMARY KEY (line_item)
);

-- Represents the items listed on a given invoice.
CREATE TABLE INVOICE_ITEM (
	invoice_number			INT,
	line_item				INT,
	quantity				DECIMAL,

	PRIMARY KEY (invoice_number, line_item),
	FOREIGN KEY (invoice_number) REFERENCES INVOICE(invoice_number),
	FOREIGN KEY (line_item) REFERENCES LINE_ITEM(line_item)
);

-- Represents payments and charges on a given account.
CREATE TABLE ACCOUNT_TRANSACTIONS (
	account_number			INT NOT NULL,
	invoice_number			INT,			-- can be null, transaction not necessarily related to invoice
	trasaction_description	VARCHAR,
	transaction_amount		DECIMAL NOT NULL,
	issuer					INT NOT NULL,	-- who issued the transaction, generally customer for a payment and the 
											-- company for a charge. requires the company to have an account (I think)
	
	FOREIGN KEY (account_number) REFERENCES ACCOUNT(account_number),
	FOREIGN KEY (invoice_number) REFERENCES INVOICE(invoice_number)
);