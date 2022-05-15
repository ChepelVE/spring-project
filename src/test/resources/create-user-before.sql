delete from user_role;
delete from usr;

insert into usr(id, active, password, username) values
(1, true, '$2a$08$U/m0kEk2SgVNnQmBwalBNeQL4xHGGIJ5c8OI6PDJHlOD8M4yVmkP2', 'admin'),
(2, true, '$2a$08$U/m0kEk2SgVNnQmBwalBNeQL4xHGGIJ5c8OI6PDJHlOD8M4yVmkP2', 'user');

insert into user_role(user_id, roles) values
(1, 'USER'), (1, 'ADMIN'),
(2, 'USER');
