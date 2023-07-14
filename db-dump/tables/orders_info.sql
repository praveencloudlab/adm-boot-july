create table orders_info
(
    order_id     bigint auto_increment
        primary key,
    order_date   datetime(6)  null,
    tatal_amount double       not null,
    user_name    varchar(255) null,
    constraint FK72277wg3qfcb5xjtkpc9pxb2j
        foreign key (user_name) references users (user_name)
);

INSERT INTO ecart.orders_info (order_id, order_date, tatal_amount, user_name) VALUES (1, '2023-06-26 11:27:58.974782', 1607000, 'praveen');
INSERT INTO ecart.orders_info (order_id, order_date, tatal_amount, user_name) VALUES (2, '2023-06-26 11:29:40.864105', 1607000, 'praveen');
INSERT INTO ecart.orders_info (order_id, order_date, tatal_amount, user_name) VALUES (3, '2023-06-28 09:50:58.102116', 1607000, 'praveen');
INSERT INTO ecart.orders_info (order_id, order_date, tatal_amount, user_name) VALUES (4, '2023-06-28 10:38:05.853385', 1607000, 'praveen');
INSERT INTO ecart.orders_info (order_id, order_date, tatal_amount, user_name) VALUES (5, '2023-06-28 10:38:43.287063', 1607000, 'praveen');
INSERT INTO ecart.orders_info (order_id, order_date, tatal_amount, user_name) VALUES (6, '2023-06-28 10:38:51.230361', 1607000, 'praveen');
INSERT INTO ecart.orders_info (order_id, order_date, tatal_amount, user_name) VALUES (7, '2023-06-28 10:39:00.838266', 1607000, 'praveen');
INSERT INTO ecart.orders_info (order_id, order_date, tatal_amount, user_name) VALUES (8, '2023-06-28 10:40:21.900817', 1607000, 'praveen');
INSERT INTO ecart.orders_info (order_id, order_date, tatal_amount, user_name) VALUES (9, '2023-06-28 10:40:29.050743', 1607000, 'praveen');
INSERT INTO ecart.orders_info (order_id, order_date, tatal_amount, user_name) VALUES (10, '2023-06-28 10:40:37.707729', 1607000, 'praveen');
INSERT INTO ecart.orders_info (order_id, order_date, tatal_amount, user_name) VALUES (11, '2023-06-28 10:41:09.939276', 1607000, 'praveen');
INSERT INTO ecart.orders_info (order_id, order_date, tatal_amount, user_name) VALUES (12, '2023-06-28 10:41:20.933904', 1607000, 'praveen');
INSERT INTO ecart.orders_info (order_id, order_date, tatal_amount, user_name) VALUES (13, '2023-06-28 10:42:41.130152', 1607000, 'praveen');
INSERT INTO ecart.orders_info (order_id, order_date, tatal_amount, user_name) VALUES (17, null, 472000, null);
INSERT INTO ecart.orders_info (order_id, order_date, tatal_amount, user_name) VALUES (18, null, 472000, null);
