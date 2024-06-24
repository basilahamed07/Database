1)Write a SQL statement to create a simple table movies which should include columns movie_id, movie_name, movie_type and movie_rating only if it does not exist. The combination of movie_id and movie_name should be an unique indentifier of the table.


create table movie(
    movie_id int PRIMARY KEY unique,
    movie_name VARCHAR(50) unique,
    movie_type VARCHAR(50),
    movie_rating VARCHAR(50)
);



-- 2) Write a SQL statement to create a table company which should include columns company_id, trade, number_of_employees. The company_id should be an unique indentifier of the table. trade and number_of_employees columns should not be null. The number_of_employees should be 0 by default.

create table company(
    company_id int PRIMARY KEY unique,
    trade VARCHAR(50) not null,
    number_of_employees int not null default 0
);


3) Write a SQL statement to create a table job_offer which should include columns offer_id, offer_title, offer_min_salary and offer_max_salary, company_id, and make sure that, the default value for job_offer_title is blank, offer_min_salary is 5000 and offer_max_salary is null. The offer_id column should be unique. The foreign key company_id can contain only those values which exist in the company table.

create table job_offer(
    offer_id int PRIMARY KEY unique,
    offer_title VARCHAR(50) not null,
    offer_min_salary int default 5000,
    offer_max_salary int null,
    company_id int,
    job_offer_title VARCHAR(30) DEFAULT " ",
    foreign KEY (company_id)
    references company(company_id)
    on update restrict
on delete cascade
);

4)#Write a SQL statement to rename the movies table to movies_renamed.

rename table movies to movies_renamed

5)
Write a SQL statement to add a column movie_director to the movies_renamed table.

alter table movies_renamed
add column movie_director varchar(500);

6)Write a SQL statement to add a column ID as a first column of the movies_renamed table.

alter table movies_renamed
add column coloumn_ID int first;

8)Write a SQL statement to add a column movie_description after the movie_name column in movies_renamed table.


alter table movies_renamed
add column movie_description VARCHAR(30) after movie_name;

9)Write a SQL statement to change the data type of the column movie_rating to integer.

alter TABLE movies_renamed
MODIFY column movie_rating int;

10)Write a SQL statement to drop the movie_director column.

    alter TABLE movies_renamed
    drop column movie_director;


11)Write a SQL statement to drop the existing primary key from the movies_renamed table.


alter TABLE movies_renamed
drop PRIMARY KEY


12)Write a SQL statement to add primary key for the column movie_id in the movies_renamed table.
alter TABLE movie_renamed
add column movie_id PRIMARY key




_____________________________________________________________________________________________________________________________________________________________________________________





create table tasks(
    task_id int auto_increment PRIMARY KEY,
    title VARCHAR(255) not null,
    strat_date date,
    due_date DATE,
    priority TINYINT not null DEFAULT 3,
    DESCRIPTION text);
)



=====only inserting the values to title and priority for it

insert into tasks (title,priority) VALUES
('learn MySqL Insert STATEMENT',1);


ans = 
+---------+------------------------------+------------+----------+----------+-------------+
| task_id | title                        | strat_date | due_date | priority | DESCRIPTION |
+---------+------------------------------+------------+----------+----------+-------------+
|       1 | learn MySqL Insert STATEMENT | NULL       | NULL     |        1 | NULL        |
+---------+------------------------------+------------+----------+----------+-------------+


=====inserting the whole tables

insert into tasks values (2,"This second table contant was developed by basil ahamed","2024-06-01","2025-06-01",2,"this collum passage will contain the big pasage and i am using the txt dataype in it");

ans= 
+---------+---------------------------------------------------------+------------+------------+----------+--------------------------------------------------------------------------------------+
| task_id | title                                                   | strat_date | due_date   | priority | DESCRIPTION                                                                          |
+---------+---------------------------------------------------------+------------+------------+----------+--------------------------------------------------------------------------------------+
|       1 | learn MySqL Insert STATEMENT                            | NULL       | NULL       |        1 | NULL                                                                                 |
|       2 | This second table contant was developed by basil ahamed | 2024-06-01 | 2025-06-01 |        2 | this collum passage will contain the big pasage and i am using the txt dataype in it |
+---------+---------------------------------------------------------+------------+------------+----------+--------------------------------------------------------------------------------------+



=====inserting the value to in it

insert into tasks (title,strat_date,due_date) values
("this title is the thard title","2024-06-1","2024,07-1");


+---------+---------------------------------------------------------+------------+------------+----------+--------------------------------------------------------------------------------------+
| task_id | title                                                   | strat_date | due_date   | priority | DESCRIPTION                                                                          |
+---------+---------------------------------------------------------+------------+------------+----------+--------------------------------------------------------------------------------------+
|       1 | learn MySqL Insert STATEMENT                            | NULL       | NULL       |        1 | NULL                                                                                 |
|       2 | This second table contant was developed by basil ahamed | 2024-06-01 | 2025-06-01 |        2 | this collum passage will contain the big pasage and i am using the txt dataype in it |
|       3 | this title is the thard title                           | 2024-06-01 | 2024-07-01 |        3 | NULL                                                                                 |
+---------+---------------------------------------------------------+------------+------------+----------+--------------------------------------------------------------------------------------+



====inserting the current date by using the date function (current_date())

insert into tasks (title,strat_date,due_date) VALUES
("in this command i will using the current date function",current_date(),current_date() + 6);


+---------+---------------------------------------------------------+------------+------------+----------+--------------------------------------------------------------------------------------+
| task_id | title                                                   | strat_date | due_date   | priority | DESCRIPTION                                                                          |
+---------+---------------------------------------------------------+------------+------------+----------+--------------------------------------------------------------------------------------+
|       1 | learn MySqL Insert STATEMENT                            | NULL       | NULL       |        1 | NULL                                                                                 |
|       2 | This second table contant was developed by basil ahamed | 2024-06-01 | 2025-06-01 |        2 | this collum passage will contain the big pasage and i am using the txt dataype in it |
|       3 | this title is the thard title                           | 2024-06-01 | 2024-07-01 |        3 | NULL                                                                                 |
|       4 | in this command i will using the current date function  | 2024-06-24 | 2024-09-24 |        3 | NULL                                                                                 |
|       5 | in this command i will using the current date function  | 2024-06-24 | 2024-06-30 |        3 | NULL                                                                                 |
+---------+---------------------------------------------------------+------------+------------+----------+--------------------------------------------------------------------------------------+


====== inserting the multiple value in singe inter into


insert into tasks (title,priority) VALUES
("this is firest priority",1),
("this is second stage here",2),
("this is this is also second state",2),
("this is remaing the last reminders",3),
("this is the fierst one was learning",1),
("this is good one",4);


ans =
    
    +---------+---------------------------------------------------------+------------+------------+----------+--------------------------------------------------------------------------------------+
| task_id | title                                                   | strat_date | due_date   | priority | DESCRIPTION                                                                          |
+---------+---------------------------------------------------------+------------+------------+----------+--------------------------------------------------------------------------------------+
|       1 | learn MySqL Insert STATEMENT                            | NULL       | NULL       |        1 | NULL                                                                                 |
|       2 | This second table contant was developed by basil ahamed | 2024-06-01 | 2025-06-01 |        2 | this collum passage will contain the big pasage and i am using the txt dataype in it |
|       3 | this title is the thard title                           | 2024-06-01 | 2024-07-01 |        3 | NULL                                                                                 |
|       4 | in this command i will using the current date function  | 2024-06-24 | 2024-09-24 |        3 | NULL                                                                                 |
|       5 | in this command i will using the current date function  | 2024-06-24 | 2024-06-30 |        3 | NULL                                                                                 |
|       6 | this is firest priority                                 | NULL       | NULL       |        1 | NULL                                                                                 |
|       7 | this is second stage here                               | NULL       | NULL       |        2 | NULL                                                                                 |
|       8 | this is this is also second state                       | NULL       | NULL       |        2 | NULL                                                                                 |
|       9 | this is remaing the last reminders                      | NULL       | NULL       |        3 | NULL                                                                                 |
|      10 | this is the fierst one was learning                     | NULL       | NULL       |        1 | NULL                                                                                 |
|      11 | this is good one                                        | NULL       | NULL       |        4 | NULL                                                                                 |
+---------+---------------------------------------------------------+------------+------------+----------+--------------------------------------------------------------------------------------+