delete from user_role;
delete from usr;

insert into usr(id, active, password, username) values
    (1, true, '$2a$08$MSKs5vLz9wBxS/TT6BspDOhkj36V4pKQJg7SvSHltz1Sn4m89rGnS', 'sasha'),
    (2, true, '$2a$08$MSKs5vLz9wBxS/TT6BspDOhkj36V4pKQJg7SvSHltz1Sn4m89rGnS', 'tim');

insert into user_role(user_id, roles) values
    (1, 'USER'), (1, 'ADMIN'),
    (2, 'USER');