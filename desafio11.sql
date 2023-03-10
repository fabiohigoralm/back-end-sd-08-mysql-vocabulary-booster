SELECT 
    c.ContactName AS `Nome`,
    c.Country AS `País`,
    COUNT(d.Country) AS `Número de compatriotas`
FROM
    w3schools.customers c
        INNER JOIN
    w3schools.customers d ON c.Country = d.Country
        AND c.CustomerID <> d.CustomerID
GROUP BY c.Country , c.ContactName
ORDER BY c.ContactName;
