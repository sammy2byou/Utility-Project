/* Database Project Phase 2
 * By:
 *		Josiah Henson
 *		Samantha McKenzie
 *		Matthew Graham
*/

/* CUSTOMER RELATED TABLES:
 * CUSTOMER
 * CUSTOMER_ADDRESS
 * METER
 * USAGE
 */
-- Represents a given person that has utility accounts.
CREATE TABLE CUSTOMER (
	customer_id				INT,
	fisrt_name				VARCHAR(30),
	last_name				VARCHAR(30),
	mailing_preferences			VARCHAR(30),
	email					VARCHAR(30),
	phone					VARCHAR(30),
	
	PRIMARY KEY(customer_id)
);

--Represents a geographical region, and the government mandated tax rate for 
--that specific region
CREATE TABLE REGION (
	region_ID		VARCHAR(2) NOT NULL,
	region_name		VARCHAR(30),
	tax_rate		DECIMAL NOT NULL,

	PRIMARY KEY (region_ID)
);

-- Represents addressess for customer sites, the function for each is determined
-- by the address_description attribute.
CREATE TABLE CUSTOMER_ADDRESS (
	customer_id				INT NOT NULL,
	region					VARCHAR(2) NOT NULL, 
	address_description		VARCHAR(30),
	street_number			INT,
	street_name				VARCHAR(30),
	postal_code				VARCHAR(30),
	city					VARCHAR(30),
	country					VARCHAR(30),
	lat						DECIMAL, --Latitude for sites without an address
	long					DECIMAL, --Longitude for sites without an address

	PRIMARY KEY (customer_id, address_description),
	FOREIGN KEY (customer_id) REFERENCES CUSTOMER(customer_id),
	FOREIGN KEY (region) REFERENCES REGION(region_id)
);

/* UTILITY PROVIDER TABLES:
 * UTILITY
 * UTILITY_PROVIDER
 * REGION
 * PROVIDER_SERVICE_REGION
 */
-- Represents a type of utility, e.g. Electricity, Gas, etc. and
-- stores the cost for the utility.
CREATE TABLE UTILITY (
	utility_id				INT	NOT NULL,
	utility_description		VARCHAR(30),
	unit_cost				DECIMAL,
	measurement_units		VARCHAR(30),

	PRIMARY KEY (utility_id)
);

-- Represents a utility provider, each of which can
-- serve multiple utilities in multiple regions,
-- see PROVIDER_SERVICE_REGION and PROVIDED_UTILITIES
CREATE TABLE UTILITY_PROVIDER (	
	business_number			INT NOT NULL,   -- As per Articles of Incorporation
	business_name			VARCHAR(30),
	late_interest_rate		DECIMAL,		-- Rate applied to late payments
	email					VARCHAR(30),		-- Main contact email
	phone					VARCHAR(30),		-- Main contact phone

	street_number			VARCHAR(30),			
	street_name				VARCHAR(30),
	postal_code				VARCHAR(30),		-- Head office address
	city					VARCHAR(30),
	region					VARCHAR(2),
	country					VARCHAR(30),

	PRIMARY KEY	(business_number),
	FOREIGN KEY (region) REFERENCES REGION(region_ID)
);

-- Stores the regions under which given utility providers
-- operate.
CREATE TABLE PROVIDER_SERVICE_REGION (	
	service_ID				INT NOT NULL,
	region_ID				VARCHAR(2) NOT NULL,
	business_number			INT NOT NULL,
	product_serviced		INT NOT NULL,

	PRIMARY KEY (service_ID),
	FOREIGN KEY (business_number) REFERENCES UTILITY_PROVIDER(business_number),
	FOREIGN KEY (region_ID)	REFERENCES REGION(region_ID),
	FOREIGN KEY (product_serviced) REFERENCES UTILITY (utility_id)
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
	payment_method			VARCHAR(30) NOT NULL,
	next_invoice_date		DATETIME,
	service_start_date		DATETIME,
	service_end_date		DATETIME,
	balance					DECIMAL,
	bank_account			INT,
	card_num				INT,
	card_expiry				DATETIME,
	card_CVV				INT,											
	overdue_payment			VARCHAR(30), 		-- uncertain on what the role of this is.

	PRIMARY KEY (account_number),
	FOREIGN KEY (customer_id) REFERENCES CUSTOMER(customer_id),
	FOREIGN KEY (business_number) REFERENCES UTILITY_PROVIDER(business_number),
	FOREIGN KEY (utility_id) REFERENCES PROVIDER_SERVICE_REGION (service_ID)

);

-- Represents an invoice, issued by the utility provider
-- for the given account.
CREATE TABLE INVOICE (
	invoice_number			INT,
	account_number			INT NOT NULL,
	issue_date				DATETIME,
	due_Date				DATETIME,
	total					DECIMAL,
	
	PRIMARY KEY (invoice_number),
	FOREIGN KEY (account_number) REFERENCES ACCOUNT(account_number)
);

-- Represents an item that a utility provider could charge for.
CREATE TABLE LINE_ITEM (
	line_item				INT,     --ie. inventory num
	line_item_description	VARCHAR(30), 
	cost					DECIMAL,

	PRIMARY KEY (line_item)
);

-- Represents the items listed on a given invoice.
CREATE TABLE INVOICE_ITEM (
	invoice_number			INT,
	line_item				INT,
	quantity				DECIMAL,

	PRIMARY KEY (line_item),
	FOREIGN KEY (invoice_number) REFERENCES INVOICE(invoice_number),
	FOREIGN KEY (line_item) REFERENCES LINE_ITEM(line_item)
);

-- Represents payments and charges on a given account.
CREATE TABLE ACCOUNT_TRANSACTIONS (
	transaction_id			INT NOT NULL,
	account_number			INT NOT NULL,
	transaction_amount		DECIMAL NOT NULL,
	invoice_number			INT,			-- can be null, transaction not necessarily related to invoice
	trasaction_description	VARCHAR(30),
	transit_num				INT,   --provided by bank (can be used to find payer and payee)
								   --left null in cases such as a charge being applied, where
								   --money does not exchange hands.
	
	PRIMARY KEY (transaction_id),
	FOREIGN KEY (account_number) REFERENCES ACCOUNT(account_number),
	FOREIGN KEY (invoice_number) REFERENCES INVOICE(invoice_number)
);

--Represents a unique utility meter, tied to an account 
CREATE TABLE METER (
	meter_ID		INT NOT NULL,
	account_number  INT NOT NULL,
	service_ID		INT NOT NULL,

	PRIMARY KEY(meter_ID),
	FOREIGN KEY(account_number) REFERENCES ACCOUNT(account_number),
	FOREIGN KEY (service_ID) REFERENCES PROVIDER_SERVICE_REGION (service_ID)
);

--Represents consumer usage(on a specific meter) over a 
--time period(denoted by invoice). **Consumers may have multiple 
--sites and thus more than one meter usage to be tied to their account
--hence the need for a usage_ID to denote a unique id for each usage.
CREATE TABLE USAGE(
	usage_ID		INT NOT NULL,
	invoice_num		INT NOT NULL,
	meter_ID		INT NOT NULL,
	consumption		DECIMAL NOT NULL,

	PRIMARY KEY(usage_ID),
	FOREIGN KEY(invoice_num) REFERENCES INVOICE(invoice_number),
	FOREIGN KEY(meter_ID) REFERENCES METER(meter_ID),

);