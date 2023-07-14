create table users
(
    user_name     varchar(255) not null
        primary key,
    address       varchar(255) null,
    dob           date         null,
    email         varchar(255) null,
    first_name    varchar(255) null,
    last_name     varchar(255) null,
    mobile_number bigint       not null,
    password      varchar(255) null
);

INSERT INTO ecart.users (user_name, address, dob, email, first_name, last_name, mobile_number, password) VALUES ('praveen', 'Hyderabad', '1981-06-13', 'praveen@gmail.com', 'Praveenreddy', 'Somireddy', 9999999999, 'praveen');
