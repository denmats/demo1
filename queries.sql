mysql -u root1 -p123<<EOF
use mydb;
/*first query*/
select 'query1' as'';
select '_____________________' as 'Show all posts of user whose name == Denys (or other)';
select ptext, firstname from users 
inner join posts on users.id_user = posts.id_user 
where firstname = 'Denys';

/*second query*/
select 'query2' as '';
select '_____________________' as 'Show all user == Denys comments between data X and Y ';
select firstname, ctext, cdate from users inner join comments on users.id_user = comments.id_user where firstname = 'Denys'and cdate between '2019-01-01' and now();

/*third query */
select 'query3' as '';
select '_____________________' as 'Show all comments and posts from user Den between posts data X and Y or comments data is current data';
select firstname, ptext, pdate, ctext, cdate from(( users inner join posts on users.id_user=posts.id_user)inner join comments on users.id_user=comments.id_user)where firstname = 'Den' and pdate between '2016-01-01' and '2018-01-01' or cdate = now();

/*forth query */
select 'query4' as '';
select '_____________________' as 'Show all comments from user Den where post like %9 and day(cdate) = 4';
 select firstname, ptext, pdate, ctext, cdate from(( users inner join posts on users.id_user=posts.id_user)inner join comments on users.id_user=comments.id_user)where ptext like '%9' and day(cdate) = 4;
EOF


