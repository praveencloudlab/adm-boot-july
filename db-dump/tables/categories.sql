create table categories
(
    category_id    int          not null
        primary key,
    category_title varchar(255) null
);

INSERT INTO ecart.categories (category_id, category_title) VALUES (1, 'Speakers');
INSERT INTO ecart.categories (category_id, category_title) VALUES (45, 'Laptops');
INSERT INTO ecart.categories (category_id, category_title) VALUES (53, 'Mobiles');
INSERT INTO ecart.categories (category_id, category_title) VALUES (82, 'Televisions');
INSERT INTO ecart.categories (category_id, category_title) VALUES (86, 'Watches');
INSERT INTO ecart.categories (category_id, category_title) VALUES (90, 'Cloths');
INSERT INTO ecart.categories (category_id, category_title) VALUES (94, 'Toys');
