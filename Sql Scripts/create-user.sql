CREATE USER ecommerceapp WITH PASSWORD 'ecommerceapp';

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO ecommerceapp;

ALTER USER ecommerceapp WITH PASSWORD 'ecommerceapp';