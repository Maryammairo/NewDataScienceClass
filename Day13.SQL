#EXERCISE
#IN THE PREVIOUS DATABASE CREATE THE FOLLOWING TABLES
# STAFFTABLE [ID,STAFFNAME, STAFFGENDER, STAFDOB, STAFFCONTACT, STAFFADDRESS, STAFFQUALIFICATION, STAFFNUMBERSOFSUBJECTTAUGHT, SUBJECTTAUGHTNAME,
#STAFFCLASSTEACHER]
#PAYMENTTABLE,[PAYMENTID, STUDENTID, STUDENTNAME, AMOUNTPAID, DATEOFPAYMENT, BALANCETOBEPAID]
use earlycodeacademy;
create table saff_table (ID int primary key not null,
 Sname varchar(200) not null, Sgender varchar(40) not null, Sdob date not null, 
 Scontact varchar(50) not null, Saddress text not null, 
Squalification text not null, Snumberofsubjecttaught int not null, 
Ssubjecttaughtname varchar(60) not null, Sclassteacher text not null);

create table payment_table(paymentID int primary key not null, SstudentID int not null,
Sname varchar(255));






create table student_table(id int primary key not null,
name varchar(255) not null,
age int not null,
gender varchar(40) not null,
adderess text not null,
guardia varchar(255) not null,
guardiancontact varchar(25) not null,
minutefromschool varchar(25) not null);
select * from student_table;
insert into student_table(id, name,age,gender,adderess,guardia,guardiancontact,minutefromschool) values
(1,'Henery Ford',14, 'Male','No 50 Highway Street Kubwa', 'Mother','08125254547', '20 Minute'),
(2,'Halilu Bello',15, 'Male','No 24 Okitipupa Kubwa', 'Father','08125251919', '30 Minute'),
(3,'Bunmi Sunday',12, 'Female','No 3 Tejumola Street Zuba', 'Mother','08194234547', '40 Minute'),
(4,'Adewumi Charlse',14, 'Female','No 9 Talata Mafara Road Kubwa', 'Uncle','08069124547', '10 Minute'),
(5,'Maryam Kamal',16, 'Female','No 19 Danko Road Sokoto', 'Sister','08139344547', '30 Minute'),
(6,'Samuel Benson',14, 'Male','No 2 Ogundeji estate Kubwa', 'Mother','08125254547', '20 Minute'),
(7,'Yunusa Ahmad',10, 'Male','No 30 Iyalamu Street Kubwa', 'Father','07020254547', '50 Minute'),
(8,'Aina Emma',12, 'Female','No 4 Sama Road Zuba', 'Brother','08025254547', '20 Minute'),
(9,'Sarah John',17, 'Female','No 11 Ball close Kubwa', 'Mother','09125254547', '40 Minute'),
(10,'Climate Ameh',14, 'Male','No 6 giwa Street Zuba', 'Father','09025254547', '60 Minute');
select * from student_table;
select name, guardia from student_table;
update student_table set age = 14 where id =2;
delete from student_table where id = 10;

show indexes from student_table;
create index studentgender on student_table(gender);
drop index studentgender on student_table;