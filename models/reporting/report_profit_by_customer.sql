SELECT 
    A.CustomerID
    ,A.Segment
    ,A.Country
    ,SUM(A.OrderProfit) AS Profit
FROM {{ ref('stg_orders') }} AS A
GROUP BY
    A.CustomerID
    ,A.Segment
    ,A.Country