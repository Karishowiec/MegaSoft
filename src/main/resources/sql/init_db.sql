create table worker (
id int primary key,
name varchar(1000) NOT null unique check(length(name) > 2 and length(name) <= 1000 ), 
birthday date check(extract(year from birthday) > 1900 ),
level varchar(20) check (level in ('Trainee', 'Junior', 'Middle', 'Senior')) NOT NULL,
salary int check( salary >= 100 and salary <=  100000 )
);

create table client (
id int primary key,
name not null (length(name) > 2 and length(name) <= 1000)
);

create table project (
id int primary key,
CLIENT_ID  integer references client(id),
START_DATE date,
FINISH_DATE date  
); 


create table project_worker (
PROJECT_ID integer references project(id),
WORKER_ID integer references worker (id),
primary key (PROJECT_ID, WORKER_ID) 
);