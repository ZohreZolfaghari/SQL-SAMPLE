create database school;
use school;
#---------------------create_table_teachers--------------------- 

create table teachers(
teacher_id INT NOT NULL primary key auto_increment ,
first_name varchar(25) NOT NULL ,
last_name varchar(25) NOT NULL ,
birthdate DATE , 
work_experience INT(2) ,
city varchar(25) ,
salary INT NOT NULL,
phone_number INT);

insert into teachers(teacher_id , first_name , last_name , birthdate , work_experience ,city , salary , phone_number )
values
(1 , 'sahar' , 'karimi' , '1995/02/03' , 2 , 'tehran' , 11 , 45679236 ) ,
(2 , 'mahsa' , 'sadeghi' , '1992/08/06' , 1 , 'tehran' , 10 , 85216976) ,
(3 , 'zahra' , 'mohamadi' , '1990/08/01' , 5 , 'tehran' , 13 , 65789466 ), 
(4 , 'marjan' , 'moradpour' , '1985/07/10' , 10 , 'tehran' , 15 , 45623457 ), 
(5 , 'mina' , 'rad' , '1987/08/06' , 7 ,'tehran' , 13.5 , 89742532) ;

#------------------------create_table_courses------------------------------
create table courses(
course_id INT NOT NULL primary key auto_increment ,
course_name VARCHAR(25) NOT NULL ,
Coeff INT not null ,
teacher_id int not null );

insert into courses(course_id , course_name , coeff , teacher_id)
values
(1 , 'Chemistry' ,3 , 4),
(2 , 'Geology' ,2 , 4),
(3 ,'Physics' ,4 , 3),
(4 , 'Religious studies' ,1 ,5),
(5 , 'history' ,1 ,5) ,
(6 , 'Foreign_Language' ,2 ,2),
(7 , 'World literature' ,2 ,1), 
(8 , 'math',4 ,3);

#-------------------------create_table_students--------------------------
create table students( 
id int not null primary key auto_increment, 
name varchar(25) not null, 
status_id int not null ,
city varchar(25) not null ,
age int not null  DEFAULT 12);

insert into students(id , name , status_id , city , age )
values
(1 ,'zahra' , 4 , 'tehran', 12 ),
(2 ,'reza' , 3, 'tehran' , 12),
(3 ,'maryam' , 4 , 'karaj' ,12), 
(4 ,'ali' , 1 , 'sari' , 12),
(5 ,'raha' , 3 ,'tehran' , 13),
(6 ,'elsa' , 2 , 'esfahan' , 13),
(7 ,'arash' , 1 , 'tehran' , 12),
(8 ,'roya' , 3 ,'karaj' , 12),
(9 ,'masoud' , 4, 'tehran' ,12),
(10 ,'negar' , 2 , 'tehran' , 13);

#-----------------------create_table_status---------------------
create table statuses(
status_id  INT not null primary key auto_increment,
status_name varchar(25) );

insert into statuses(status_id , status_name )
values
(1 ,'very_bad'),
(2 ,'bad') ,
(3 ,'mid') ,
(4 ,'good');
 
 #--------------------create_table_scores------------------------
create table scores(
score_id int not null primary key auto_increment,
score int not null , 
student_id int not null ,
course_id int not null);

insert into scores (score_id , score , student_id , course_id)
values
(1 ,19 ,9 ,1 ),(2 ,18 ,9 ,2 ),(3 ,19 ,9 ,3 ),(4 ,14 ,9 ,4 ),
(5 ,17.5 ,9 ,5 ),(6 ,15 ,9 ,6 ),(7 ,19 ,9 ,7 ),(8 ,18.5 ,9 ,8 ),
(9 ,11 ,10 ,1 ),(10 ,9 ,10 ,2 ),(11 ,10 ,10 ,3 ),(12 ,14 ,10 ,4 ),
(13 ,15 ,10 ,5 ),(14 ,11.5 ,10 ,6 ),(15 ,12.5 ,10 ,7 ),(16, 6 ,10 ,8 ),
(17, 10 ,8 ,1 ),(18, 12 ,8 ,2 ),(19, 12.5 ,8 ,3 ),(20, 16 ,8 ,4 ),
(21, 14 ,8 ,5 ),(22, 10 ,8 ,6 ),(23, 15 ,8 ,7 ),(24, 11.5 ,8 ,8 ),
(25, 20 ,1 ,1 ),(26, 19 ,1 ,2 ),(27, 6 ,1 ,3 ),(28, 17 ,1 ,4 ),
(29, 15.5 ,1 ,5 ),(30, 15 ,1 ,6 ),(31, 18 ,1 ,7 ),(32, 18 ,1 ,8 ),
(33, 14 ,2 ,1 ),(34, 15.5 ,2 ,2 ),(35, 9.5 ,2 ,3 ),(36, 13 ,2 ,4 ),
(37, 17 ,2 ,5 ),(38, 15 ,2 ,6 ),(39, 11 ,2 ,7 ),(40, 5.5 ,2 ,8 ),
(41, 18 ,3 ,1 ),(42, 19 ,3 ,2 ),(43, 17 ,3 ,3 ),(44, 16 ,3 ,4 ),
(45, 18.5 ,3 ,5 ),(46, 19 ,3 ,6 ),(47, 17 ,3 ,7 ),(48, 19 ,3 ,8 ),
(49, 8 ,4 ,1 ),(50, 10 ,4 ,2 ),(51, 12 ,4 ,3 ),(52, 11 ,4 ,4 ),
(53, 10.5 ,4 ,5 ),(54, 13 ,4 ,6 ),(55 ,15 ,4 ,7 ),(56, 6 ,4 ,8 ),
(57, 15 ,5 ,1 ),(58, 11 ,5 ,2 ),(59, 12.5 ,5 ,3 ),(60, 17 ,5 ,4 ),
(61, 11 ,5 ,5 ),(62, 14 ,5 ,6 ),(63, 16 ,5 ,7 ),(64, 14 ,5 ,8 ),
(65, 10 ,6 ,1 ),(66, 12 ,6 ,2 ),(67, 15 ,6 ,3 ),(68, 13 ,6 ,4 ),
(69, 10.5 ,6 ,5 ),(70, 14 ,6 ,6 ),(71, 12 ,6 ,7 ),(72, 5 ,6 ,8 ),
(73, 3 ,7 ,1 ),(74, 12 ,7 ,2 ),(75, 13 ,7 ,3 ),(76, 11.5 ,7 ,4 ),
(77, 9 ,7 ,5 ),(78, 11 ,7,6 ),(79, 12.5 ,7 ,7 ),(80, 10 ,7 ,8 );

