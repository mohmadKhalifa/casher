CREATE DATABASE cashApp # step one
CREATE TABLE users(     # step tow
    users_id int(11)NOT NULL AUTO_INCREMENT,
    users_name varchar(20) NOT NULL,
    users_password varchar(20) NOT NULL,
    primary key(users_id)
)  