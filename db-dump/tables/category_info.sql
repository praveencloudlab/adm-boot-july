create table category_info
(
    category_id int not null,
    product_id  int not null,
    constraint UK_7ppfxfbw0eiyeeg5eqs7bwsu7
        unique (product_id),
    constraint UK_category_info_product_id
        unique (product_id),
    constraint FK3oslh9xj712unumeq69ckcg0w
        foreign key (category_id) references categories (category_id),
    constraint FK5ed77ma1s5cnkjv7jpnpbwl97
        foreign key (product_id) references products (product_id)
);

INSERT INTO ecart.category_info (category_id, product_id) VALUES (1, 1);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (45, 43);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (45, 48);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (45, 72);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (45, 76);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (45, 852);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (45, 853);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (45, 903);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (45, 904);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (45, 1004);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (53, 52);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (53, 56);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (53, 59);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (53, 63);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (53, 66);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (53, 69);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (53, 85);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (53, 89);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (53, 97);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (53, 164);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (53, 167);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (53, 702);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (53, 804);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (53, 805);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (82, 80);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (82, 93);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (86, 704);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (86, 752);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (86, 902);
INSERT INTO ecart.category_info (category_id, product_id) VALUES (94, 1152);
