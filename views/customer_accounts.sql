-- Note: The CREATE VIEW won't run unless it is the first declaration.
-- In VSCode, you can just select the statements you want to run and run
-- them, which is necessary in this file.
-- The DROP statement below is for deleting the view before making changes
-- DROP VIEW CUSTOMER_ACCOUNTS;

-- table of all accounts, pulling the customer name, utility & utility provider
CREATE VIEW CUSTOMER_ACCOUNTS AS
SELECT
	ACCOUNT.account_number AS "Account Number",
	CUSTOMER.first_name + ' ' + CUSTOMER.last_name AS "Full Name",
	UTILITY.utility_description AS "Utility",
	UTILITY_PROVIDER.business_name AS "Provider",
	ACCOUNT.next_invoice_date AS "Next Invoice Due",
	ACCOUNT.service_start_date AS "Service Started",
	ACCOUNT.service_end_date AS "Service Ending",
	ACCOUNT.balance AS "Account Balance",
	ACCOUNT.overdue_payment AS "Payment Overduce?"
FROM ACCOUNT
JOIN UTILITY ON ACCOUNT.utility_id = UTILITY.utility_id
JOIN UTILITY_PROVIDER ON ACCOUNT.business_number = UTILITY_PROVIDER.business_number
JOIN CUSTOMER ON ACCOUNT.customer_id = CUSTOMER.customer_id
