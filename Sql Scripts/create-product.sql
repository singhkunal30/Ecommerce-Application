-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------

-- DROP SCHEMA IF EXISTS full_stack_ecommerce CASCADE;
-- CREATE SCHEMA full_stack_ecommerce;
-- SET search_path TO full_stack_ecommerce;

-- -----------------------------------------------------
-- Table product_category
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS product_category (
  id BIGSERIAL PRIMARY KEY,
  category_name VARCHAR(255) NULL
);

-- -----------------------------------------------------
-- Table product
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS product (
  id BIGSERIAL PRIMARY KEY,
  sku VARCHAR(255) DEFAULT NULL,
  name VARCHAR(255) DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL,
  unit_price float8 DEFAULT NULL,
  image_url VARCHAR(255) DEFAULT NULL,
  active BOOLEAN DEFAULT TRUE,
  units_in_stock INT DEFAULT NULL,
  date_created TIMESTAMPTZ DEFAULT NULL,
  last_updated TIMESTAMPTZ DEFAULT NULL,
  category_id BIGINT NOT NULL,
  CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES product_category (id)
);

-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------
INSERT INTO product_category (category_name) VALUES ('BOOKS');

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
  unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1000', 'JavaScript - The Fun Parts', 'Learn JavaScript',
  'assets/images/products/placeholder.png', TRUE, 100, 19.99, 1, NOW()),
  ('BOOK-TECH-1001', 'Spring Framework Tutorial', 'Learn Spring',
  'assets/images/products/placeholder.png', TRUE, 100, 29.99, 1, NOW()),
  ('BOOK-TECH-1002', 'Kubernetes - Deploying Containers', 'Learn Kubernetes',
  'assets/images/products/placeholder.png', TRUE, 100, 24.99, 1, NOW()),
  ('BOOK-TECH-1003', 'Internet of Things (IoT) - Getting Started', 'Learn IoT',
  'assets/images/products/placeholder.png', TRUE, 100, 29.99, 1, NOW()),
  ('BOOK-TECH-1004', 'The Go Programming Language: A to Z', 'Learn Go',
  'assets/images/products/placeholder.png', TRUE, 100, 24.99, 1, NOW());
