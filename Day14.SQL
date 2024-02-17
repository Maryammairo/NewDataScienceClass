create database J_Waec_system;
use J_Waec_system;
#MYSQL CLAUSE- The order by clause
# the accending orde
select sex, age, address from studentper order by age;
#decending order = desc
select sex, age, address from studentper order by age desc;
#the distinct clause - values that makes the coloums unique
select distinct age from studentper order by age;
#the group by clause works with aggerigate function e.g minimum, first,last, maximum, average,sum,count.alter

select Mjob, avg(JS11Stterm) from studentper group by Mjob;
select Mjob, min(JS11Stterm) from studentper group by Mjob;
select Mjob, max(JS11Stterm) from studentper group by Mjob;
select Mjob, count(JS11Stterm) from studentper group by Mjob;
select Mjob, sum(JS11Stterm) from studentper group by Mjob;
select * from studentper limit 2;
select * from studentper order by age limit 3;
#Mysql control flow program- it is a way of setting condition in program
select age, sex, JS11stterm, if(JS11stterm >= 90, 'Yes','No') as result from studentper;
#If null- it returns the value of the second column if there is no value in the first  coulumn but, if there is a value in the first column it return it else.
select age, sex, JS11stterm, JS12ndTerm, ifnull( JS11stterm,JS12ndTerm) as result from studentper;
#nullif is checking if the value of first colum and the second colum are thesame
select age, sex, JS11stterm,JS12ndTerm, nullif( JS11stterm,JS12ndTerm) as result from studentper;
#case Statement
select age,sex,famsize,address,JS32ndTerm,
case
when JS32ndTerm >= 70 and JS32ndTerm <= 100 then 'A'
when JS32ndTerm >= 60 and JS32ndTerm <= 69.99 then 'B'
when JS32ndTerm >= 50 and JS32ndTerm <= 59.99 then 'C'
when JS32ndTerm >= 40 and JS32ndTerm <= 49.99 then 'D'
when JS32ndTerm >= 30 and JS32ndTerm <= 39.9 then 'E'
else 'F'
   end as GRADE from studentper;
   #Creating of sub tables from the main table
 create table student_personal_information select sex,age,address,famsize,Pstatus,Medu,Fedu,Mjob,Fjob,guardian from studentper;
 create table student_activities_table select traveltime,studytime,paid,health,activities,Emotions,famsup,schoolsup,internet from studentper;
 create table student_score select JS11stterm,JS12ndTerm,JS13rdTerm,JS21stTerm,JS2ndTerm,JS23rdTerm,JS31stTerm,JS32ndTerm from studentper;
select * from student_activities_table;
