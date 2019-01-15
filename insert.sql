mysql -u root1 -p123<<EOF
use mydb;
insert into users values
	(null, 'Denys','Matsuiev','email2', md5('12'),'owner'),
	(null, 'Den','Brown','email3', md5('1'),'dev'),
	(null, 'user1','last1','email4', md5('ny'),'readonly'),
	(null, 'user2','last2','email5', md5('s3'),'readonly'),
	(null, 'user3','last3','email6', md5('sf'),'dev');
select * from users;

insert into posts values
	(null, 1, 'post1','2016-02-01'),
	(null, 1, 'post2', now()),
	(null, 3, 'post3','2017-02-01'),
	(null, 1, 'post4','2018-02-01'),
	(null, 2, 'post4','2018-10-01'),
	(null, 4, 'post5', now()),
	(null, 5, 'post6','2016-05-06'),
	(null, 1, 'post7','2017-09-25'),
	(null, 3, 'post8','2018-03-25'),
	(null, 2, 'post9', now());
select * from posts;

insert into comments values
	(null, 1, 3, 'comment1', now()),
	(null, 1, 1, 'comment2', '2017-01-04'),
	(null, 2, 1, 'comment3', '2018-01-04'),
	(null, 5, 1, 'comment4',  now()),
	(null, 3, 4, 'comment5', '2018-05-24'),
	(null, 4, 1, 'comment6', '2018-04-14'),
	(null, 2, 2, 'comment7', '2018-01-04'),
	(null, 6, 2, 'comment8', '2019-01-04'),
	(null, 8, 3, 'comment9', '2018-01-04'),
	(null, 7, 1, 'comment10', '2018-01-04'),
	(null, 9, 2, 'comment11', '2019-01-04');
select * from comments;
EOF
