create table orders
(
    order_id       bigint       not null
        primary key,
    order_date     datetime(6)  null,
    payment_status varchar(255) null,
    product_id     int          not null,
    qty            int          not null,
    total          double       not null,
    transaction_id varchar(255) null,
    user_id        int          not null
);

INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (1667797468598, '2022-11-07 10:34:28.600383', 'Success', 93, 1, 67000, '7253096393731294234', 3);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (1667797597028, '2022-11-07 10:36:37.028091', 'Success', 93, 5, 335000, '8473376462411532994', 3);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (1668046539956, '2022-11-08 01:43:02.052179', 'Success', 93, 1, 67000, '1080883573868954081', 3);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (52213923074520236, '2022-11-19 06:25:28.929596', 'Success', 48, 1, 235000, '4562867857561067394', 1);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (151175848894530228, '2022-11-08 10:45:30.629813', 'Success', 56, 2, 270000, '7674505651240077054', 1);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (247176380558452947, '2022-11-19 04:16:20.518133', 'Success', 43, 1, 45000, '8040865087750210724', 1);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (529494597859439321, '2022-11-19 04:21:23.953030', 'Success', 43, 1, 45000, '685463903228121558', 1);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (2165207037516979764, '2022-11-19 03:43:39.281826', 'Success', 43, 1, 45000, '5044433845304565694', 1);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (2361916092943257330, '2022-11-19 04:20:52.896269', 'Success', 43, 1, 45000, '8749164845678107226', 1);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (2472018340206398077, '2022-11-19 04:19:01.293376', 'Success', 43, 1, 45000, '8460603103794183911', 1);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (3631019244027099247, '2022-11-10 10:24:22.974234', 'Success', 72, 1, 267000, '6452688935913918622', 1);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (4707129874509581812, '2022-11-19 05:09:03.133791', 'Success', 48, 1, 235000, '6592042926980167406', 1);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (4930841122682515064, '2022-11-19 06:27:07.844320', 'Success', 48, 1, 235000, '6748838592140561519', 1);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (5076054754607071954, '2022-11-10 10:14:12.744932', 'Success', 72, 1, 267000, '2856880488539473', 1);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (5387982536363098187, '2022-11-08 01:19:37.547831', 'Success', 93, 1, 67000, '3798637535030909741', 3);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (6166559944478995008, '2022-11-19 05:04:34.076311', 'Success', 48, 1, 235000, '2285204588582167232', 1);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (6771978852670581203, '2022-11-10 10:28:17.536076', 'Success', 72, 1, 267000, '8705716828587124922', 1);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (6829537742254459755, '2022-11-19 06:10:01.996134', 'Success', 48, 1, 235000, '7929172312271361675', 1);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (7981270063580048143, '2022-11-19 05:08:23.760620', 'Success', 48, 1, 235000, '7470362431375703641', 1);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (8037292742228709124, '2023-07-06 10:40:05.371501', 'Success', 1, 2, 200000, '3676839268258612073', 1);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (8068444583605789967, '2022-11-19 04:55:17.989135', 'Success', 43, 1, 45000, '3760369112228368149', 1);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (8541518567309623492, '2023-07-06 10:31:37.413382', 'Success', 1, 4, 400000, '2957310872424598730', 1);
INSERT INTO ecart.orders (order_id, order_date, payment_status, product_id, qty, total, transaction_id, user_id) VALUES (8600878370996568692, '2022-11-19 05:02:22.843849', 'Success', 48, 1, 235000, '2112572871208807550', 1);
