USE trysql;

load data local infile
  "/usr/local/share/seeds/customers.csv"
  into table customers 
  fields terminated by ',' optionally enclosed by '"'
  ignore 1 lines;

load data local infile
    "/usr/local/share/seeds/categories.csv"
    into table categories
    fields terminated by ',' optionally enclosed by '"'
    ignore 1 lines;

load data local infile
  "/usr/local/share/seeds/employees.csv"
  into table employees 
  fields terminated by ',' optionally enclosed by '"'
  ignore 1 lines;

load data local infile
  "/usr/local/share/seeds/suppliers.csv"
  into table suppliers 
  fields terminated by ',' optionally enclosed by '"'
  ignore 1 lines;
  
load data local infile
  "/usr/local/share/seeds/shippers.csv"
  into table shippers 
  fields terminated by ',' optionally enclosed by '"'
  ignore 1 lines;

load data local infile
  "/usr/local/share/seeds/products.csv"
  into table products 
  fields terminated by ',' optionally enclosed by '"'
  ignore 1 lines;

load data local infile
  "/usr/local/share/seeds/orders.csv"
  into table orders 
  fields terminated by ',' optionally enclosed by '"'
  ignore 1 lines;

load data local infile
  "/usr/local/share/seeds/order-details.csv"
  into table order_details 
  fields terminated by ',' optionally enclosed by '"'
  ignore 1 lines;
