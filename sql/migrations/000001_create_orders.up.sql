CREATE TABLE orders (
  id varchar(36) NOT NULL PRIMARY KEY,
  price FLOAT NOT NULL,
  tax FLOAT NOT NULL DEFAULT 0,
  final_price FLOAT NULL
);