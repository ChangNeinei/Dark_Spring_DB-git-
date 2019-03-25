BEGIN
    DBMS_OUTPUT.put_line('Checking Bill');
END;
/

SELECT (SUM(current_balance) / COUNT(current_balance))
AS big_company_avg_consume_amount_Jan
FROM customer
WHERE company_size >= 1000;

SELECT (SUM(current_balance) / COUNT(current_balance))
AS small_company_avg_consume_amount_Jan
FROM customer
WHERE company_size < 1000;