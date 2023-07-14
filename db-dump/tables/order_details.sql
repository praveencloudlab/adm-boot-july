create table order_details
(
    order_id      bigint not null,
    order_item_id bigint not null,
    constraint UK_kescy9u5sclpu0sa5uuavl5tl
        unique (order_item_id),
    constraint FKfre8jknmgovrnwjo84pxc7ih8
        foreign key (order_id) references orders_info (order_id),
    constraint FKgwcp5bnu20m7pw7ohnidxswle
        foreign key (order_item_id) references order_item (order_item_id)
);

INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (1, 1);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (1, 2);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (1, 3);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (1, 4);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (2, 5);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (2, 6);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (2, 7);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (2, 8);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (3, 9);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (3, 10);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (3, 11);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (3, 12);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (4, 13);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (4, 14);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (4, 15);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (4, 16);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (5, 17);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (5, 18);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (5, 19);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (5, 20);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (6, 21);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (6, 22);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (6, 23);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (6, 24);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (7, 25);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (7, 26);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (7, 27);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (7, 28);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (8, 29);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (8, 30);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (8, 31);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (8, 32);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (9, 33);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (9, 34);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (9, 35);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (9, 36);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (10, 37);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (10, 38);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (10, 39);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (10, 40);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (11, 41);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (11, 42);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (11, 43);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (11, 44);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (12, 45);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (12, 46);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (12, 47);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (12, 48);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (13, 49);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (13, 50);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (13, 51);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (13, 52);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (17, 65);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (17, 66);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (17, 67);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (17, 68);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (18, 69);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (18, 70);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (18, 71);
INSERT INTO ecart.order_details (order_id, order_item_id) VALUES (18, 72);
