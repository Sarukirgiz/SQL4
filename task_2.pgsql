-- 2 часть:
-- 7. Выбрать все записи заказов в которых наименование страны отгрузки начинается с 'U'
-- SELECT *
-- FROM orders
-- WHERE ship_country LIKE 'U%'

-- 8. Выбрать записи заказов (включить колонки идентификатора заказа, идентификатора заказчика, веса и страны отгузки), 
-- которые должны быть отгружены в страны имя которых начинается с 'N', отсортировать по весу (по убыванию) 
-- и вывести только первые 10 записей.
-- SELECT order_id, customer_id, freight, ship_country
-- FROM orders
-- WHERE ship_country LIKE 'N%'
-- ORDER BY freight DESC
-- LIMIT 10;

-- 9. Выбрать записи работников (включить колонки имени, фамилии, телефона, региона) в которых регион неизвестен
-- SELECT last_name, first_name, home_phone, region
-- FROM employees
-- WHERE region IS NULL;

-- 10. Подсчитать кол-во заказчиков регион которых известен
-- SELECT COUNT (company_name)
-- FROM customers
-- WHERE region IS NOT NULL;

-- 11. Подсчитать кол-во поставщиков в каждой из стран и отсортировать результаты группировки по убыванию кол-ва
-- SELECT country, COUNT (*)
-- FROM suppliers
-- GROUP BY country
-- ORDER BY COUNT(*) DESC;

-- 12. Подсчитать суммарный вес заказов (в которых известен регион) по странам, затем отфильтровать по суммарному весу 
-- (вывести только те записи где суммарный вес больше 2750) и отсортировать по убыванию суммарного веса.
-- SELECT ship_country, SUM(freight) 
-- FROM orders
-- WHERE ship_country IS NOT NULL
-- GROUP BY ship_country
-- HAVING SUM(freight) > 2750
-- ORDER BY SUM(freight) DESC;

-- 13. Выбрать все уникальные страны заказчиков и поставщиков и отсортировать страны по возрастанию
-- SELECT country
-- FROM customers
-- UNION
-- SELECT country
-- FROM suppliers
-- ORDER BY country ASC;

-- 14. Выбрать такие страны в которых "зарегистированы" одновременно и заказчики и поставщики и работники.

-- 15. Выбрать такие страны в которых "зарегистированы" одновременно заказчики и поставщики, 

