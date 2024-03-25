CREATE DATABASE cashApp 
---------- step tow
CREATE TABLE users(     
    users_id int(11)NOT NULL AUTO_INCREMENT,
    users_name varchar(20) NOT NULL,
    users_password varchar(20) NOT NULL,
    primary key(users_id)
)  
---------- step three 
CREATE TABLE categories(
    categories_id int(11)Not null AUTO_INCREMENT,
     categories_name varchar(20) not null ,
     categories_users int(11) NOT NULL
     primary key(categories_id),FOREIGN KEY(categories_users) REFERENCES users( users_id )
)
----------step fore
CREATE TABLE items(
    items_id int(11)not null AUTO_INCREMENT,
    items_name varchar(20) not null,
    items_price varchar(5) not null,
    items_categories int(11)not null,
    items_users int(11)not null,
    primary key(items_id), FOREIGN key(items_categories) REFERENCES categories(categories_id) 
    ,FOREIGN key(items_users) references users(users_id)

)



-----------من اجل اضافة صف وربطه 
ALTER TABLE `items` ADD `items_user` INT NOT NULL AFTER `items_categories`;
ALTER TABLE `items` ADD FOREIGN KEY (`items_user`) REFERENCES `users`(`users_id`) ON DELETE CASCADE ON UPDATE CASCADE;