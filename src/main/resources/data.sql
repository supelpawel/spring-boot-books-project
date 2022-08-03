insert into authors(first_name, last_name, email, pesel) values ('authorName1', 'authorLastName1', 'test1@gmail.pl', '32070832869');
insert into authors(first_name, last_name, email, pesel) values ('authorName2', 'authorLastName2', 'test2@gmail.pl', '82081649051');

insert into publishers(name, nip, regon) values('Helion', '7019605224', '857626990');
insert into publishers(name, nip, regon) values('WKiŁ', '7019605224', '857626990');
insert into publishers(name, nip, regon) values('WSiP', '7019605224', '857626990');
insert into publishers(name, nip, regon) values('Atena', '7019605224', '857626990');

insert into category(name) values('Crime story');
insert into category(name) values('Science');
insert into category(name) values('Psychology');

insert into roles(name) values('ROLE_ADMIN');
insert into roles(name) values('ROLE_USER');

insert into users(username, password, enabled) values('admin', '$2a$12$UBeaR3mmRZYaKyTJzWwZsuheHnWEquxEWoM8//rKRJMusnhNki65W', 1);

insert into users_roles(user_id, roles_id) values (1, 1);
insert into users_roles(user_id, roles_id) values (1, 2);