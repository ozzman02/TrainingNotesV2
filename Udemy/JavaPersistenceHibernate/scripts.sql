/* ----------------------- Alter table statements ----------------------- */
ALTER TABLE guide AUTO_INCREMENT = 1;

ALTER TABLE student AUTO_INCREMENT = 1;

ALTER TABLE passport AUTO_INCREMENT = 1;

ALTER TABLE customer AUTO_INCREMENT = 1;

ALTER TABLE movie AUTO_INCREMENT = 1;

ALTER TABLE actor AUTO_INCREMENT = 1;

ALTER TABLE employee AUTO_INCREMENT = 1;

ALTER TABLE friend AUTO_INCREMENT = 1;

ALTER TABLE child AUTO_INCREMENT = 1;

ALTER TABLE friend_nickname ADD primary key(friend_id, nickname);

ALTER TABLE friend_address ADD primary key(friend_id, address_city, address_street, address_zipcode);

/* ----------------------- Select statements ----------------------- */
select * from guide;

select * from student;

select * from passport;

select * from customer;

select * from movie;

select * from actor;

select * from movie_actor;

select * from employee;

select * from friend;

select * from friend_nickname;

select * from friend_address;

select * from parent;

select * from child;

/* ----------------------- Delete statements ----------------------- */
delete from guide;

delete from student;

delete from customer;

delete from passport;

delete from movie_actor;

delete from movie;

delete from actor;

delete from employee;

delete from friend_nickname;

delete from friend;

delete from friend_address;

delete from parent;

delete from child;