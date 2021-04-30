-----CUSTOMERS-----
SELECT [customer_id] AS CustomerID
      ,[first_name] AS 'First Name'
      ,[last_name] AS 'Last Name'
	  ,[first_name] + ' ' + [last_name] AS 'Full Name'
      ,[phone] AS Phone
      ,[email] AS Email
      ,[street] AS Street
      ,[city] AS City
      ,[state] AS State
      ,[zip_code] AS 'Zip Code'
  FROM [Bike Stores].[sales].[customers]