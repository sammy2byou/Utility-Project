-- DROP VIEW INVOICE_ITEMS;

-- Used primarily to simplify ACCOUNT_INVOICES, and as a line by line summary for any given invoice
CREATE VIEW INVOICE_ITEMS AS
SELECT
	CUSTOMER.first_name + ' ' + CUSTOMER.last_name AS "Full Name",
	INVOICE.account_number AS "Account Number",
	INVOICE.invoice_number AS "Invoice",
	INVOICE_ITEM.line_item AS "Line Item",
	LINE_ITEM.line_item_description AS "Description",
	FORMAT(INVOICE_ITEM.quantity, 'N2') AS "Quantity",
	FORMAT(LINE_ITEM.cost, 'N2') AS "Cost",
	FORMAT(INVOICE_ITEM.quantity * LINE_ITEM.cost, 'N2') AS "Sum"
FROM INVOICE
JOIN INVOICE_ITEM ON INVOICE.invoice_number = INVOICE_ITEM.invoice_number
JOIN LINE_ITEM ON LINE_ITEM.line_item = INVOICE_ITEM.line_item
JOIN ACCOUNT ON ACCOUNT.account_number = INVOICE.account_number
JOIN CUSTOMER ON CUSTOMER.customer_id = ACCOUNT.customer_id