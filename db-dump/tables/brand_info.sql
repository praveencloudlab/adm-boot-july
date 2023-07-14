create table brand_info
(
    brand_id   int not null,
    product_id int not null,
    constraint UK_brand_info_product_id
        unique (product_id),
    constraint UK_t7avrnmqfb83nnwak099r2460
        unique (product_id),
    constraint FK5gdclhow9ixbh5nm6v2s67um9
        foreign key (product_id) references products (product_id),
    constraint FK8o240b0u0u3v16cmhm2nb3vmk
        foreign key (brand_id) references brands (brand_id)
);

INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (44, 43);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (44, 56);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (44, 63);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (44, 66);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (44, 69);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (44, 853);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (49, 102);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (49, 452);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (49, 703);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (49, 705);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (49, 752);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (49, 804);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (49, 805);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (49, 852);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (60, 202);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (60, 252);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (73, 72);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (73, 903);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (73, 904);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (77, 76);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (77, 1004);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (81, 1);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (81, 80);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (81, 1152);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (86, 85);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (90, 89);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (98, 97);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (130, 602);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (174, 93);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (186, 652);
INSERT INTO ecart.brand_info (brand_id, product_id) VALUES (190, 902);
