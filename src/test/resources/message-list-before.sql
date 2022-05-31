delete from message;

insert into message(id, text, tag, user_id) values
    (1,'first','some-tag',1),
    (2,'second','tag',1),
    (3,'third','some-tag',1),
    (4,'fourth','one more',1);

alter sequence hibernate_sequence restart with 10;