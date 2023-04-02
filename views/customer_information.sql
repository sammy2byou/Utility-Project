-- DROP VIEW customer_information;

CREATE VIEW customer_information AS
SELECT
	CUSTOMER.first_name + ' ' + CUSTOMER.last_name AS "Full Name",
	CUSTOMER.mailing_preferences AS "Mailing Preferences",
	CUSTOMER.email AS "Email Address",
	CUSTOMER.phone AS "Phone Number",
	CUSTOMER_ADDRESS.address_description AS "Address Description",
	CUSTOMER_ADDRESS.street_number + ' ' + CUSTOMER_ADDRESS.street_name + ' ' + CUSTOMER_ADDRESS.city + ', ' + CUSTOMER_ADDRESS.country + ' ' + CUSTOMER_ADDRESS.postal_code AS "Address",
	CAST(CUSTOMER_ADDRESS.lat AS VARCHAR) + ', ' + CAST(CUSTOMER_ADDRESS.long AS VARCHAR) AS "Coordinates"
FROM CUSTOMER
JOIN CUSTOMER_ADDRESS ON CUSTOMER.customer_id = CUSTOMER_ADDRESS.customer_id