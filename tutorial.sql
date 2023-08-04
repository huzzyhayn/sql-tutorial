--creating a table
create table employedemographics(
empoyeeID int, firstname varchar(50), lastname varchar(50), age int, gender varchar(50))

create table employeesalary(
empoyeeid int, Jobtitle varchar(50), salary int)

--inserting into table
insert into employedemographics values
(1001, 'adevayo', 'ola', 30, 'male'),
(1002, 'hussain', 'hussain', 27, 'male'),
(1003, 'dwight','schute', 29, 'male'),
(1004, 'angela','martins', 31, 'female'),
(1005, 'michael','scofield',  35,'male'),
(1006, 'kevin', 'malone', 45, 'male'),
(1007, 'merdith', 'palmer', 27, 'female'),
(1008, 'pam', 'beasley', 35, 'female'),
(1009, 'mariam', 'palmer', 23, 'female'),
(1010, 'salamah', 'mami', 20, 'female')


insert into employeesalary values

(1001, 'salesman', 40000),
(1002, 'Receptionist', 30000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 34000),
(1005, 'Hr', 45000),
(1006, 'regional manager', 55000),
(1007, 'supplier relation',  41000),
(1008, 'salesmam', 48000),
(1009, 'accountant', 42000)
(1011, 'gateman', 10000),


 --selecting from tables
 --select everything
 select*
 from employeedemographics

 --selecty by column
 select firstname, lastname, age
 from employeedemographics

 --counting
 select  count(lastname)
 from employeedemographics

 --distinct
 select distinct(age)
 from employeedemographics

 --minimum salary
 select min(salary)
 from employeesalary

 --max salary
 select max(salary)
 from employeesalary

 --slecting data from source
 select*
FROM [hussainportforlio].[dbo].[employeedemographics]

--where function
 select*
FROM [hussainportforlio].[dbo].[employeedemographics]
where age > 27

--correcting the mistake (i named genfer instead of gender
alter table employeedemographics
add  gender varchar(50)
update employeedemographics
set gender = genfer
alter table employeedemographics
drop column genfer

select *
FROM [hussainportforlio].[dbo].[employeedemographics]
where age > 27 and gender = 'male'

select *
FROM [hussainportforlio].[dbo].[employeedemographics]
where lastname like '%s%'

select *
FROM [hussainportforlio].[dbo].[employeedemographics]
where firstname = 'hussain' or firstname = 'kevin'

select *
FROM [hussainportforlio].[dbo].[employeedemographics]
where firstname in ('hussain','kevin')
 
 --group by and order by 

 select*
 from employeedemographics


  select gender, count(gender)
 from employeedemographics
 group by gender

 select age, gender, count(gender)
 from employeedemographics
 group by gender, age

 select age, gender, count(gender)
 from employeedemographics
 where age > 25
 group by gender, age

 --order by
  select gender, count(gender) as countgend
 from employeedemographics
 where age > 25 
 group by gender
 order by countgend desc

  select age, gender
 from employeedemographics
 order by age desc, gender asc

 --this is the same as using 
 select age, gender
 from employeedemographics
 order by 1 desc, 2 asc

 --aliasing
  select age, COUNT(age) as agecount
 from employeedemographics
 group by age

 agecount is  the aliasing

 --joing data 
 select*
 from employeedemographics

 select* 
 from employeesalary
--joining this two together (inner join)

select *
from employeedemographics
inner join employeesalary
	on employeedemographics.empoyeeID = employeesalary.empoyeeid

--full outer join
select *
from employeedemographics
full outer join employeesalary
	on employeedemographics.empoyeeID = employeesalary.empoyeeid

--full outer join
select *
from employeedemographics
right outer join employeesalary
	on employeedemographics.empoyeeID = employeesalary.empoyeeid

	--selecting from the join tables

select employeesalary.empoyeeid, employeesalary.empoyeeid,employeedemographics.gender
	from employeedemographics
	join employeesalary 
	on employeedemographics.empoyeeID = employeesalary.empoyeeid 

--this can be simplify as this 
select dea.empoyeeID, firstname, gender
	from employeedemographics as dea
	join employeesalary as sal
	on dea.empoyeeID = dea.empoyeeID

select dea.empoyeeID, firstname, gender, Jobtitle, salary
	from employeedemographics as dea
	right outer join employeesalary as sal
	on dea.empoyeeID = dea.empoyeeID


