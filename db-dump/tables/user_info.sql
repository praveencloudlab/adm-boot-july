create table user_info
(
    user_id    int          not null
        primary key,
    address    varchar(255) null,
    dob        date         null,
    email      varchar(255) null,
    first_name varchar(255) null,
    last_name  varchar(255) null,
    mobile     bigint       not null,
    password   varchar(255) null,
    user_name  varchar(255) null,
    constraint UK_nd4xxe4sfscx08oods9gi8y2v
        unique (user_name)
);

INSERT INTO ecart.user_info (user_id, address, dob, email, first_name, last_name, mobile, password, user_name) VALUES (1, 'Hyderabad', '1983-08-21', 'praveen@abc.com', 'Praveen', 'Reddy', 8787878787, 'praveen', 'praveen');
INSERT INTO ecart.user_info (user_id, address, dob, email, first_name, last_name, mobile, password, user_name) VALUES (2, 'Chennai', '1981-02-22', 'david@abc.com', 'David', 'Rodson', 9749876545, '$2a$10$oBpO96UYvsPkbSTJbIKhIO6c1yK8wB0AlzgPd5Tuu2jUZifuzIGtu', 'user2');
INSERT INTO ecart.user_info (user_id, address, dob, email, first_name, last_name, mobile, password, user_name) VALUES (3, 'USA', '1980-02-12', 'james@abc.com', 'James', 'Goedic', 9854643234, '$2a$10$qjMjjhtCAc1RV92BDj4ixO/Rw/y5R/WNrWGedB4cn7gBdulbyQk22', 'james');
INSERT INTO ecart.user_info (user_id, address, dob, email, first_name, last_name, mobile, password, user_name) VALUES (4, 'Kolkatha', '1991-09-18', 'bucky@abc.com', 'Bucky', 'Wall', 7898098765, '$2a$10$sxlaHfl8ALZWs41sdONnF.IdQ94QhGCb3WCpgzSwFf3snpCUukQ8u', 'user4');
INSERT INTO ecart.user_info (user_id, address, dob, email, first_name, last_name, mobile, password, user_name) VALUES (5, 'Delhi', '1978-05-29', 'prashanth@abc.com', 'Prashath', 'Kumar', 6578989987, '$2a$10$gSQJJZmNwG.jOHj6LUrPQuiVWrvZzVjqyMdD3y9uaA83ls9yJ/3Iu', 'user5');
