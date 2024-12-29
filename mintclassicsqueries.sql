SELECT * FROM mintclassics.products
order by productName desc;

SELECT * FROM mintclassics.warehouses;

select warehouseCode, count(*)as num_of_distinct_products,sum(quantityInStock)as total_products_in_stock
FROM mintclassics.products
group by warehouseCode;

SELECT productCode,productName,quantityInStock,warehouseCode
FROM mintclassics.products
order by warehouseCode;

select p.productLine,count(o.quantityOrdered)as num_of_sales
from orderdetails as o join products as p
on p.productCode=o.productCode
group by productLine
order by num_of_sales desc;

select * from mintclassics.orderdetails
where productCode='S10_1678';

select p.productCode,p.productName,sum(o.quantityOrdered) as total_orderd_num,sum(o.priceEach)
from products as p 
	join orderdetails as o
	on p.productCode=o.productCode
group by productCode,productName
order by p.productName desc;

select 
	p.productLine,
	count(w.warehouseCode)as num_of_prroducts,
    w.warehouseCode,
    w.warehouseName,
    sum(p.quantityInStock)as total_stock
from 
	products as p
join 
	warehouses as w
on 
	p.warehouseCode=w.warehouseCode
group by 
	productLine,
    warehouseCode,
    warehouseName
order by total_stock desc;

 SELECT
  p.warehouseCode AS warehouseCode,
  p.productCode AS productCode,
  p.productName AS productName,
  p.quantityInStock AS quantityInStock,
  SUM(od.quantityOrdered) AS total_ordered,
  p.quantityInStock - SUM(od.quantityOrdered) AS remaining_stock,
  CASE 
   WHEN (p.quantityInStock - SUM(od.quantityOrdered)) > (2 * SUM(od.quantityOrdered)) THEN 'Overstocked'
   WHEN (p.quantityInStock - SUM(od.quantityOrdered)) < 650 THEN 'Understocked'
   ELSE 'Well-Stocked'
  END AS inventory_status
 FROM products AS p
 JOIN orderdetails AS od ON p.productCode = od.productCode
 JOIN orders o ON od.orderNumber = o.orderNumber
 WHERE o.status IN ('Shipped', 'Resolved')
 GROUP BY 
  p.warehouseCode,
  p.productCode,
  p.quantityInStock
  );
  
SELECT
    warehouseCode,
    inventory_status,
    COUNT(*) AS product_count
FROM inventory_summary
GROUP BY warehouseCode, inventory_status
order by warehouseCode;

SELECT
    warehouseCode,
    COUNT(*) as product_overstocked
FROM inventory_summary
WHERE inventory_status = 'Overstocked'
GROUP BY warehouseCode;

SELECT
p.productLine,
pl.textDescription AS productLineDescription,
SUM(p.quantityInStock) AS totalInventory,
SUM(od.quantityOrdered) AS totalSales,
SUM(od.priceEach * od.quantityOrdered) AS totalRevenue,
(SUM(od.quantityOrdered) / SUM(p.quantityInStock)) * 100 AS salesToInventoryPercentage
FROM

mintclassics.products AS p
 JOIN
mintclassics.productlines AS pl ON p.productLine = pl.productLine
 JOIN
mintclassics.orderdetails AS od ON p.productCode = od.productCode
GROUP BY
p.productLine, pl.textDescription
ORDER BY
salesToInventoryPercentage desc