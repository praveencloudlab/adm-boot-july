create table cart
(
    cart_id    int auto_increment
        primary key,
    product_id int not null,
    qty        int not null,
    user_id    int not null
);

INSERT INTO ecart.cart (cart_id, product_id, qty, user_id) VALUES (3, 10, 10, 2);
INSERT INTO ecart.cart (cart_id, product_id, qty, user_id) VALUES (4, 14, 6, 3);
INSERT INTO ecart.cart (cart_id, product_id, qty, user_id) VALUES (5, 27, 2, 4);
INSERT INTO ecart.cart (cart_id, product_id, qty, user_id) VALUES (6, 30, 1, 5);
INSERT INTO ecart.cart (cart_id, product_id, qty, user_id) VALUES (92, 1, 2, 2);
