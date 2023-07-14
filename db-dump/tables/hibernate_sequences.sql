create table hibernate_sequences
(
    sequence_name varchar(255) not null
        primary key,
    next_val      bigint       null
);

INSERT INTO ecart.hibernate_sequences (sequence_name, next_val) VALUES ('default', 65);
