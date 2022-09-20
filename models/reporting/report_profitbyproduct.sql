SELECT 
    A.ProductID
    ,A.ProductName
    ,A.Category
    ,A.Subcategory
    ,SUM(A.OrderProfit) AS Profit
FROM {{ ref('stg_orders') }} AS A
GROUP BY
    A.ProductID
    ,A.ProductName
    ,A.Category
    ,A.Subcategory