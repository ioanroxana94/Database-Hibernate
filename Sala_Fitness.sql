drop database if exists gym;
create database gym;

use gym;

create table if not exists instructors (
id INT NOT NULL AUTO_INCREMENT,
name varchar (15)NOT NULL,
surname varchar (15) NOT NULL,
instructor_workout varchar(20) NOT NULL,
PRIMARY KEY(id)
);

create table if not exists subscriptions (
id INT NOT NULL AUTO_INCREMENT,
name varchar (20) NOT NULL,
price INT NOT NULL,
begin_date INT NOT NULL,
end_date INT NOT NULL,
PRIMARY KEY(id)
);

create table if not exists workouts (
id INT NOT NULL AUTO_INCREMENT,
name varchar(30) NOT NULL,
schedule INT NOT NULL,
day_workout INT NOT NULL,
subscriptions_id INT NOT NULL,
constraint fk_workouts_subscriptions
foreign key(subscriptions_id)
references subscriptions(id),
PRIMARY KEY(id)
);

create table if not exists customers (
id INT NOT NULL AUTO_INCREMENT,
name varchar(15) NOT NULL,
surname varchar(15) NOT NULL,
age INT NOT NULL,
subscriptions_id INT NOT NULL,
constraint fk_customers_subscriptions
foreign key(subscriptions_id)
references subscriptions(id),
workouts_id INT NOT NULL,
constraint fk_customers_workouts
foreign key(workouts_id)
references workouts(id),
PRIMARY KEY(id)
);

create table if not exists instructors_workouts(
id int primary key NOT NULL AUTO_INCREMENT,
instructors_id int not null,
constraint fk_instructors_workouts_instructors
foreign key(instructors_id)
references instructors(id),
workouts_id int not null,
constraint fk_instructors_workouts_workouts
foreign key(workouts_id)
references workouts(id)
);














