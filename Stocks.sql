-----PRODUCT STOCKS----
SELECT Stocks.[store_id] AS 'StoreID'
      ,Store.[store_name] AS 'Store Name'
	  ,Stocks.[product_id] AS ProductID
      ,Stocks.[quantity] AS Quantity
  FROM [Bike Stores].[production].[stocks] AS Stocks
  LEFT JOIN [Bike Stores].[sales].[stores] AS Store ON Stocks.store_id = Store.store_id
  ORDER BY Stocks.store_id ASC