--------SALES ORDERS--------
SELECT Orders.[order_id] AS OrderID
      ,Cust.[first_name]+' '+[last_name] AS 'Customer Name'
      ,Orders.[order_status] AS 'Order Status'
      ,Orders.[order_date] AS 'Order Date'
      ,Orders.[required_date] AS 'Required Date'
      ,Orders.[shipped_date] AS 'Shipped Date'
      ,Store.[store_name] AS Store
      --,Orders.[staff_id] AS StaffID
  FROM [Bike Stores].[sales].[orders] AS Orders
  LEFT JOIN [Bike Stores].[sales].[customers] AS Cust ON Orders.customer_id = Cust.customer_id
  LEFT JOIN [Bike Stores].[sales].[stores] AS Store ON Orders.store_id = Store.store_id
  ORDER BY Orders.order_id ASC