create table products
(
    product_id    int          not null
        primary key,
    description   varchar(255) null,
    keywords      varchar(255) null,
    product_title varchar(255) null,
    rating        double       not null,
    price_id      int          null,
    stock_id      int          null,
    constraint FK521o6mmi4qi3ht9ubiq23d1fx
        foreign key (stock_id) references stock_info (stock_id),
    constraint FK9ilqpy62n1ruig6vxau5xet4c
        foreign key (price_id) references price_info (price_id)
);

INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (1, 'SONY Dolby 7.1 Sound bar', '5.1,Sound Bar,Bar,Sound,Sound System, Sony Sound,Speakers', 'Sony Sound Bar HD', 0, 1306, 1306);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (43, 'I5 Gen12 16GB RAM 2 TB SSD', 'Dell,I5', 'Dell Laptop-new', 0, 1304, 1304);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (48, 'Apple M2 chip 16 GB 2 TB SSD', 'Apple,Mac Book,Mac Book Pro,M2', 'Apple Macbook Pro', 0, 50, 51);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (52, '256 GB Purple', 'Phone,Iphone,Iphone14', 'Iphone14', 0, 54, 55);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (56, '512 GB Deep Blue', 'Phone,Iphone,Iphone14 Pro', 'Iphone 14 Pro', 0, 57, 58);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (59, '256 GB Green', 'Phone,Iphone,Iphone14 Pro', 'Iphone 14 Pro', 0, 61, 62);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (63, '512 Black', 'Samsung,S22', 'Samsung S22', 0, 64, 65);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (66, '256 Blue', 'Samsung,S22', 'Samsung S22', 0, 67, 68);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (69, '512 Red', 'Samsung,S22', 'Samsung S22', 0, 70, 71);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (72, 'I9 Gen12 32GB RAM 2 TB SSD', 'HP,Laptop', 'HP Laptop', 0, 74, 75);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (76, 'I5 Gen12 16GB RAM 2 TB SSD', 'Lenovo,I5', 'Lenovo Laptop', 0, 78, 79);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (80, '65 inch OLED', 'Sony,Bravio,OLED,65 inch', 'Sony Bravio', 0, 83, 84);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (85, '512 GB Blue', 'One Plus,10R', 'One Plus 10R', 0, 87, 88);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (89, '256 GB Green Glass', 'Real Me,GT,GT Pro', 'Real Me GT Pro', 0, 91, 92);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (93, '65 inch  curved OLED', 'MI,MI OLED,OLED,65 inch', 'MI OLED TV  2023', 0, 1305, 1305);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (97, '256 GB Blue', 'Vivo', 'Vivo 5.7 OLED ', 0, 99, 100);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (102, 'Desc1', 'K1,K2,K3', 'Iphone 13 Blue-v1', 0, 102, 102);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (152, '256 GB', 'Apple,Ipad,pro', 'Ipad Pro 11 Gen', 0, 152, 152);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (164, 'Iphone12 512 GB Gold Color', 'Apple,Iphone12,Iphone', 'Iphone12 Gold', 0, 165, 166);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (167, 'Iphone 10 4.7 inches screen ', 'Iphone,Apple,Iphone10', 'Iphone 10', 0, 168, 169);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (202, '512 GB', 'Samung, Ultra, S23', 'Samsung S23 Ultra', 0, 202, 202);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (252, '256 GB', 'Sam,Samung, Ultra, S23', 'Samsung S22 Ultra', 0, 252, 252);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (452, '256 GB, Blue', 'Iphone,Pro,max,Iphone Pro max', 'Iphone 14 Pro Max', 0, 452, 452);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (602, 'Bose 7.1 wireless sound bar with tweeters', 'Bose,Sound bar,7.1', 'Bose 7.1 Sound bar', 0, 602, 602);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (652, 'Digital Fast track world clock', 'Watch,Fasttrack,world clock', 'Fasttrack Watch', 0, 652, 652);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (702, 'Apple Wireless watch', 'Watch,Apple, Smart watch', 'Apple Watch', 0, 702, 702);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (703, 'Apple Wireless watch', 'Watch,Apple, Smart watch', 'Apple Watch', 0, 703, 703);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (704, 'Apple Wireless watch', 'Watch,Apple, Smart watch', 'Apple Watch', 0, 704, 704);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (705, 'Apple Wireless watch', 'Watch,Apple, Smart watch', 'Apple Watch', 0, 705, 705);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (752, 'Apple Wireless watch', 'Watch,Apple, Smart watch', 'Apple Watch', 0, 752, 752);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (802, 'Red Color', 'iphone14', 'Iphone14', 0, 802, 802);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (803, 'Red Color', 'iphone14', 'Iphone14', 0, 803, 803);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (804, 'Red Color', 'iphone14', 'Iphone14', 0, 804, 804);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (805, '256 GB , Blue colour', 'iphone, iphone11, apple', 'iPhone11', 0, 805, 805);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (852, 'Apple Chip M2', 'apr, mac book,mac, m2 chip, mac book air', 'Mac Book Air', 0, 852, 852);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (853, 'Intel I9, 64 GB RAM, 1 TB SSD', 'Dell, XPS, DELL XPS, DELL XPS-NEW', 'Dell XPS-New', 0, 853, 853);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (902, 'Casio Wireless watch', 'Watch, Casio, Smart watch', 'Casio Watch', 0, 902, 902);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (903, 'Hp Laptop', 'HP', 'Laptop', 0, 903, 903);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (904, 'Hp Laptop, Intel I9', 'HP, HP laptop, I7', 'Laptop', 0, 904, 904);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (1004, 'Hp Laptop, Intel I9', 'HP, HP laptop, I7', 'HP P model', 0, 1302, 1302);
INSERT INTO ecart.products (product_id, description, keywords, product_title, rating, price_id, stock_id) VALUES (1152, 'SONY Gaming VR 3.0', 'Sony,VR,Glasses, 3D classes, 3D Gaming console', 'VR Gaming Console', 0, 1452, 1452);
