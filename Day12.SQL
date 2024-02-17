create database earlycodeacademy;
use earlycodeacademy;
# primary key- is a unique identifier, any value under it cannot have a duplicate
# foreign key - A primary key in foreign key is a foreign key
# default
# not null - means not empty, any cell here cannot be left empty
# null - mean empty
# auto_increment - for increase values
# unique - is like a default
create table student_reg_table(regid int primary key not null,Sname varchar(255) not null,
Sage int not null);
# adding a new coloum to the existing table
alter table student_reg_table add column Sgender varchar(40) not null;
show columns from student_reg_table;
alter table student_reg_table add column Saddress text not null after Sage;
show columns from student_reg_table;
alter table student_reg_table add column ID int null first;
# dropping a column from the existing table
alter table student_reg_table drop column ID;
# modifing the data type or constriant of a column in the existing table
alter table student_reg_table modify column Sname varchar(500);
# changing the column name in an exisitng table
alter table student_reg_table change column regid registrationID int;
#Renaming the table name
ALTER TABLE STUDENT_REG_TABLE RENAME TO STUDENT_INFORMATION_TABLE;
show tables;
#Droping of table
drop table STUDENT_INFORMATION_TABLE;

