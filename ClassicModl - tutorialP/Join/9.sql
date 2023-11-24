SELECT * FROM salesdb.stores;

SELECT 
    store_name, product_name
FROM
    stores AS a
        CROSS JOIN
    products AS b;