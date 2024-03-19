CREATE DATABASE cashApp # step one
#________# step tow
CREATE TABLE users(     
    users_id int(11)NOT NULL AUTO_INCREMENT,
    users_name varchar(20) NOT NULL,
    users_password varchar(20) NOT NULL,
    primary key(users_id)
)  
#________# step three
CREATE TABLE categories(
    categories_id int(11)Not null AUTO_INCREMENT,
     categories_name varchar(20) not null ,
     primary key(categories_id)
)