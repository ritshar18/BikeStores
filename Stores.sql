------STORES---------
SELECT Store.[store_id] AS StoreID
      ,Store.[store_name] AS 'Store Name'
      ,Store.[phone] AS Phone
      ,Store.[email] AS Email
      ,Store.[street] AS 'Address'
      ,Store.[city] AS City
      ,Store.[state] AS State
      ,Store.[zip_code] AS 'Zip Code'
	  ,SUM(Stock.[quantity]) AS 'Store Product Qty'
	  ,COUNT(Stock.[product_id]) AS 'Product Count'
  FROM [Bike Stores].[sales].[stores] AS Store
  LEFT JOIN [Bike Stores].production.stocks AS Stock ON Store.store_id = Stock.store_id
  GROUP BY Store.[store_id]
      ,Store.[store_name]
      ,Store.[phone]
      ,Store.[email]
      ,Store.[street]
      ,Store.[city]
      ,Store.[state]
      ,Store.[zip_code]