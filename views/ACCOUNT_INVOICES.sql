-- DROP VIEW ACCOUNT_INVOICES;

-- For the accountant invoice summary
CREATE VIEW ACCOUNT_INVOICES AS
SELECT DISTINCT
	INVOICE.account_number AS "Account",
	INVOICE.invoice_number AS "Invoice",
	INVOICE.issue_date AS "Issue Date",
	INVOICE.due_date AS "Invoice Due",
	-- Subtotal
	-- For each invoice
	-- Sum of each LINE_ITEM.cost * INVOICE_ITEM.quantity
	FORMAT((
			SELECT SUM(Sum) FROM (
				SELECT
					INVOICE.invoice_number,
					INVOICE_ITEMS.Sum
				FROM
					INVOICE,
					INVOICE_ITEMS
				WHERE 
					INVOICE.invoice_number = INVOICE_ITEMS.Invoice
			) AS invoice_sums WHERE invoice_sums.invoice_number = INVOICE.invoice_number
		), 'N2') AS "Subtotal",
	-- Tax
	-- Tax is REGION.tax_rate * subtotal
	-- This requires pulling REGION from CUSTOMER_ADDRESS from CUSTOMER from ACCOUNT from INVOICE
	FORMAT(REGION.tax_rate / 100 * (
								SELECT SUM(Sum) FROM (
									SELECT
										INVOICE.invoice_number,
										INVOICE_ITEMS.Sum
									FROM
										INVOICE,
										INVOICE_ITEMS
									WHERE 
										INVOICE.invoice_number = INVOICE_ITEMS.Invoice
								) AS invoice_sums WHERE invoice_sums.invoice_number = INVOICE.invoice_number
							), 'N2') AS "Tax",
	FORMAT(((REGION.tax_rate / 100) + 1) * (
										SELECT SUM(Sum) FROM (
											SELECT
												INVOICE.invoice_number,
												INVOICE_ITEMS.Sum
											FROM
												INVOICE,
												INVOICE_ITEMS
											WHERE 
												INVOICE.invoice_number = INVOICE_ITEMS.Invoice
										) AS invoice_sums WHERE invoice_sums.invoice_number = INVOICE.invoice_number
									), 'N2') AS "Total"
FROM INVOICE, INVOICE_ITEMS, ACCOUNT
JOIN CUSTOMER ON ACCOUNT.customer_id = CUSTOMER.customer_id
JOIN CUSTOMER_ADDRESS ON CUSTOMER.customer_id = CUSTOMER_ADDRESS.customer_id
JOIN REGION ON CUSTOMER_ADDRESS.region = REGION.region_id
WHERE INVOICE_ITEMS.Invoice = INVOICE.invoice_number AND INVOICE.account_number = ACCOUNT.account_number