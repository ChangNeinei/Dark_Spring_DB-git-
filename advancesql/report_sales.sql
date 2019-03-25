SET SERVEROUTPUT ON

begin
    DBMS_OUTPUT.put_line('January Small Cup Sale Quantity');
end;
/
SELECT SUM(deliver_item.quantity) AS Item5000_TOTAL
FROM deliver_item
WHERE deliver_item.item_ID = 5000
AND deliver_item.service_ID IN
(SELECT deliver_service.service_ID FROM deliver_service
WHERE EXTRACT(YEAR FROM deliver_service.time_arrived) = 2019
AND EXTRACT(MONTH FROM deliver_service.time_arrived) = 01);
/
begin
    DBMS_OUTPUT.put_line('January MediumC up Sale Quantity');
end;
/
SELECT SUM(deliver_item.quantity) AS Item5001_TOTAL
FROM deliver_item
WHERE deliver_item.item_ID = 5001
AND deliver_item.service_ID IN
(SELECT deliver_service.service_ID FROM deliver_service
WHERE EXTRACT(YEAR FROM deliver_service.time_arrived) = 2019
AND EXTRACT(MONTH FROM deliver_service.time_arrived) = 01);
/
begin
    DBMS_OUTPUT.put_line('January Big Cup Sale Quantity');
end;
/
SELECT SUM(deliver_item.quantity) AS Item5002_TOTAL
FROM deliver_item
WHERE deliver_item.item_ID = 5002
AND deliver_item.service_ID IN
(SELECT deliver_service.service_ID FROM deliver_service
WHERE EXTRACT(YEAR FROM deliver_service.time_arrived) = 2019
AND EXTRACT(MONTH FROM deliver_service.time_arrived) = 01);
/
begin
    DBMS_OUTPUT.put_line('January Small Bottle Sale Quantity');
end;
/
SELECT SUM(deliver_item.quantity) AS Item5003_TOTAL
FROM deliver_item
WHERE deliver_item.item_ID = 5003
AND deliver_item.service_ID IN
(SELECT deliver_service.service_ID FROM deliver_service
WHERE EXTRACT(YEAR FROM deliver_service.time_arrived) = 2019
AND EXTRACT(MONTH FROM deliver_service.time_arrived) = 01);
/
begin
    DBMS_OUTPUT.put_line('January Straw Sale Quantity');
end;
/
SELECT SUM(deliver_item.quantity) AS Item5004_TOTAL
FROM deliver_item
WHERE deliver_item.item_ID = 5004
AND deliver_item.service_ID IN
(SELECT deliver_service.service_ID FROM deliver_service
WHERE EXTRACT(YEAR FROM deliver_service.time_arrived) = 2019
AND EXTRACT(MONTH FROM deliver_service.time_arrived) = 01);
