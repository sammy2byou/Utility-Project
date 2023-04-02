-- Note: The CREATE VIEW won't run unless it is the first declaration.
-- In VSCode, you can just select the statements you want to run and run
-- them, which is necessary in this file.
-- The DROP statements below are for deleting the view before making changes
-- DROP VIEW customer_accounts;
-- DROP VIEW account_invoices;

CREATE VIEW customer_accounts AS
SELECT
	CUSTOMER.first_name + ' ' + CUSTOMER.last_name AS "Full Name",
	UTILITY.utility_description AS "Utility",
	UTILITY_PROVIDER.business_name AS "Provider",
	ACCOUNT.next_invoice_date AS "Next Invoice Due"
FROM ACCOUNT
JOIN UTILITY ON ACCOUNT.utility_id = UTILITY.utility_id
JOIN UTILITY_PROVIDER ON ACCOUNT.business_number = UTILITY_PROVIDER.business_number
JOIN CUSTOMER ON ACCOUNT.customer_id = CUSTOMER.customer_id
