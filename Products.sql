---PRODUCT------
SELECT Product.[product_id] AS ProductID
      ,Product.[product_name] AS 'Product Name'
      ,Brands.[brand_name] AS Brand
      ,Categories.[category_name] AS Category
      ,Product.[model_year] AS 'Model Year'
      ,Product.[list_price] AS 'List Price'
	  ,SUM(Stocks.quantity) AS Quantity
  FROM [Bike Stores].[production].[products] AS Product
  FULL JOIN [Bike Stores].[production].[brands] AS Brands ON Product.brand_id = Brands.brand_id
  FULL JOIN [Bike Stores].[production].[categories] AS Categories ON Product.category_id = Categories.category_id
  FULL JOIN [Bike Stores].[production].[stocks] AS Stocks ON Product.product_id = Stocks.product_id
  GROUP BY Product.[product_id]
          ,Product.[product_name]
          ,Brands.[brand_name]
          ,Categories.[category_name]
          ,Product.[model_year]
          ,Product.[list_price]
  ORDER BY Product.[product_id] ASC