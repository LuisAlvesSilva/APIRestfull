CREATE TABLE "Users"(
    "id" BIGINT NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "password" VARCHAR(255) NOT NULL,
    "address" VARCHAR(255) NOT NULL,
    "tel" BIGINT NOT NULL
);
ALTER TABLE
    "Users" ADD PRIMARY KEY("id");
ALTER TABLE
    "Users" ADD CONSTRAINT "users_email_unique" UNIQUE("email");
CREATE TABLE "Products"(
    "id" BIGINT NOT NULL,
    "product_name" VARCHAR(255) NOT NULL,
    "description" TEXT NOT NULL,
    "price" DECIMAL(8, 2) NOT NULL,
    "stock" BIGINT NOT NULL,
    "category_id" BIGINT NOT NULL
);
ALTER TABLE
    "Products" ADD PRIMARY KEY("id");
CREATE TABLE "Categories"(
    "id" BIGINT NOT NULL,
    "name" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Categories" ADD PRIMARY KEY("id");
CREATE TABLE "Orders"(
    "id" BIGINT NOT NULL,
    "user_id" BIGINT NOT NULL,
    "date" DATE NOT NULL,
    "status" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Orders" ADD PRIMARY KEY("id");
CREATE TABLE "Order_items"(
    "id" BIGINT NOT NULL,
    "order_id" BIGINT NOT NULL,
    "product_id" BIGINT NOT NULL,
    "quantity" BIGINT NOT NULL,
    "unit_price" DECIMAL(8, 2) NOT NULL
);
ALTER TABLE
    "Order_items" ADD PRIMARY KEY("id");
CREATE TABLE "Payments"(
    "id" BIGINT NOT NULL,
    "order_id" BIGINT NOT NULL,
    "method" VARCHAR(255) NOT NULL,
    "status" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Payments" ADD PRIMARY KEY("id");
ALTER TABLE
    "Payments" ADD CONSTRAINT "payments_order_id_foreign" FOREIGN KEY("order_id") REFERENCES "Orders"("id");
ALTER TABLE
    "Orders" ADD CONSTRAINT "orders_user_id_foreign" FOREIGN KEY("user_id") REFERENCES "Users"("id");
ALTER TABLE
    "Products" ADD CONSTRAINT "products_category_id_foreign" FOREIGN KEY("category_id") REFERENCES "Categories"("id");
ALTER TABLE
    "Order_items" ADD CONSTRAINT "order_items_order_id_foreign" FOREIGN KEY("order_id") REFERENCES "Orders"("id");
ALTER TABLE
    "Order_items" ADD CONSTRAINT "order_items_product_id_foreign" FOREIGN KEY("product_id") REFERENCES "Products"("id");