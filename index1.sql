-- 1 task
SELECT
  e.empid                          id,
  e.firstname || ' ' || e.lastname fullname
FROM sampledb.employees e
ORDER BY lastname;

-- 2 task
SELECT
  p.productid,
  p.categoryid,
  p.unitprice
FROM sampledb.products p
ORDER BY p.unitprice DESC
LIMIT 5;

SELECT
  p.productid,
  p.categoryid,
  p.unitprice
FROM sampledb.products p
ORDER BY p.unitprice DESC
OFFSET 5
LIMIT 5;

-- 3 task
SELECT o.empid
FROM sampledb.orders o
WHERE o.custid = 1
EXCEPT
SELECT o.empid
FROM sampledb.orders o
WHERE o.custid = 2;

-- 4 task
SELECT city
FROM sampledb.suppliers s
WHERE s.city ILIKE 's%'
UNION
SELECT city
FROM sampledb.customers c
WHERE c.city ILIKE 's%';

-- 5 task
SELECT
  c.companyname,
  o.orderid,
  o.orderdate
FROM sampledb.customers c
  JOIN sampledb.orders o ON o.custid = c.custid
ORDER BY c.companyname, o.orderid DESC;

-- 6 task
SELECT
  c.companyname
FROM sampledb.customers c
INTERSECT
SELECT
  c.companyname
FROM sampledb.customers c
  JOIN sampledb.orders o ON o.custid = c.custid
ORDER BY companyname;