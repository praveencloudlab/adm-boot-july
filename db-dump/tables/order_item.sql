create table order_item
(
    order_item_id bigint auto_increment
        primary key,
    price         double not null,
    quantity      int    not null,
    order_id      bigint null,
    product_id    int    null,
    constraint FKc5uhmwioq5kscilyuchp4w49o
        foreign key (product_id) references products (product_id),
    constraint FKmjv0cbaxipcmmheae7gjf6ra5
        foreign key (order_id) references orders_info (order_id)
);

INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (1, 1306, 2, 1, 1);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (2, 1304, 5, 1, 43);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (3, 50, 3, 1, 48);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (4, 54, 6, 1, 52);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (5, 95000, 2, 2, 1);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (6, 45000, 5, 2, 43);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (7, 235000, 3, 2, 48);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (8, 97000, 6, 2, 52);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (9, 95000, 2, 3, 1);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (10, 45000, 5, 3, 43);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (11, 235000, 3, 3, 48);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (12, 97000, 6, 3, 52);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (13, 95000, 2, 4, 1);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (14, 45000, 5, 4, 43);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (15, 235000, 3, 4, 48);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (16, 97000, 6, 4, 52);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (17, 95000, 2, 5, 1);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (18, 45000, 5, 5, 43);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (19, 235000, 3, 5, 48);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (20, 97000, 6, 5, 52);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (21, 95000, 2, 6, 1);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (22, 45000, 5, 6, 43);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (23, 235000, 3, 6, 48);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (24, 97000, 6, 6, 52);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (25, 95000, 2, 7, 1);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (26, 45000, 5, 7, 43);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (27, 235000, 3, 7, 48);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (28, 97000, 6, 7, 52);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (29, 95000, 2, 8, 1);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (30, 45000, 5, 8, 43);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (31, 235000, 3, 8, 48);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (32, 97000, 6, 8, 52);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (33, 95000, 2, 9, 1);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (34, 45000, 5, 9, 43);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (35, 235000, 3, 9, 48);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (36, 97000, 6, 9, 52);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (37, 95000, 2, 10, 1);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (38, 45000, 5, 10, 43);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (39, 235000, 3, 10, 48);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (40, 97000, 6, 10, 52);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (41, 95000, 2, 11, 1);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (42, 45000, 5, 11, 43);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (43, 235000, 3, 11, 48);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (44, 97000, 6, 11, 52);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (45, 95000, 2, 12, 1);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (46, 45000, 5, 12, 43);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (47, 235000, 3, 12, 48);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (48, 97000, 6, 12, 52);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (49, 95000, 2, 13, 1);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (50, 45000, 50, 13, 43);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (51, 235000, 3, 13, 48);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (52, 97000, 6, 13, 52);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (65, 95000, 2, 17, 1);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (66, 45000, 2, 17, 43);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (67, 235000, 2, 17, 48);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (68, 97000, 2, 17, 52);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (69, 95000, 2, 18, 1);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (70, 45000, 2, 18, 43);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (71, 235000, 2, 18, 48);
INSERT INTO ecart.order_item (order_item_id, price, quantity, order_id, product_id) VALUES (72, 97000, 2, 18, 52);
