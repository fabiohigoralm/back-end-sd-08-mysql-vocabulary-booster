SELECT 
    p.ProductName AS `Produto`,
    MIN(od.Quantity) AS `Mínima`,
    MAX(od.Quantity) AS `Máxima`,
    round(AVG(od.Quantity),2) AS `Média`
FROM
    w3schools.products p
        INNER JOIN
    w3schools.order_details od ON p.ProductID = od.ProductID
GROUP BY p.ProductID
HAVING `Média` > 20
ORDER BY `Média` , `Produto`;
