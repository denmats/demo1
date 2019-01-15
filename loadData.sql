/*log in mysql*/
mysql -u root1 -p123<<EOF
/*create database mydb*/
create database if not exists mydb;
/*turn into mydb*/
use mydb;

/*download data to the created tables*/
load data local infile './src/users.csv' into table users
 fields terminated by ',' enclosed by ' '
 lines terminated by '\n'
 (id_user,firstname,surname,email,password,role);

load data local infile './src/comment.csv' into table comments
 fields terminated by ',' enclosed by ' '
 lines terminated by '\n'
 (id_comment,id_post,id_user,ctext,cdate);

load data local infile './src/posts.csv' into table
 posts fields terminated by ',' enclosed by ' '
lines terminated by '\n' (id_post,id_user,ptext,pdate);
EOF
