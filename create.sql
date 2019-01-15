/*log in mysql*/
mysql -u root1 -p123<<EOF
/*create database mydb*/
create database if not exists mydb;
/*turn into mydb*/
use mydb;
/*create tables: users, posts, comment*/
create table if not exists users(id_user int auto_increment primary key,
	firstname varchar(20), surname varchar(20),
	email varchar(20),password varchar(255),role enum 		('readonly','dev','owner'));

create table if not exists posts(id_post int auto_increment primary key,
	id_user int,foreign key(id_user) references users(id_user),ptext text, pdate date);

create table if not exists comments(id_comment int auto_increment primary key,id_post int,foreign key(id_post) references posts(id_post),id_user int,ctext varchar(255),cdate date);
EOF
