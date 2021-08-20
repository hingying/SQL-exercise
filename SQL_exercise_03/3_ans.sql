-- 3.1 Select all warehouses.
select *from warehouses;

-- 3.2 Select all boxes with a value larger than $150.
select*from boxes where value>150;

-- 3.3 Select all distinct contents in all the boxes.
select distinct contents from boxes;

-- 3.4 Select the average value of all the boxes.
select avg(value)from boxes;

-- 3.5 Select the warehouse code and the average value of the boxes in each warehouse.
select warehouse, avg(value) from boxes group by Warehouse;

-- 3.6 Same as previous exercise, but select only those warehouses where the average value of the boxes is greater than 150.
select warehouse, avg(value) from boxes group by Warehouse having avg(value)>150 ;

-- 3.7 Select the code of each box, along with the name of the city the box is located in.
select boxes.code,warehouses.location from boxes left join warehouses on boxes.warehouse = warehouses.code;

-- 3.8 Select the warehouse codes, along with the number of boxes in each warehouse. 
-- Optionally, take into account that some warehouses are empty (i.e., the box count should show up as zero, instead of omitting the warehouse from the result).
select warehouse,count(*) from boxes group by warehouse;

-- 3.9 Select the codes of all warehouses that are saturated 
-- (a warehouse is saturated if the number of boxes in it is larger than the warehouse's capacity).
select*from boxes;

-- 3.10 Select the codes of all the boxes located in Chicago.
select code from boxes where warehouse in (select code from warehouses where location = 'Chicago');

-- 3.11 Create a new warehouse in New York with a capacity for 3 boxes.
insert into warehouses values(6,'New York',3);

-- 3.12 Create a new box, with code "H5RT", containing "Papers" with a value of $200, and located in warehouse 2.
insert into boxes values("H5RT","Papers" ,200,2);

-- 3.13 Reduce the value of all boxes by 15%.
update boxes set value= value*0.85;

-- 3.14 Remove all boxes with a value lower than $100.
delete from boxes where value <100;

-- 3.15 Remove all boxes from saturated warehouses.


-- 3.16 Add Index for column "Warehouse" in table "boxes"
    -- !!!NOTE!!!: index should NOT be used on small tables in practice
-- 3.17 Print all the existing indexes
    -- !!!NOTE!!!: index should NOT be used on small tables in practice
-- 3.18 Remove (drop) the index you added just
    -- !!!NOTE!!!: index should NOT be used on small tables in practice





-- 3.1 Select all warehouses.
select *from warehouses;

-- 3.2 Select all boxes with a value larger than $150.
select*from boxes where value>150;

-- 3.3 Select all distinct contents in all the boxes.
select distinct contents from boxes;

-- 3.4 Select the average value of all the boxes.
select avg(value)from boxes;

-- 3.5 Select the warehouse code and the average value of the boxes in each warehouse.
select warehouse, avg(value) from boxes group by Warehouse;

-- 3.6 Same as previous exercise, but select only those warehouses where the average value of the boxes is greater than 150.
select warehouse, avg(value) from boxes group by Warehouse having avg(value)>150 ;

-- 3.7 Select the code of each box, along with the name of the city the box is located in.
select boxes.code,warehouses.location from boxes left join warehouses on boxes.warehouse = warehouses.code;

-- 3.8 Select the warehouse codes, along with the number of boxes in each warehouse. 
-- Optionally, take into account that some warehouses are empty (i.e., the box count should show up as zero, instead of omitting the warehouse from the result).
select warehouse,count(*) from boxes group by warehouse;

-- 3.9 Select the codes of all warehouses that are saturated 
-- (a warehouse is saturated if the number of boxes in it is larger than the warehouse's capacity).
select*from boxes;

-- 3.10 Select the codes of all the boxes located in Chicago.
select code from boxes where warehouse in (select code from warehouses where location = 'Chicago');

-- 3.11 Create a new warehouse in New York with a capacity for 3 boxes.
insert into warehouses values(6,'New York',3);

-- 3.12 Create a new box, with code "H5RT", containing "Papers" with a value of $200, and located in warehouse 2.
insert into boxes values("H5RT","Papers" ,200,2);

-- 3.13 Reduce the value of all boxes by 15%.
update boxes set value= value*0.85;

-- 3.14 Remove all boxes with a value lower than $100.
delete from boxes where value <100;

-- 3.15 Remove all boxes from saturated warehouses.


-- 3.16 Add Index for column "Warehouse" in table "boxes"
    -- !!!NOTE!!!: index should NOT be used on small tables in practice
-- 3.17 Print all the existing indexes
    -- !!!NOTE!!!: index should NOT be used on small tables in practice
-- 3.18 Remove (drop) the index you added just
    -- !!!NOTE!!!: index should NOT be used on small tables in practice





