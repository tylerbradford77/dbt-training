SELECT 
    A.orderID
    ,A.orderdate
    ,A.shipdate
    ,A.shipmode
    ,A.ordersellingprice - A.Ordercostprice AS OrderProfit
    ,A.Ordercostprice
    ,A.ordersellingprice
    ,B.CustomerID
    ,B.customername
    ,B.segment
    ,B.country
    ,C.category
    ,C.ProductID
    ,C.productname
    ,c.subcategory
FROM {{ ref('raw_orders') }} AS A
    LEFT JOIN {{ ref('raw_customer') }} AS B
        ON A.CustomerID = B.CustomerID
    LEFT JOIN {{ ref('raw_product') }} AS C
        ON A.ProductID  = C.ProductID