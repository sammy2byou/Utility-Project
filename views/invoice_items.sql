-- DROP VIEW INVOICE_ITEMS;

CREATE VIEW INVOICE_ITEMS AS
SELECT
	INVOICE.account_number AS "Account Number",
	INVOICE.invoice_number AS "Invoice",
	INVOICE_ITEM.line_item AS "Line Item",
	INVOICE_ITEM.quantity AS "Quantity",
	LINE_ITEM.cost AS "Cost",
	INVOICE_ITEM.quantity * LINE_ITEM.cost AS "Sum"
FROM INVOICE
JOIN INVOICE_ITEM ON INVOICE.invoice_number = INVOICE_ITEM.invoice_number
JOIN LINE_ITEM ON LINE_ITEM.line_item = INVOICE_ITEM.line_item